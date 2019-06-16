package com.login.dao;

import java.sql.*;

public class LoginDao {
	public boolean checkCredentials(String uname, String pass) {
		boolean result = false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/ecommerce";
			String sql = "select * from user where name = ? and password = ?";
			Connection connection = DriverManager.getConnection(url, "root", "");
			PreparedStatement st = connection.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				result = true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("I am in catch loop");
		}
		return result;
	}
}
