package com.BBS.entity;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 描述: 描述留言信息类
 */

public class BBSMsg {
	private int item_id;

	private String item_title;

	private String item_content;

	private String author;

	private Date compose_date;

	private String strCompose_date;

	private Date modify_date;

	private String strModify_date;

	private int is_origional;

	private int fathers_id;

	private int replyed_times;

	private int browsed_times;

	private int latest_replication_id;

	private String latest_replyer;

	private String strLatest_reply_date;

	private int level = 0;

	private int face;

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getBrowsed_times() {
		return browsed_times;
	}

	public void setBrowsed_times(int browsed_times) {
		this.browsed_times = browsed_times;
	}

	public Date getCompose_date() {
		return compose_date;
	}

	public void setCompose_date(Date compose_date) {
		this.compose_date = compose_date;
	}

	public int getFathers_id() {
		return fathers_id;
	}

	public void setFathers_id(int fathers_id) {
		this.fathers_id = fathers_id;
	}

	public int getIs_origional() {
		return is_origional;
	}

	public void setIs_origional(int is_origional) {
		this.is_origional = is_origional;
	}

	public String getItem_content() {
		return item_content;
	}

	public void setItem_content(String item_content) {
		this.item_content = item_content;
	}

	public int getItem_id() {
		return item_id;
	}

	public void setItem_id(int item_id) {
		this.item_id = item_id;
	}

	public String getItem_title() {
		return item_title;
	}

	public void setItem_title(String item_title) {
		this.item_title = item_title;
	}

	public int getLatest_replication_id() {
		return latest_replication_id;
	}

	public void setLatest_replication_id(int latest_replication_id) {
		this.latest_replication_id = latest_replication_id;
	}

	public Date getModify_date() {
		return modify_date;
	}

	public void setModify_date(Date modify_date) {
		this.modify_date = modify_date;
	}

	public int getReplyed_times() {
		return replyed_times;
	}

	public void setReplyed_times(int replyed_times) {
		this.replyed_times = replyed_times;
	}

	public String getStrCompose_date() {
		if (getCompose_date() != null) {
			SimpleDateFormat simpledate = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			strCompose_date = simpledate.format(getCompose_date());
		}
		return strCompose_date;
	}

	public void setStrCompose_date(String strCompose_date) {
		this.strCompose_date = strCompose_date;
	}

	public String getStrModify_date() {
		if (getModify_date() != null) {
			SimpleDateFormat simpledate = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			strModify_date = simpledate.format(getModify_date());
		}
		return strModify_date;
	}

	public void setStrModify_date(String strModify_date) {
		this.strModify_date = strModify_date;
	}

	public String getLatest_replyer() {
		return latest_replyer;
	}

	public String getStrLatest_reply_date() {
		return strLatest_reply_date;
	}

	public void setLatest_replyer(String latest_replyer) {
		this.latest_replyer = latest_replyer;
	}

	public void setStrLatest_reply_date(String strLatest_reply_date) {
		this.strLatest_reply_date = strLatest_reply_date;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public int getFace() {
		return face;
	}

	public void setFace(int face) {
		this.face = face;
	}
}
