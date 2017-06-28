package com.Category.dao;

/**
 *  Title  新闻管理系统
 *  @author: 王夕宁
 *  @version 1.0
 *  对news_category表的一些增，删，改，查询操作
 */

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;

import com.New.jdbc.*;
import com.Category.entity.Category;
public class CategoryMgr {

	public CategoryMgr() {
	}

	/*
	 * 修改栏目名称
	 */
	public void modify(Category category) {
		try {
		
			String sql="UPDATE category SET name=? and master=? WHERE id=?";
			DBConnect.preparedStatement(sql);
			DBConnect.getPreparedStatement().setString(1, new String(category.getName().getBytes("ISO8859_1"),"UTF-8"));
			DBConnect.getPreparedStatement().setString(2, new String(category.getMaster().getBytes("ISO8859_1"),"UTF-8"));
			DBConnect.getPreparedStatement().setInt(3, category.getId());
			DBConnect.getPreparedStatement().executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnect.closeAll(null);
		}
	}

	/*
	 * 删除栏目
	 */
	public void delete(int id) {
		try {
			String sql="delete from category WHERE id=?";
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
	 * 添加新的栏目
	 */
	public void add(Category category) {

		try {
     
			 String sql="INSERT INTO category(name,master) VALUES(?,?)";
			 DBConnect.preparedStatement(sql);
			 DBConnect.getPreparedStatement().setString(1, new String(category.getName().getBytes("ISO8859_1"),"UTF-8"));
			 DBConnect.getPreparedStatement().setString(2, new String(category.getMaster().getBytes("ISO8859_1"),"UTF-8"));
			 DBConnect.getPreparedStatement().executeUpdate();
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			DBConnect.closeAll(null);
		}
	}

	/*
	 * 得到所有栏目
	 */
	public Collection getAll() {
		Collection c = new ArrayList();
		ResultSet rs = null;
		try {
			String sql="SELECT * FROM category order by id asc";
			DBConnect.preparedStatement(sql);
			rs=DBConnect.getPreparedStatement().executeQuery();
			Category category = null;
			while (rs.next()) {
				category = new Category();
				category.setId(rs.getInt("id"));
				category.setName(rs.getString("name"));
				category.setMaster(rs.getString("master"));
				c.add(category);
				category = null;
			}
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			DBConnect.closeAll(null);
		}
		return c;
	}

	/*
	 * 根据ID得到栏目
	 */
	public Category getById(int id) {
		Category iclass = new Category();
		ResultSet rs = null;
		try {
			String sql="SELECT * FROM category WHERE id=?";
			DBConnect.preparedStatement(sql);
			DBConnect.getPreparedStatement().setInt(1, id);
			rs=DBConnect.getPreparedStatement().executeQuery();
			if (rs.next()) {
				iclass.setId(rs.getInt("id"));
				iclass.setName(rs.getString("name"));
				iclass.setMaster(rs.getString("master"));
			}
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			DBConnect.closeAll(null);
		}
		return iclass;
	}

	/*
	 * 计算栏目的总数
	 */
	public int getTotal() {
		int count = 0;
		ResultSet rs = null;
		try {
			String sql="SELECT count(*) FROM category";
			DBConnect.preparedStatement(sql);
			rs=DBConnect.getPreparedStatement().executeQuery();
			if (rs.next())
				count = rs.getInt(1);
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			DBConnect.closeAll(null);
		}
		return count;
	}

}