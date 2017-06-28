package com.New.jdbc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

  
/**
 * 该类封装链接数据库的基本操作。
 * @author LIUJH
 * 2015-05-29
 */
public class DBConnect {
	private static Connection conn;
	private static PreparedStatement preparedStatement;
	
	/**
	 * 向外暴露获得以已经赋值后的preparedStatement,获得以后直接使用。
	 * @return PreparedStatement
	 */
	public static PreparedStatement getPreparedStatement() {
		return preparedStatement;
	}

	/**
	 * 读取INFO.properties中的信息
	 * 2015-05-29
	 * @return Map<String, String>
	 */
	
	private static Map<String, String> readInfo(){
		Properties properties = new Properties();
		
		Map<String, String> maps = new HashMap<String, String>();
		
		try {
			properties.load(DBConnect.class.getResourceAsStream("/INFO.properties"));
			
			String driver = properties.getProperty("Driver");
			String url = properties.getProperty("Url");
			String user = properties.getProperty("User");
			String password = properties.getProperty("PassWord");
			
			maps.put("driver", driver);
			maps.put("url", url);
			maps.put("user", user);
			maps.put("password", password);
			maps.put("characterEncoding","utf8");
			
		} catch (IOException e) {
			e.printStackTrace();
		}return maps;
	}
	
	/**
	 * 获得Connection对象
	 * 2015-05-29
	 * @author LIUJH
	 * @return 
	 */
	public static Connection getConnection(){
		String url="jdbc:mysql://localhost:3306/cms?user=root&password=byj&characterEncoding=utf-8";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	/**
	 * 向preparedStatement赋值
	 * @author LIUJH
	 * @param sql
	 * 2015-05-29
	 */
	public synchronized static PreparedStatement preparedStatement(String sql){
		getConnection();
		try {
			preparedStatement = conn.prepareStatement(sql);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return preparedStatement;
	}
	
	public static void setAutoCommit(boolean autoCommit) {
		try {
			conn.setAutoCommit(autoCommit);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void commit() {
		try {
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void rollback() {
		try {
			conn.rollback();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 关闭操作
	 * 2015-05-29
	 * @author LIUJH
	 * @param rs
	 */
	public static void closeAll(ResultSet rs){
		if(rs == null){
			try {
				preparedStatement.close();
				preparedStatement=null;
				conn.close();
				conn=null;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else{
			try {
				rs.close();
				preparedStatement.close();
				preparedStatement=null;
				conn.close();
				conn=null;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}