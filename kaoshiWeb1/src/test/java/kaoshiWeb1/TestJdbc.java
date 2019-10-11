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
			Class.forName("com.mysql.jdbc.Driver");// ����MySQL JDBC��������
			System.out.println("�ɹ�����Mysql��������!");
		} catch (Exception e) {
			System.out.println("Mysql�������ش���!");
			e.printStackTrace();
		}
		try {
			Connection connect = (Connection) DriverManager.getConnection("jdbc:mysql://10.11.60.38:3305/sy", "root",
					"1234");
			Statement stmt = connect.createStatement();
			ResultSet rs = (ResultSet) stmt.executeQuery("select * from t_user");
			while (rs.next()) {
				System.out.println(rs.getString("USER_ID")); // ȡMySQL���ݿ���table_1���е�ID
				System.out.println(rs.getString("USER_NAME")); // ȡMySQL���ݿ���table_1���е�Summary
			}
			//1������
			/*PreparedStatement pst = connect.prepareStatement("insert into t_user(USER_ID,USER_NAME,USER_PASSWORD) values (?,?,?)");
			pst.setString(1, "3");
			pst.setString(2, "12345");
			pst.setString(3, "12345");
			pst.executeUpdate();*/
			//2���޸�
			/*String sql = "UPDATE t_user SET USER_NAME=?, USER_PASSWORD=? WHERE user_id=?";
			PreparedStatement pst1 = connect.prepareStatement(sql);
			pst1.setString(1, "lili");
			pst1.setString(2, "lili");
			pst1.setInt(3, 3);
			pst1.executeUpdate();*/
			//3��ɾ��
			PreparedStatement pst1 = connect.prepareStatement("delete from t_user where user_id=? ");
			pst1.setInt(1, 4);
			pst1.executeUpdate();
			// ���һ�����ر�
			pst1.close();
			connect.close();
		} catch (Exception e) {
			System.out.println("��ȡ���ݴ���!");
			e.printStackTrace();
		}
	}
}
