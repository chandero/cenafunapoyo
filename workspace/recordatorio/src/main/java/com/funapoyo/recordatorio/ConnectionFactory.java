package com.funapoyo.recordatorio;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionFactory {

	public static Connection getConnection() throws SQLException, FileNotFoundException, IOException, ClassNotFoundException {

	    Connection conn = null;
	    
	    Properties p = new Properties();
	    p.load(new FileReader("recordatorio.properties"));
	    
	    String dbserver = p.getProperty("server");
	    String dbpath = p.getProperty("path");
	    String dbname = p.getProperty("name");
	    String dbuser = p.getProperty("fbuser");
	    String dbpass = p.getProperty("fbpass");
	    
	    
	    Class.forName("org.firebirdsql.jdbc.FBDriver");
	    
	    conn = DriverManager.getConnection(
	    "jdbc:firebirdsql:"+dbserver+"/3050:"+dbpath+"/"+dbname,
	    dbuser, dbpass);
	    return conn;
	}	
	
}
