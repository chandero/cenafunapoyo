package com.funapoyo.recordatorio;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.MessageFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.utils.URIBuilder;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/**
 * Hello world!
 *
 */
public class App {
	public static void main(String[] args) {
		try {
			procesar();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private static void procesar() throws FileNotFoundException, ClassNotFoundException, SQLException, IOException {

		Properties p = new Properties();
		p.load(new FileReader("recordatorio.properties"));

		Integer dias = Integer.valueOf(p.getProperty("diasrecordatorio"));
		long segundos = dias * 24 * 60 * 60;

		String sqlColocacion = "SELECT c.ID_COLOCACION, p.NOMBRE || ' ' || p.PRIMER_APELLIDO || ' ' || p.SEGUNDO_APELLIDO AS NOMBRE, "
				+ "c.VALOR_CUOTA, c.ID_IDENTIFICACION, c.ID_PERSONA " + "FROM \"col$colocacion\" c "
				+ "INNER JOIN \"gen$persona\" p ON c.ID_IDENTIFICACION = p.ID_IDENTIFICACION and c.ID_PERSONA = p.ID_PERSONA "
				+ "WHERE c.ID_ESTADO_COLOCACION IN (0,1) " + "ORDER BY c.ID_COLOCACION";

		String sqlTabla = "SELECT FIRST 1 c.FECHA_A_PAGAR FROM \"col$tablaliquidacion\" c WHERE c.ID_COLOCACION = ? and c.PAGADA = 0 "
				+ "ORDER BY c.FECHA_A_PAGAR ASC";

		String sqlDireccion = "SELECT FIRST 1 d.TELEFONO1, d.TELEFONO2, d.TELEFONO3, d.TELEFONO4 FROM \"gen$direccion\" d "
				+ "WHERE d.ID_IDENTIFICACION = ? and d.ID_PERSONA = ? ";

		Calendar fecha_hoy = Calendar.getInstance();

		// preparar conexión

		Connection conn = ConnectionFactory.getConnection();

		conn.setAutoCommit(false);
		PreparedStatement psColocaciones = conn.prepareStatement(sqlColocacion);

		ResultSet rsColocacion = psColocaciones.executeQuery();

		while (rsColocacion.next()) {
			String idColocacion = rsColocacion.getString("ID_COLOCACION");
			String nombre = rsColocacion.getString("NOMBRE");
			Number valorCuota = rsColocacion.getFloat("VALOR_CUOTA");
			Integer idIdentificacion = rsColocacion.getInt("ID_IDENTIFICACION");
			String idPersona = rsColocacion.getString("ID_PERSONA");

			// Buscar próxima fecha de pago

			PreparedStatement psTabla = conn.prepareStatement(sqlTabla);

			psTabla.setString(1, idColocacion);

			ResultSet rsTabla = psTabla.executeQuery();

			Calendar fecha_a_pagar = Calendar.getInstance();

			while (rsTabla.next()) {
				fecha_a_pagar.setTimeInMillis(rsTabla.getDate("FECHA_A_PAGAR").getTime());
				long _apagar = fecha_a_pagar.getTimeInMillis() / 1000;
				long _hoy = fecha_hoy.getTimeInMillis() / 1000 / 10000 * 10000;
				long seg = (_apagar - _hoy);
				if (seg > 0) {
					long segundos0 = segundos - 86399;
					if (seg >= segundos0 && seg <= segundos) {

						// Buscar Teléfono
						PreparedStatement psDireccion = conn.prepareStatement(sqlDireccion);
						psDireccion.setInt(1, idIdentificacion);
						psDireccion.setString(2, idPersona);

						ResultSet rsDireccion = psDireccion.executeQuery();

						String telefono1 = "";
						String telefono2 = "";
						String telefono3 = "";
						String telefono4 = "";

						while (rsDireccion.next()) {
							telefono1 = rsDireccion.getString("TELEFONO1");
							telefono2 = rsDireccion.getString("TELEFONO2");
							telefono3 = rsDireccion.getString("TELEFONO3");
							telefono4 = rsDireccion.getString("TELEFONO4");
						}

						// Validar si se tiene un número celular

						final String PHONE_REGEX = "^3[0-9]{9}$";
						telefono1 = telefono1.replaceAll("[\\-\\+]", "");
						telefono2 = telefono2.replaceAll("[\\-\\+]", "");
						telefono3 = telefono3.replaceAll("[\\-\\+]", "");
						telefono4 = telefono4.replaceAll("[\\-\\+]", "");
						boolean isValid1 = telefono1.matches(PHONE_REGEX);
						boolean isValid2 = telefono2.matches(PHONE_REGEX);
						boolean isValid3 = telefono3.matches(PHONE_REGEX);
						boolean isValid4 = telefono4.matches(PHONE_REGEX);

						String destino = "";

						if (isValid4) {
							destino = telefono4;
						}
						if (isValid3) {
							destino = telefono3;
						}
						if (isValid2) {
							destino = telefono2;
						}
						if (isValid1) {
							destino = telefono1;
						}

						if (isValid1 | isValid2 | isValid3 | isValid4 ){
							enviarSMS(nombre, fecha_a_pagar, destino, fecha_hoy, idColocacion);
						}

					}
				}
			}
		}
		
		conn.commit();
		conn.close();

	}

	private static void enviarSMS(String nombre, Calendar fecha_a_pagar, String destino, Calendar fecha_hoy, String idColocacion)
			throws FileNotFoundException, IOException {

		Properties p = new Properties();
		p.load(new FileReader("recordatorio.properties"));

		String smsUser = p.getProperty("smsUser");
		String smsPass = p.getProperty("smsPass");
		String smsUrl = p.getProperty("smsUrl");
		String msg = p.getProperty("smsMsg");

		//msg = MessageFormat.format(msg, nombre, fecha_a_pagar);

		try {

			String _url = smsUrl + "&op=get_token" + "&u=" + smsUser + "&p=" + smsPass;
			URL url = new URL(_url);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/json");

			if (conn.getResponseCode() != 200) {
				throw new RuntimeException("Failed : HTTP error code : " + conn.getResponseCode());
			}

			BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));

			String output = "";
			String _line;
			while ((_line = br.readLine()) != null) {
				output += _line;
			}

			conn.disconnect();

			JSONParser _parser = new JSONParser();
			JSONObject _json = null;

			_json = (JSONObject) _parser.parse(output);

			String status = (String) _json.get("status");
			String error = (String) _json.get("error");
			String error_string = (String) _json.get("error_string");

			if (status.equals("OK") && error.equals("0")) {
				String smsToken = (String) _json.get("token");
				_url = smsUrl + "&op=pv" + "&u=" + smsUser + "&h=" + smsToken + "&to=" + destino + "&msg="+ msg;
				url = new URL(_url);
				conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("GET");
				conn.setRequestProperty("Accept", "application/json");

				if (conn.getResponseCode() != 200) {
					throw new RuntimeException("Failed : HTTP error code : " + conn.getResponseCode());
				}

				br = new BufferedReader(new InputStreamReader((conn.getInputStream())));

				output = "";
				while ((_line = br.readLine()) != null) {
					output += _line;
				}

				conn.disconnect();
				
				_parser = new JSONParser();
				_json = null;

				_json = (JSONObject) _parser.parse(output);

				JSONArray data = (JSONArray) _json.get("data");
				Iterator i = data.iterator();
				error_string = (String) _json.get("error_string");
				
				while (i.hasNext()) {

					JSONObject _data = (JSONObject) i.next();
					error = (String) _data.get("error");
					status = (String) _data.get("status");
					String smslog_id = (String) _data.get("smslog_id");
					
					try {
						Connection connection;
						connection = ConnectionFactory.getConnection();
	
						connection.setAutoCommit(false);
					
						String sqlInsert = "INSERT INTO AUDITORIA_SMS (FECHA, HORA, ID_COLOCACION, DESTINO, MENSAJE, ESTADO, SMSLOG_ID, ID_EMPLEADO) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

						PreparedStatement psColocaciones = connection.prepareStatement(sqlInsert);
						
						psColocaciones.setDate(1, new java.sql.Date(fecha_hoy.getTimeInMillis()));
						psColocaciones.setTime(2, new java.sql.Time(fecha_hoy.getTimeInMillis()));
						psColocaciones.setString(3, idColocacion);
						psColocaciones.setString(4, destino);
						psColocaciones.setString(5, msg);
						psColocaciones.setString(7, smslog_id);
						psColocaciones.setString(8, "AUTO");
						if (status.equals("OK")) {
							psColocaciones.setBoolean(6, true);
						} else {
							psColocaciones.setBoolean(6, false);
						}
						
						psColocaciones.executeUpdate();
						
						connection.commit();
						
						connection.close();
						
					} catch (SQLException | ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}	
				}
					
			}
				

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
