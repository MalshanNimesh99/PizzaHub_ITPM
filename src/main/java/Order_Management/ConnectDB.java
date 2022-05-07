package Order_Management;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
	private static String url="jdbc:mysql://localhost:3306/pizzahub_db?autoReconnect=true&useSSL=false";
	private static String userName="root";
	private static String password="root123";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con= DriverManager.getConnection(url, userName, password);
			
		}
		catch(Exception e) {
			System.out.println("Database connection is not success");
		}
		
		return con;
	}

}
