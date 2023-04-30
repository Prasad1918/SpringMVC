package irs;

import irs.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

// This class register the customer details into user_details table
public class RegisterDao {

	public String registerUser(Customer customer) {
		String userid = customer.getUserId();
		String password = customer.getPassword();
		String name = customer.getName();
		String city = customer.getCity();
		String email = customer.getEmail();
		String phone = customer.getPhone();

		Connection con = null;
		PreparedStatement preparedStatement = null;
		try {
			con = DBConnection.createConnection();

			// Insert user details into the table 'USERS'
			String query = "insert into user_details values (?,?,?,?,?,?)";

			// Making use of prepared statements here to insert bunch of data
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1, userid);
			preparedStatement.setString(2, password);
			preparedStatement.setString(3, name);
			preparedStatement.setString(4, city);
			preparedStatement.setString(5, email);
			preparedStatement.setString(6, phone);
			int i = preparedStatement.executeUpdate();

			// Just to ensure data has been inserted into the database
			if (i != 0)
				return "SUCCESS";
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		// On failure, send a message from here.
		return "Something went wrong in saving the data in the database!";

	}
}
