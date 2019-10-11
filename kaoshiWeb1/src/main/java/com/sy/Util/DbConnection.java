package com.sy.Util;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class DbConnection {

	public Connection getConnection() {
		Connection connect = null ;
		try {
			Class.forName("com.mysql.jdbc.Driver");// 加载MySQL JDBC驱动程序
			System.out.println("成功加载Mysql驱动程序!");

		} catch (Exception e) {
			System.out.println("Mysql驱动加载错误!");
			e.printStackTrace();
		}

		try {
			connect = (Connection) DriverManager.getConnection("jdbc:mysql://10.11.60.38:3305/sy", "root",
					"1234");
			// 连接URL为: jdbc:mysql//服务器地址/数据库名 ，后面的2个参数分别是登陆用户名和密码
			System.out.println("成功连接Mysql服务器!");
		} catch (Exception e) {
			System.out.println("Mysql驱动加载错误!");
			e.printStackTrace();
		}
		
		return connect;
	}

}
