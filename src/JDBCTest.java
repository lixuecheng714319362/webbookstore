import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;


public class JDBCTest {
	private static String sql = "select * from users_inf where user_name = ?";
	private static Connection connection = null;
	private static PreparedStatement pstmPreparedStatement = null;
	private static ResultSet rsResultSet = null;
	
	public static void main(String[] args) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/webbookstore", "root", "lixuecheng");
		pstmPreparedStatement = connection.prepareStatement(sql);
		pstmPreparedStatement.setString(1, "lixuecheng");
		rsResultSet = (ResultSet) pstmPreparedStatement.executeQuery();
		while (rsResultSet.next()) {
			System.out.println(rsResultSet.getString("user_name") + rsResultSet.getString("password"));
			
		}
		if (rsResultSet != null) {
			rsResultSet.close();
		}
		if (pstmPreparedStatement != null) {
			pstmPreparedStatement.close();
		}
		if (connection != null) {
			connection.close();
		}
	}
}
