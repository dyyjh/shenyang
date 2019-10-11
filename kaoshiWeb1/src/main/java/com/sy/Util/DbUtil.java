package com.sy.Util;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Map;

import com.mysql.jdbc.Connection;

public class DbUtil {

	// 查询
	public ResultSet excuteSelect(String sql) {
		ResultSet result = null;
		try {
			DbConnection conn = new DbConnection();
			Connection connect = conn.getConnection();
			Statement stat = connect.createStatement();
			result = stat.executeQuery(sql);
			/*while (result.next()) {
				System.out.println(result); // 取MySQL数据库中table_1表中的ID
				System.out.println(result.getString("USER_NAME")); // 取MySQL数据库中table_1表中的Summary
			}*/
			//Object[] intArray = new Object[] {"1","3","4","5","7",9};
			//String newSql = String.format(sql.replace("?", "%s"), getStringFromArray(intArray));

			stat.close();
			connect.close();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public static String getStringFromArray(Object ... objects ) {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < objects.length; i++) {
			if(i == objects.length - 1) {
				sb.append(objects[i]);
			}else {
				sb.append(objects[i]).append(",");
			}
		}
		return sb.toString().trim();
	}

	
	// 更新
	public void excuteUpdate(String sql) {
		try {
			DbConnection conn = new DbConnection();
			Connection connect = conn.getConnection();
			PreparedStatement stat = connect.prepareStatement(sql);
			stat.executeUpdate();
			stat.close();
			connect.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// 删除
	public void excuteDelete(String sql) {
		try {
			DbConnection conn = new DbConnection();
			Connection connect = conn.getConnection();
			PreparedStatement stat = connect.prepareStatement(sql);
			stat.executeUpdate();
			stat.close();
			connect.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
