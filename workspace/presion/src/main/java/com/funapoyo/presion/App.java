package com.funapoyo.presion;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args ) throws FileNotFoundException, ClassNotFoundException, SQLException, IOException
    {
        System.out.println( "[" + new Date().toString() + "]" + "Procesando Notificaciones !" );
        /*
         * Metodo para el procesamiento de cartera a vencer, notificar a asesores.
         */
        Procesar();
        System.out.println("[" + new Date().toString() + "]" + "Proceso de Notificaciones Finalizado!");
    }
    
    
    private static void  Procesar() throws SQLException, FileNotFoundException, ClassNotFoundException, IOException {
    	
		Properties p = new Properties();
		  
		File f = new File("presion.properties");
		System.out.println("Ruta:" + f.getAbsolutePath());
		
		p.load(new FileReader("presion.properties"));
    	
    	Integer dias = Integer.valueOf(p.getProperty("diaspresion"));
    	
    	// Calcular fecha limite de vencimientos
    	Calendar fecha_actual = Calendar.getInstance();
    	
    	Calendar fecha_validacion = Calendar.getInstance();
    	fecha_validacion.add(Calendar.DAY_OF_YEAR, dias);
    	
    	
    	// Leer información de colocaciones por asesor externo
    	Connection conn = ConnectionFactory.getConnection();
    	conn.setAutoCommit(false);
    	PreparedStatement psColocaciones = conn.prepareStatement("SELECT c.ID_COLOCACION, p.NOMBRE || ' ' || p.PRIMER_APELLIDO || ' ' || p.SEGUNDO_APELLIDO AS ASOCIADO, d.DIRECCION || ' ' || d.BARRIO AS DIRECCION, d.MUNICIPIO, d.TELEFONO1 || ' ' || d.TELEFONO2  || ' ' || d.TELEFONO3 AS TELEFONO, p.EMAIL, a.ASES_ID, g.NOMBRE || ' ' || g.PRIMER_APELLIDO || ' ' || g.SEGUNDO_APELLIDO AS ASESOR, g.EMAIL AS EMAIL_ASESOR FROM ASESOR a "
    			+ "INNER JOIN COLOCACIONASESOR ca ON a.ASES_ID = ca.ASES_ID "
    			+ "INNER JOIN \"gen$empleado\" g ON a.ID_EMPLEADO = g.ID_EMPLEADO "
    			+ "INNER JOIN \"col$colocacion\" c ON ca.ID_COLOCACION = c.ID_COLOCACION "
    			+ "INNER JOIN \"gen$persona\" p ON c.ID_IDENTIFICACION = p.ID_IDENTIFICACION and c.ID_PERSONA = p.ID_PERSONA "
    			+ "INNER JOIN \"gen$direccion\" d ON p.ID_IDENTIFICACION = d.ID_IDENTIFICACION and p.ID_PERSONA = d.ID_PERSONA and d.CONSECUTIVO = 1 "
    			+ "WHERE g.TIPO = 2 and c.ID_ESTADO_COLOCACION IN (0,1,2,3) "
    			+ "ORDER BY a.ASES_ID ASC, c.ID_COLOCACION ASC");
    	
    	ResultSet rs = psColocaciones.executeQuery();
    	
    	List<Reportar> list_reportar = new ArrayList<Reportar>();
    	
    	Reportar r = null;
    	List<Colocacion> list_colocacion = null;
    	int ases_ant = -1;
    	while (rs.next()){
    		
    		
    		
    		if (rs.getInt("ASES_ID") != ases_ant){
        		if (r != null && r.getColocaciones() != null && !r.getColocaciones().isEmpty()){
        			list_reportar.add(r);
        		}
        		r = new Reportar();
    			list_colocacion = new ArrayList<Colocacion>();
    	    	r.setId_asesor(rs.getInt("ASES_ID"));
    	    	r.setAsesor(rs.getString("ASESOR"));
    	    	r.setEmail(rs.getString("EMAIL_ASESOR"));
    	    	r.setColocaciones(list_colocacion);
    	    	ases_ant = rs.getInt("ASES_ID");
    		}

    		
    		PreparedStatement psVencimientos = conn.prepareStatement("SELECT * FROM \"col$tablaliquidacion\" t "
    				+ "WHERE t.PAGADA = 0 and t.ID_COLOCACION = ? and t.FECHA_A_PAGAR <= ?");
    		psVencimientos.setString(1, rs.getString("ID_COLOCACION"));
    		psVencimientos.setDate(2, new java.sql.Date(fecha_validacion.getTimeInMillis()));
    		ResultSet rsv = psVencimientos.executeQuery();
    		while (rsv.next()){
    			Calendar fecha_proxima = Calendar.getInstance();
    			fecha_proxima.setTimeInMillis(rsv.getDate("FECHA_A_PAGAR").getTime());
    			
    			if (fecha_proxima.compareTo(fecha_validacion) <= 0){
    				Colocacion c = new Colocacion();
    				c.setAsociado(rs.getString("ASOCIADO"));
    				c.setId_colocacion(rs.getString("ID_COLOCACION"));
    				c.setFecha_proximo_pago(rsv.getString("FECHA_A_PAGAR"));
    				c.setDireccion(rs.getString("DIRECCION"));
    				c.setTelefonos(rs.getString("TELEFONO"));
    				c.setEmail(rs.getString("EMAIL"));
    				if (rsv.getDate("FECHA_A_PAGAR").getTime() < fecha_actual.getTimeInMillis()){
    					c.setVencida(true);
    				} else {
    					c.setVencida(false);
    				}
    				
    				list_colocacion.add(c);
    			}
    		}
    		

    				
    	}
    	
    	conn.commit();
    	// Teniendo la lista de asesores a los que hay que reportar vencimientos,
    	// procedemos a crear y enviar el correo
    	
    	Iterator<Reportar> it = list_reportar.iterator();
    	while( it.hasNext()){
    		r = it.next();
    		EnviarEmail(r);
    	}
    }


	private static Boolean EnviarEmail(Reportar r) throws FileNotFoundException, IOException {
		
		   Boolean result;
		   
		   if (r.getEmail() == null && r.getEmail().isEmpty()){
			   return false;
		   }
		
		   Properties p = new Properties();
		   
		   p.load(new FileReader("presion.properties"));
		
		   String userId = p.getProperty("mailUser");
		   String password = p.getProperty("mailPass");
		   String mailServer = p.getProperty("mailServer");
		   String mailPort = p.getProperty("mailPort");
		
		   try {
		   // Sending HTML formatted email
		   HtmlEmail htmlEmail = new HtmlEmail();
		   
		   // set the address of the outgoing SMTP server that will be used to send the email
		   htmlEmail.setHostName(mailServer);
		   // set to true if you want to debug
		   htmlEmail.setDebug(true);
		   htmlEmail.setSmtpPort(Integer.valueOf(mailPort));
		   htmlEmail.setSSLOnConnect(true);

		   // if the SMTP server needs authentication
		   if(!userId.trim().equalsIgnoreCase("") && !password.trim().equalsIgnoreCase("")){
		    htmlEmail.setAuthenticator(new DefaultAuthenticator(userId, password));
		    htmlEmail.setStartTLSEnabled(true);
		   }
		   
		   // set the recipient
		   String[] multidestino;
		   if (r.getEmail().contains(",")){
			   multidestino = r.getEmail().split(",");
		   } else {
			   multidestino = new String[1];
			   multidestino[0] = r.getEmail();
		   }
		   

			   List<InternetAddress> address = new ArrayList<InternetAddress>();
			   for(int i =0; i< multidestino.length; i++)
			   {
			       try {
					address.add(new InternetAddress(multidestino[i]));
				} catch (AddressException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			   }

			   htmlEmail.setTo(address);
		   
		   // set the sender
		   htmlEmail.setFrom(userId, "Fundación Apoyo");
		   
		   // set the subject
		   htmlEmail.setSubject("Notificación de Próximos Vencimientos!");
		   
		   // Construir Mensaje
		   
		   StringBuilder sb = new StringBuilder();
		   sb.append("<html>");
		   sb.append("<body>");
		   sb.append("<p style=\"text-align: center;\">&nbsp;</p>");
		   sb.append("<p style=\"text-align: center;\">Cordial Saludo, "+r.getAsesor()+"</p>");
		   sb.append("<p style=\"text-align: center;\">&nbsp;</p>");
		   sb.append("<p style=\"text-align: center;\">&nbsp;</p>");
		   sb.append("<p style=\"text-align: left;\">Nos permitimos informarle de los pr&oacute;ximos vencimiento de cuota de los cr&eacute;ditos por Usted asesorados</p>");
		   sb.append("<p style=\"text-align: center;\">&nbsp;</p>");
		   sb.append("<table style=\"height: auto;\" width=\"800\">");
		   sb.append("<thead>");
		   sb.append("<tr>");
		   sb.append("<th>COLOCACION</th>");
		   sb.append("<th>NOMBRE</th>");
		   sb.append("<th>FECHA DE PAGO</th>");
		   sb.append("<th>DIRECCION</th>");
		   sb.append("<th>TELEFONOS</th>");
		   sb.append("<th>EMAIL</th>");
		   sb.append("</tr>");
		   sb.append("</thead>");
		   sb.append("<tbody>");
		   
		    // recorrer colocaciones
		    Iterator<Colocacion> it = r.getColocaciones().iterator();
		    while(it.hasNext()){
		    	Colocacion c = it.next();
		    	if (c.getVencida()){
		    		sb.append("<tr style=\"background-color:#FA5858;\">");
		    	} else {
		    		sb.append("<tr>");
		    	}
		    	sb.append("<td>"+c.getId_colocacion()+"</td>");
		    	sb.append("<td>"+c.getAsociado()+"</td>");
		    	sb.append("<td>"+c.getFecha_proximo_pago()+"</td>");
		    	sb.append("<td>"+c.getDireccion()+"</td>");
		    	sb.append("<td>"+c.getTelefonos()+"</td>");
		    	sb.append("<td>"+c.getEmail()+"</td>");
		    	sb.append("</tr>");
		    }
		   // finalizar html
		   sb.append("<p>&nbsp;</p>");
		   sb.append("<p>Gracias por su colaboraci&oacute;n</p>");
		   sb.append("<p>&nbsp;</p>");
		   sb.append("<p>&nbsp;</p>");
		   sb.append("<p>Fundaci&oacute;n Apoyo</p>");
		   sb.append("</body>");
		   sb.append("</html>");		    
		   
		   // set the email body
		   htmlEmail.setHtmlMsg(sb.toString());
		   
		   // finally send the email
		   htmlEmail.send();
		   result = true;
		   
		  } catch (EmailException e) {
		   result = false;
		   e.printStackTrace();
		  }
		  
		  return result;
	}
}
