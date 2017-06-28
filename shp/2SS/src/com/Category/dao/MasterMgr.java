package com.Category.dao;

/**
 * 对news_master表的一些增，删，改，查询操作
 */

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import com.New.jdbc.*;
import com.Category.entity.Master;

public class MasterMgr{
	/*
	 * 管理员发新闻次数加一
	 */
	public void addnewsnum(String username) {
		try {
			String sql="UPDATE master SET totaL = total+1 WHERE username=?";
			DBConnect.preparedStatement(sql);
			DBConnect.getPreparedStatement().setString(1, new String(username.getBytes("ISO8859_1"),"UTF-8"));
			DBConnect.getPreparedStatement().executeUpdate();
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			DBConnect.closeAll(null);
		}
	}

	/*
	 * 管理员登陆次数加一
	 */
	public void addloginnum(String username) {
	
		try {
			String sql="UPDATE master SET loginnum = loginnum+1 WHERE username=?";
			DBConnect.preparedStatement(sql);
			DBConnect.getPreparedStatement().setString(1, new String(username.getBytes("ISO8859_1"),"UTF-8"));
			DBConnect.getPreparedStatement().executeUpdate();
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			DBConnect.closeAll(null);
		}
	}

	/*
	 * 添加新的管理员
	 */
	public void add(Master master) {
		try {
			String sql="INSERT INTO master (username,userpwd,total,categoryid,loginnum,registertime) VALUES (?,?,?,?,?,?)";
			DBConnect.preparedStatement(sql);
			DBConnect.getPreparedStatement().setString(1,new String(master.getUsername().getBytes("ISO8859_1"),"UTF-8"));
			DBConnect.getPreparedStatement().setString(2, new String(master.getUserpwd().getBytes("ISO8859_1"),"UTF-8"));
			DBConnect.getPreparedStatement().setInt(3, 0);
			DBConnect.getPreparedStatement().setInt(4, master.getCategoryid());
			DBConnect.getPreparedStatement().setInt(5, 1);
			DBConnect.getPreparedStatement().setDate(6, new java.sql.Date(new java.util.Date().getTime()));
			DBConnect.getPreparedStatement().executeUpdate();			
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			DBConnect.closeAll(null);
		}
	}

	/*
	 * 删除管理员
	 */
	public void delete(int id) {

		try {
			String sql="delete from master WHERE id=?";
			DBConnect.preparedStatement(sql);
			DBConnect.getPreparedStatement().setInt(1, id);
			DBConnect.getPreparedStatement().executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnect.closeAll(null);
		}
	}

	/*
	 * 修改管理员信息
	 */
	public void modify(Master master) {

		try {
			String sql="UPDATE master SET username=?,userpwd=?,total=?,categoryid=?,loginnum=? WHERE id=?";
			DBConnect.preparedStatement(sql);
			DBConnect.getPreparedStatement().setString(1, new String(master.getUsername().getBytes("ISO8859_1"),"UTF-8"));
			DBConnect.getPreparedStatement().setString(2, new String(master.getUserpwd().getBytes("ISO8859_1"),"UTF-8"));
			DBConnect.getPreparedStatement().setInt(3, master.getTotal());
			DBConnect.getPreparedStatement().setInt(4, master.getCategoryid());
			DBConnect.getPreparedStatement().setInt(5, master.getLoginnum());
			DBConnect.getPreparedStatement().setInt(6, master.getId());
			DBConnect.getPreparedStatement().executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnect.closeAll(null);
		}
	}

	public boolean checkLogin(String username, String userpwd) {
		ResultSet rs = null;
		try {
			String sql="SELECT * FROM master WHERE username=? and userpwd=?";
			DBConnect.preparedStatement(sql);
			DBConnect.getPreparedStatement().setString(1, new String(username.getBytes("ISO8859_1"),"UTF-8"));			DBConnect.getPreparedStatement().setString(2, new String(userpwd.getBytes("ISO8859_1"),"UTF-8"));
			rs = DBConnect.getPreparedStatement().executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			DBConnect.closeAll(null);
		}
		return false;
	}

	/*
	 * 查询所有的管理员,检查是否重复
	 */
	public boolean isExist(String username) {
		ResultSet rs = null;
		try {
			String sql="SELECT * FROM master WHERE username=?";
			DBConnect.preparedStatement(sql);
			DBConnect.getPreparedStatement().setString(1,  new String(username.getBytes("ISO8859_1"),"UTF-8"));
			rs=DBConnect.getPreparedStatement().executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			DBConnect.closeAll(null);
		}
		return false;
	}

	/*
	 * 查询所有的管理员(按发新闻数排序)
	 */
	public Collection getAllByTotalDesc() {
		Collection c = new ArrayList();
		ResultSet rs = null;
		try {
			String sql="SELECT * FROM master order by total desc";
			DBConnect.preparedStatement(sql);
			rs=DBConnect.getPreparedStatement().executeQuery();
			Master master = null;
			while (rs.next()) {
				master = new Master();
				master.setId(rs.getInt("id"));
				master.setUsername(rs.getString("username"));
				master.setUserpwd(rs.getString("userpwd"));
				master.setStrRegistertime(rs.getString("registertime"));
				master.setTotal(rs.getInt("total"));
				master.setCategoryid(rs.getInt("categoryid"));
				master.setLoginnum(rs.getInt("loginnum"));
				c.add(master);
				master = null;
			}
		} catch (Exception e) {
			System.err.println("error:" + e);
		} finally {
			DBConnect.closeAll(null);
		}
		return c;
	}

	/*
	 * 查询所有的管理员(按id排序)
	 */
	public Collection getAllByIdAsc() {
		Collection c = new ArrayList();
		ResultSet rs = null;
		try {
			String sql="SELECT * FROM master order by id asc";
			DBConnect.preparedStatement(sql);
			rs=DBConnect.getPreparedStatement().executeQuery();
			Master master = null;
			while (rs.next()) {
				master = new Master();
				master.setId(rs.getInt("id"));
				master.setUsername(rs.getString("username"));
				master.setUserpwd(rs.getString("userpwd"));
				master.setStrRegistertime(rs.getString("registertime"));
				master.setTotal(rs.getInt("total"));
				master.setCategoryid(rs.getInt("categoryid"));
				master.setLoginnum(rs.getInt("loginnum"));
				c.add(master);
				master = null;
			}
		} catch (Exception e) {
			System.err.println("error:" + e);
		} finally {
			DBConnect.closeAll(null);
		}
		return c;
	}

	/*
	 * 计算管理员的总数
	 */
	public int getTotal() {
		int masterCount = 0;
		ResultSet rs = null;
		try {
			String sql="SELECT count(*) FROM master";
			DBConnect.preparedStatement(sql);
			rs=DBConnect.getPreparedStatement().executeQuery();
			if (rs.next())
				masterCount = rs.getInt(1);
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			DBConnect.closeAll(null);
		}
		return masterCount;
	}

	/*
	 * 根据ID得到管理员
	 */
	public Master getById(int id) {

		ResultSet rs = null;
		try {
			String sql="SELECT * FROM master WHERE id=?";
			DBConnect.preparedStatement(sql);
			DBConnect.getPreparedStatement().setInt(1,id);
			rs=DBConnect.getPreparedStatement().executeQuery();
			if (rs.next()) {
				Master master = new Master();
				master.setId(rs.getInt("id"));
				master.setUsername(rs.getString("username"));
				master.setUserpwd(rs.getString("userpwd"));
				master.setStrRegistertime(rs.getString("registertime"));
				master.setTotal(rs.getInt("total"));
				master.setCategoryid(rs.getInt("categoryid"));
				master.setLoginnum(rs.getInt("loginnum"));
				return master;
			}
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			DBConnect.closeAll(null);
		}
		return null;
	}

	/**
	 * 获取用户名对应的密码
	 * */	
public static String getUserpwd(String strUserName) {
	ResultSet rs = null;
	try {
		// sql语句：
		String sql = "select userpwd from master where username = '"
				+ strUserName+"'";
		// 执行sql语句：
		DBConnect.preparedStatement(sql);
		rs=DBConnect.getPreparedStatement().executeQuery();
		if (rs.next()) {
			return rs.getString("userpwd");
		}
		return null;
	} catch (SQLException sqlExc) {
		sqlExc.printStackTrace();
		return null;
	} catch (Exception e) {
		e.printStackTrace();
		return null;
	} finally {
		DBConnect.closeAll(null);
	}
   }

	/*
	 * 根据用户名称得到管理员
	 */
	public Master getByUsername(String username) {

		ResultSet rs = null;
		try {
			String sql="SELECT * FROM master WHERE uesrname=?";
			DBConnect.preparedStatement(sql);
			DBConnect.getPreparedStatement().setString(1, new String(username.getBytes("ISO8859_1"),"UTF-8"));
		    rs=DBConnect.getPreparedStatement().executeQuery();
			if (rs.next()) {
				Master master = new Master();
				master.setId(rs.getInt("id"));
				master.setUsername(rs.getString("username"));
				master.setUserpwd(rs.getString("userpwd"));
				master.setStrRegistertime(rs.getString("registertime"));
				master.setTotal(rs.getInt("total"));
				master.setCategoryid(rs.getInt("categoryid"));
				master.setLoginnum(rs.getInt("loginnum"));
				return master;
			}
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			DBConnect.closeAll(null);
		}
		return null;
	}
}