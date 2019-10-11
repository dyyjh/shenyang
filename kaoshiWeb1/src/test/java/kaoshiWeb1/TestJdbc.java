package kaoshiWeb1;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.jdbc.Connection;

public class TestJdbc {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");// 加载MySQL JDBC驱动程序
			System.out.println("成功加载Mysql驱动程序!");
		} catch (Exception e) {
			System.out.println("Mysql驱动加载错误!");
			e.printStackTrace();
		}
		try {
			Connection connect = (Connection) DriverManager.getConnection("jdbc:mysql://10.11.60.38:3305/sy", "root",
					"1234");
			Statement stmt = connect.createStatement();
			ResultSet rs = (ResultSet) stmt.executeQuery("select * from t_user");
			while (rs.next()) {
				System.out.println(rs.getString("USER_ID")); // 取MySQL数据库中table_1表中的ID
				System.out.println(rs.getString("USER_NAME")); // 取MySQL数据库中table_1表中的Summary
			}
			//1、增加
			/*PreparedStatement pst = connect.prepareStatement("insert into t_user(USER_ID,USER_NAME,USER_PASSWORD) values (?,?,?)");
			pst.setString(1, "3");
			pst.setString(2, "12345");
			pst.setString(3, "12345");
			pst.executeUpdate();*/
			//2、修改
			/*String sql = "UPDATE t_user SET USER_NAME=?, USER_PASSWORD=? WHERE user_id=?";
			PreparedStatement pst1 = connect.prepareStatement(sql);
			pst1.setString(1, "lili");
			pst1.setString(2, "lili");
			pst1.setInt(3, 3);
			pst1.executeUpdate();*/
			//3、删除
			PreparedStatement pst1 = connect.prepareStatement("delete from t_user where user_id=? ");
			pst1.setInt(1, 4);
			pst1.executeUpdate();
			// 最后一步，关闭
			pst1.close();
			connect.close();
		} catch (Exception e) {
			System.out.println("获取数据错误!");
			e.printStackTrace();
		}
	}
}
