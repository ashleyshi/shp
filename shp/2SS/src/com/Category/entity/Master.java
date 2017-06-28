package com.Category.entity;

/**
 *  管理员表中的一些字段
 */

import java.util.Date;

public class Master {
	private int id;

	private String username;

	private String userpwd;

	private int total;

	private int categoryid;

	private int loginnum;

	private Date registertime;

	private String strRegistertime;

	public int getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getLoginnum() {
		return loginnum;
	}

	public void setLoginnum(int loginnum) {
		this.loginnum = loginnum;
	}

	public Date getRegistertime() {
		return registertime;
	}

	public void setRegistertime(Date registertime) {
		this.registertime = registertime;
	}

	public String getStrRegistertime() {
		return strRegistertime;
	}

	public void setStrRegistertime(String strRegistertime) {
		this.strRegistertime = strRegistertime;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

}