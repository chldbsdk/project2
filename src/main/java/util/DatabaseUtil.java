package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {

	public static Connection getConnection() {
		try {
			String dbURL ="jdbc:mysql://192.168.202.1:3306/shoppingmall?serverTimezone=UTC";
			String dbID="useid";
			String dbPassword="ghkdma0909";
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}return null;
	}
}
