package com.BBS.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import com.BBS.entity.BBSMsg;
import com.New.entity.News;
import com.New.jdbc.DBConnect;
import com.BBS.servlet.*;

/**
 * 描述: 描述留言信息管理类
 */

public class BBSMsgMgr {

	public int compose(BBSMsg msg) {
		ResultSet rs=null;
		try {
			int maxid = 1;
			String sql = "select max(item_id) as maxid from bbsitems";
			DBConnect.preparedStatement(sql);	
			rs=DBConnect.getPreparedStatement().executeQuery();
			if (rs.next()) {
				maxid = rs.getInt(1) + 1;
			}
			// sql语句：

		     sql = "insert into bbsitems(item_id,item_title,item_content,author,"
					+ "compose_date,is_origional,fathers_id,replyed_times,browsed_times,"
					+ "latest_replication_id,modify_date,face) values('"
					+ maxid
					+ "','"
					+ msg.getItem_title()
					+ "','"
					+ msg.getItem_content()
					+ "','"
					+ msg.getAuthor()
					+ "','"
					+ msg.getStrCompose_date()
					+ "','1','"
					+ maxid
					+ "','0','0','" + maxid + "','"+msg.getModify_date().toString()+"','" + msg.getFace() + "')";
		    sql = new String(sql.getBytes("utf8"), "UTF-8");
            //System.out.println("sql----------"+sql);
			// 执行sql语句：
		   // System.out.println(msg.getItem_title());
            DBConnect.preparedStatement(sql);
			DBConnect.getPreparedStatement().executeUpdate();
			return 0;
		} catch (SQLException sqlExc) {
			sqlExc.printStackTrace();
			return -1;
		} catch (Exception e) {
			e.printStackTrace();
			return -2;
		} finally {
			// 关闭连接，释放数据库资源：
			DBConnect.closeAll(null);
		}
	}

	public int modify(BBSMsg msg) {
		try {
			// sql语句：
			String sql = "update bbsitems set item_title='"
					+ msg.getItem_title() + "',item_content='"
					+ msg.getItem_content() + "',modify_date='"
					+ msg.getStrModify_date() + "',face='"+msg.getFace()+"' where item_id='"
					+ msg.getItem_id() + "'";
			// 执行sql语句：
			//System.out.println(sql);
			sql = new String(sql.getBytes("utf8"), "UTF-8");
		   // System.out.println(sql);
			DBConnect.preparedStatement(sql);
			int i=DBConnect.getPreparedStatement().executeUpdate();
			return i;
		} catch (SQLException sqlExc) {
			sqlExc.printStackTrace();
			return -1;
		} catch (Exception e) {
			e.printStackTrace();
			return -2;
		} finally {
			// 关闭连接，释放数据库资源：
			DBConnect.closeAll(null);
		}
	}

	public int read(int id) {

		try {
			// sql语句：
			String sql = "update bbsitems set BROWSED_TIMES=BROWSED_TIMES+1 "
					+ "where item_id='" + id + "'";
			//System.out.println(sql);
			 sql = new String(sql.getBytes("utf8"), "UTF-8");
			// 执行sql语句：
			 DBConnect.preparedStatement(sql);
			 DBConnect.getPreparedStatement().executeUpdate(sql);
			return 0;
		} catch (SQLException sqlExc) {
			sqlExc.printStackTrace();
			return -1;
		} catch (Exception e) {
			e.printStackTrace();
			return -2;
		} finally {
			// 关闭连接，释放数据库资源：
			DBConnect.closeAll(null);
		}
	}

	public int reply(BBSMsg msg, int fatherId) {
		ResultSet rs = null;
		try {
			int maxid = 1;
			String sql = "select max(item_id) as maxid from bbsitems";
		 sql = new String(sql.getBytes("utf8"), "UTF-8");
			// 创建数据记录集对象：
			DBConnect.preparedStatement(sql);
			rs=DBConnect.getPreparedStatement().executeQuery();
			if (rs.next()) {
				maxid = rs.getInt(1) + 1;
			}
			// sql语句：
			sql = "insert into bbsitems(item_id,item_title,item_content,author,"
					+ "compose_date,is_origional,fathers_id,replyed_times,browsed_times,"
					+ "latest_replication_id,face) values('"
					+ maxid
					+ "','"
					+ msg.getItem_title()
					+ "','"
					+ msg.getItem_content()
					+ "','"
					+ msg.getAuthor()
					+ "','"
					+ msg.getStrCompose_date()
					+ "','0','"
					+ fatherId
					+ "','0','0','" + maxid + "','" + msg.getFace() + "')";
			sql = new String(sql.getBytes("utf8"), "UTF-8");	
			
			DBConnect.preparedStatement(sql);
			DBConnect.getPreparedStatement().executeUpdate();
			sql = "update bbsitems set replyed_times=replyed_times+1,latest_replication_id='"
					+ maxid + "' where item_id='" + fatherId + "'";
			DBConnect.preparedStatement(sql);
			DBConnect.getPreparedStatement().executeUpdate();
			return 1;
		} catch (SQLException sqlExc) {
			sqlExc.printStackTrace();
			return -1;
		} catch (Exception e) {
			e.printStackTrace();
			return -2;
		} finally {
			// 关闭连接，释放数据库资源：
			DBConnect.closeAll(null);
		}
	}

	public int delete(int id) {
		try {
			// sql语句：
			String sql = "delete from bbsitems where item_id = '" + id + "'";
			DBConnect.preparedStatement(sql);
			DBConnect.getPreparedStatement().executeUpdate();
			Collection c = getFamily(id);
			if (c != null) {
				Iterator iterator = c.iterator();
				while (iterator.hasNext()) {
					sql = "delete from bbsitems where item_id = '"
							+ ((Integer) iterator.next()).intValue() + "'";
					//System.out.println("sql:" + sql);
					 sql = new String(sql.getBytes("utf8"), "UTF-8");
					DBConnect.preparedStatement(sql);
					DBConnect.getPreparedStatement().executeUpdate();
				}
			}
			// 执行sql语句：
		DBConnect.preparedStatement(sql);
		DBConnect.getPreparedStatement().executeUpdate();
			return 1;
		} catch (SQLException sqlExc) {
			sqlExc.printStackTrace();
			return -1;
		} catch (Exception e) {
			e.printStackTrace();
			return -2;
		} finally {
			// 关闭连接，释放数据库资源：
		DBConnect.closeAll(null);
	}
}

	
	
	public Collection getFamily(int id) {
		ResultSet rs = null;

		try {
			// sql语句：
			String sql = "select item_id from bbsitems where fathers_id='" + id
					+ "' and item_id!='" + id + "'";
			// System.out.println(sql);
			 sql = new String(sql.getBytes("utf8"), "UTF-8");
			// 执行sql语句，返回一个记录集到rs：
			DBConnect.preparedStatement(sql);
			rs=DBConnect.getPreparedStatement().executeQuery();

			Collection c = new ArrayList();

			while (rs.next()) {
				if (c == null) {
					c = new ArrayList();
				}
				int item_id = rs.getInt("item_id");
				c.add(new Integer(item_id));
				c.addAll(getFamily(item_id));
			}
			return c;
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

	public Collection getFamilyLevel(int id, int level) {
		ResultSet rs = null;
		try {
			// sql语句：
			String sql = "select item_id from bbsitems where fathers_id='" + id
					+ "' and item_id!='" + id + "'";
			// System.out.println(sql);
			 sql = new String(sql.getBytes("utf8"), "UTF-8");
			// 执行sql语句，返回一个记录集到rs：
			DBConnect.preparedStatement(sql);
			rs=DBConnect.getPreparedStatement().executeQuery();
			Collection c = new ArrayList();
			level++;
			while (rs.next()) {
				if (c == null) {
					c = new ArrayList();
				}
				int item_id = rs.getInt("item_id");
				c
						.add(new Integer[] { new Integer(item_id),
								new Integer(level) });
				c.addAll(getFamilyLevel(item_id, level));
			}
			return c;
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

	public BBSMsg getMessage(int id) {
		ResultSet rs = null;
		try {
			// sql语句：
			String sql = "select * from bbsitems where item_id='" + id + "'";
			 sql = new String(sql.getBytes("utf8"), "UTF-8");
			DBConnect.preparedStatement(sql);
           rs=DBConnect.getPreparedStatement().executeQuery();
			BBSMsg msg = null;
			if (rs.next()) {
				msg = new BBSMsg();
				msg.setAuthor(rs.getString("author"));
				msg.setBrowsed_times(rs.getInt("browsed_times"));
				msg.setFathers_id(rs.getInt("fathers_id"));
				msg.setIs_origional(rs.getInt("is_origional"));
				msg.setItem_content(rs.getString("item_content"));
				msg.setItem_id(rs.getInt("item_id"));
				msg.setItem_title(rs.getString("item_title"));
				msg.setLatest_replication_id(rs.getInt("latest_replication_id"));
				msg.setReplyed_times(rs.getInt("replyed_times"));
				msg.setStrCompose_date(rs.getString("compose_date"));
				msg.setStrModify_date(rs.getString("modify_date"));
				msg.setFace(rs.getInt("face"));
			}
			return msg;
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

	public Collection getAllMessages(int pagesize, int page) {
		
		ResultSet rs = null;
		try {
			String sql="select * from bbsitems order by item_id desc limit "+(page-1)*pagesize+","+pagesize;
			DBConnect.preparedStatement(sql);
			rs=DBConnect.getPreparedStatement().executeQuery();
			Collection c = new ArrayList();
			BBSMsg msg = null;
			while (rs.next()) {
				msg = new BBSMsg();
				msg.setAuthor(rs.getString("author"));
				msg.setBrowsed_times(rs.getInt("browsed_times"));
				msg.setFathers_id(rs.getInt("fathers_id"));
				msg.setIs_origional(rs.getInt("is_origional"));
				msg.setItem_content(rs.getString("item_content"));
				int itemid = rs.getInt("item_id");
				msg.setItem_id(itemid);
				msg.setItem_title(rs.getString("item_title"));
				msg.setLatest_replication_id(rs.getInt("latest_replication_id"));
				msg.setReplyed_times(rs.getInt("replyed_times"));
				msg.setStrCompose_date(rs.getString("compose_date"));
				msg.setStrModify_date(rs.getString("modify_date"));
				msg.setFace(rs.getInt("face"));
	
				c.add(msg);
			}
			return c;
		} catch (SQLException sqlExc) {
			sqlExc.printStackTrace();
			return null;
		} finally {
			DBConnect.closeAll(null);
		}
	}

	public boolean hasChildren(int id) {
		ResultSet rs = null;
		try {
			// sql语句：
			String sql = "select item_id from bbsitems where fathers_id='" + id
					+ "' and item_id!='" + id + "'";
			 sql = new String(sql.getBytes("utf8"), "UTF-8");
			DBConnect.preparedStatement(sql);
		
			rs=DBConnect.getPreparedStatement().executeQuery();
			if (rs.next()) {
				return true;
			}
			return false;
		} catch (SQLException sqlExc) {
			sqlExc.printStackTrace();
			return false;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			DBConnect.closeAll(null);
		}
	}

	public Collection getChildren(int id) {
		ResultSet rs = null;
		try {
			// sql语句：
			String sql = "select * from bbsitems where fathers_id='" + id
					+ "'or item_id='" + id + "' order by item_id asc";
			 sql = new String(sql.getBytes("utf8"), "UTF-8");
          DBConnect.preparedStatement(sql);
          rs=DBConnect.getPreparedStatement().executeQuery();
			Collection c = new ArrayList();
			BBSMsg msg = null;
			while (rs.next()) {
				msg = new BBSMsg();
				msg.setAuthor(rs.getString("author"));
				msg.setBrowsed_times(rs.getInt("browsed_times"));
				msg.setFathers_id(rs.getInt("fathers_id"));
				msg.setIs_origional(rs.getInt("is_origional"));
				msg.setItem_content(rs.getString("item_content"));
				int itemid = rs.getInt("item_id");
				msg.setItem_id(itemid);
				msg.setItem_title(rs.getString("item_title"));
				msg.setLatest_replication_id(rs.getInt("latest_replication_id"));
				msg.setReplyed_times(rs.getInt("replyed_times"));
				msg.setStrCompose_date(rs.getString("compose_date"));
				msg.setStrModify_date(rs.getString("modify_date"));
				if (itemid==id) {
					msg.setLevel(0);
				}else if(hasChildren(itemid)){
					msg.setLevel(1);
				}else {
					msg.setLevel(2);
				}
				msg.setFace(rs.getInt("face"));
				c.add(msg);
				msg = null;
			}
			return c;
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

	public int getCount() {
		ResultSet rs = null;
		try {
			// sql语句：
			String sql = "select count(item_id) from bbsitems where IS_ORIGIONAL=1";
			// 执行sql语句：
			 sql = new String(sql.getBytes("utf8"), "UTF-8");
			// 执行sql语句，返回一个记录集到rs：
			DBConnect.preparedStatement(sql);
			rs=DBConnect.getPreparedStatement().executeQuery();
			if (rs.next()) {
				return rs.getInt(1);
			}
			return 0;
		} catch (SQLException sqlExc) {
			sqlExc.printStackTrace();
			return 0;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			DBConnect.closeAll(null);
		}
	}

	public Collection getMessages(Collection ids) {
		if ((ids == null) || (ids.size() == 0)) {
			return null;
		}

		ResultSet rs = null;
		try {
			Collection c = new ArrayList();
			BBSMsg msg = null;
			Iterator iterator = ids.iterator();
			while (iterator.hasNext()) {
				Integer[] array = (Integer[]) iterator.next();
				String sql = "select * from bbsitems where item_id='"
						+ array[0].intValue() + "'";
				// 执行sql语句，返回一个记录集到rs：
				 sql = new String(sql.getBytes("utf8"), "UTF-8");
				DBConnect.preparedStatement(sql);
				rs=DBConnect.getPreparedStatement().executeQuery();
				msg = new BBSMsg();
				if (rs.next()) {
					msg.setLevel(array[1].intValue());
					msg.setAuthor(rs.getString("author"));
					msg.setBrowsed_times(rs.getInt("browsed_times"));
					msg.setFathers_id(rs.getInt("fathers_id"));
					msg.setIs_origional(rs.getInt("is_origional"));
					msg.setItem_content(rs.getString("item_content"));
					msg.setItem_id(rs.getInt("item_id"));
					msg.setItem_title(rs.getString("item_title"));
					msg.setLatest_replication_id(rs.getInt("latest_replication_id"));
					msg.setReplyed_times(rs.getInt("replyed_times"));
					msg.setStrCompose_date(rs.getString("compose_date"));
					msg.setStrModify_date(rs.getString("modify_date"));
					msg.setFace(rs.getInt("face"));
					c.add(msg);
				}
				msg = null;
			}
			return c;
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

	public static void main(String args[]) {
		BBSMsgMgr mgr = new BBSMsgMgr();
		Collection c = mgr.getFamilyLevel(3, 0);
		if (c != null) {
			Iterator iterator = c.iterator();
			while (iterator.hasNext()) {
				Integer[] array = (Integer[]) iterator.next();
				System.out.println(array[0] + "," + array[1]);
			}
		}
	}
}
