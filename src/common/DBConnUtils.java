package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnUtils {
	public static final String dbURL = "jdbc:mysql://localhost:3306/SE?useUnicode=true&characterEncoding=utf8"; 
	public static final String dbID = "root";
	public static final String dbPassword = "3805";
	
	public Connection getConnection() throws SQLException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Connection conn = DriverManager.getConnection(DBConnUtils.dbURL, DBConnUtils.dbID ,DBConnUtils.dbPassword);
		return conn;

	
	}
}
