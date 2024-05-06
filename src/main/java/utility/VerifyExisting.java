package utility;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import utility.jdbc.DatabaseConnection;

public class VerifyExisting {
	private static Connection conn = new DatabaseConnection().getConnection();
	public static boolean existsUser(String email,String userId) {
		try {
			String sqlQuery = "SELECT COUNT(*) FROM users u1 WHERE u1.email = ?";
			PreparedStatement pst = conn.prepareStatement(sqlQuery);
			pst.setString(1, email);
            ResultSet resultSet = pst.executeQuery();
            if (resultSet.next()) {
                int count = resultSet.getInt(1); 
                if (count > 0) {
                	return true;
                } else {
                	return false;
                }
            }

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return false;
	}
}
