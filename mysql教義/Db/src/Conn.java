import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conn {
	Connection con;
	static Statement sql;
	static ResultSet res;

	public Connection getConnection() {

		try {
			Class.forName("com.mysql.jdbc.Driver");
//for MySQL8.0.16
//			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("DB接続開始");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "8NwudGGg");
			//for MySQL8.0.16
//				con = DriverManager.getConnection("jdbc:mysql:"
//					+ "//127.0.0.1:3306/mysql?useUnicode=true&characterEncoding=UTF-8&userSSL=false&serverTimezone=GMT%2B8", "root", "root");


			System.out.println("DB接続OK");

			try {
				sql = con.createStatement(); //
				res = sql.executeQuery("select * from emp");//table名　zhao
				while (res.next()) { //databaseすべて出力
					String id = res.getString(1);
					String Lastname = res.getString(2);
					String Firstname = res.getString(3);
					System.out.print("ID    " + id); //
					System.out.print("    Lastname:    " + Lastname);
					System.out.println("    Firstname:    " + Firstname);

				}
			} catch (Exception e) {
				e.printStackTrace();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con; //
	}

	public static void main(String[] args) throws SQLException {
		Connection con1;
		Conn c = new Conn();
		con1=c.getConnection();
		con1.close();

	}
}
