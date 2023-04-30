package irs;

import java.sql.Connection;
import java.sql.DriverManager;

//To give details required for database connection 
public class DBConnection {

	public static Connection createConnection() {

		// if the database is MySQL

		Connection con = null;
		final String url = "jdbc:mysql://localhost/db_irs_dev";
		final String username = "root"; // MySQL username
		final String password = "root"; // MySQL password
		try {
			try {
				Class.forName("com.mysql.jdbc.Driver"); // loading MySQL drivers
				con = DriverManager.getConnection(url, username, password);
			}

			catch (ClassNotFoundException e) {
				e.printStackTrace();
			}

			// attempting to connect to SQLPlus database
			System.out.println("Printing connection object " + con);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}