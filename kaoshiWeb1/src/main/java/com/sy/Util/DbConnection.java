package com.sy.Util;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class DbConnection {

	public Connection getConnection() {
		Connection connect = null ;
		try {
			Class.forName("com.mysql.jdbc.Driver");// ����MySQL JDBC��������
			System.out.println("�ɹ�����Mysql��������!");

		} catch (Exception e) {
			System.out.println("Mysql�������ش���!");
			e.printStackTrace();
		}

		try {
			connect = (Connection) DriverManager.getConnection("jdbc:mysql://10.11.60.38:3305/sy", "root",
					"1234");
			// ����URLΪ: jdbc:mysql//��������ַ/���ݿ��� �������2�������ֱ��ǵ�½�û���������
			System.out.println("�ɹ�����Mysql������!");
		} catch (Exception e) {
			System.out.println("Mysql�������ش���!");
			e.printStackTrace();
		}
		
		return connect;
	}

}
