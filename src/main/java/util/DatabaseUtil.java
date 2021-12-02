package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {

	public static Connection getConnection() {
		try {
			//String dbURL ="jdbc:mysql://localhost:3306/shoppingmall?serverTimezone=UTC";
			String dbURL ="jdbc:mysql://3.38.96.95:3306/shopping?serverTimezone=UTC";
			//String dbURL = "jdbc:mysql://3.38.96.95:3306/shopping?" +
                    //"useUnicod=true&characterEncoding=UTF-8";
			/*
			 * String dbID="root"; String dbPassword="a202044033";
			 */
			String dbID="userid";
			String dbPassword="ghkdma2020";
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}return null;
	}
}
