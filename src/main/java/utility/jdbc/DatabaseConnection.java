package utility.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class DatabaseConnection {
	private Connection conn = null;
    private static ResourceBundle bundle = ResourceBundle.getBundle("credentials");
    private static final String DB_PROTOCOL = "Mysql.DATABASE_PROTOCOL";
    private static final String DB_URL = "Mysql.DATABASE_URL";
    private static final String DB_PORT = "Mysql.DATABASE_PORT";
    private static final String DB_NAME = "Mysql.DATABASE_NAME";
    private static final String DB_USER = "Mysql.DB_USER";
	
	public DatabaseConnection() {
		try {
			this.conn = DriverManager.getConnection(bundle.getString(DB_PROTOCOL)+bundle.getString(DB_URL)+":"+bundle.getString(DB_PORT)+"/"+bundle.getString(DB_NAME),bundle.getString(DB_USER),"");
			if (null!= this.conn) {
				System.out.println("Successfully connected to db");
			}
		} catch (SQLException sqle) { 
			System.out.println(sqle.getMessage());
		} 
	}

	public Connection getConnection() {
		return conn;
	}
	
	


}
