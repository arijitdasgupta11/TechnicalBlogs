package com.tech.blog.helper;

import java.sql.*;

/**
 * @author Arijit
 *
 */
public class ConnectionProvider {

	private static Connection con;

	public static Connection getConnection() {
		try {
			  Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection(
	                "jdbc:mysql://localhost:3306/techblog",
	                "root", "password");
//			Statement stmt = con.createStatement();
//			ResultSet rs = stmt.executeQuery("select * from user");
//			while (rs.next())
//				System.out.println(rs.getInt(1) + "  " + rs.getString(2) + "  " + rs.getString(3));
//			con.close();
		} catch (Exception e) {
			System.out.println("problem");
		}

		return con;
	}

}
