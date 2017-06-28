package com.New.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.New.entity.News;
import com.New.jdbc.DBConnect;
import com.New.util.DateUtil;

public class NewDao {
	
	/**
	 * 添加News
	 * @throws SQLException 
	 * */
	public static boolean addNew(News news) throws SQLException{
		String sql = " insert into news(title,content,create_date,type) values (?,?,?,?) ";
		//System.out.println("News:"+news.toString());
		DBConnect.preparedStatement(sql);
		DBConnect.getPreparedStatement().setString(1, news.getTitle());
		DBConnect.getPreparedStatement().setString(2, news.getContent());
		DBConnect.getPreparedStatement().setString(3, news.getCreate_date());
		DBConnect.getPreparedStatement().setString(4, news.getType());
        DBConnect.getPreparedStatement().executeUpdate();	
		return true;
	}
	
	/**
	 * 更新News
	 * @throws SQLException 
	 * */
	public static void updateNew(News news) throws SQLException{
		String sql = " update News set title=?,content=?,create_date=?,type=? where id =?";
	
		DBConnect.preparedStatement(sql);
		DBConnect.getPreparedStatement().setString(1, news.getTitle());
		DBConnect.getPreparedStatement().setString(2, news.getContent());
		DBConnect.getPreparedStatement().setString(3, news.getCreate_date());
		DBConnect.getPreparedStatement().setString(4, news.getType());
		DBConnect.getPreparedStatement().setInt(5, news.getId());
	    DBConnect.getPreparedStatement().executeUpdate();	
      
	}	
	/**
	 * 根据ID删除News
	 */
	public static boolean deleteNew(int id){
		int rows = 0;
		String sql="delete from News where id = " + id ;
		DBConnect.preparedStatement(sql);		
		try {
			rows = DBConnect.getPreparedStatement().executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnect.closeAll(null);
		}return rows > 0;
	}	
	
	/***
	 * 查找所有News
	 * @return
	 */
	//String sql="select * from News order by id desc limit ?,5";
	public static  List<News> showNew(String type){
		int page=page(type);
		List<News> list = new ArrayList<News>();
		ResultSet rs = null;
		String sql=null;
		if(page<=8)
		   sql = "select * from news  where type =? order by create_date desc limit 0,"+page;
		else
			sql = "select * from news  where type =? order by create_date desc limit 0,8";	
		DBConnect.preparedStatement(sql);
		try{
			DBConnect.preparedStatement(sql).setString(1,type);
			rs = DBConnect.getPreparedStatement().executeQuery();
			
			while(rs.next()){
				News news = new News();
				news.setId(rs.getInt(1));
				news.setTitle(rs.getString(2));
				news.setContent(rs.getString(3));
				news.setCreate_date(rs.getString(4));
				//System.out.println("time:"+rs.getString(4));
				news.setType(rs.getString(5));	
				list.add(news);
			}
			for(int i=0;i<list.size();i++){
				System.out.println("time---"+list.get(i).getCreate_date());
			}
		}catch(Exception e){
			e.printStackTrace();
			System.out.println(e.getMessage());
		}finally{
			DBConnect.closeAll(null);
		}
		
		return list;
	}
	/**
	 * 根据ID查找News
	 * @throws SQLException 
	 */
	public static News queryNewById(int id) throws SQLException{
		News news = new News();
		String sql = " select * from News  where id = ?";
		ResultSet rs = null;	
		DBConnect.preparedStatement(sql);		
		try {
			DBConnect.preparedStatement(sql).setInt(1, id);
			rs = DBConnect.getPreparedStatement().executeQuery();		
			if(rs.next()){
				news.setId(rs.getInt(1));
				news.setTitle(rs.getString(2));
				news.setContent(rs.getString(3));
				news.setCreate_date(rs.getString(4));
				news.setType(rs.getString(5));	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnect.closeAll(null);
		}return news;
	}
	/**
	 * 各类的分页显示--
	 */
	public static List<News> showByTypePage(int page,String type){
		/*int pagecount=page(type);
		if(pagecount>8)*/
		if(type.contains("1"))
			type="团委";
		if(type.contains("2"))
			type="学生会";
		if(type.contains("3"))
			type="通知公告";
		if(type.contains("4"))
			type="学专会";
		if(type.contains("5"))
			type="爱心使者团";
		if(type.contains("6"))
			type="失物招领";
		if(type.contains("7"))
			type="教室借用";		
		ResultSet resultSet=null;
		List<News> list=new ArrayList<News>();
		//System.out.println("page:----"+page);
		//System.out.println("type:----"+type);
		String sql="select * from News where type='"+type+"' order by id desc limit "+page+",6";
		DBConnect.preparedStatement(sql);
		try{
			resultSet=DBConnect.getPreparedStatement().executeQuery();
			while(resultSet.next()){
				News news =new News();
				news.setId(resultSet.getInt("id"));
				news.setTitle(resultSet.getString("title"));
				news.setContent(resultSet.getString("content"));
				news.setCreate_date(resultSet.getString("create_date"));
				news.setType(resultSet.getString("type"));
				list.add(news);
			}
		}catch(SQLException e){
			e.printStackTrace();			
		}finally{
			DBConnect.closeAll(null);
		}
		return list;	
	}	
	/**
	 * 各类的标题对应内容详细信息
	 * 
	 * */
	public static News showByTypeTitle(int id){
		ResultSet resultSet=null;
		String sql="select * from News where id="+id;
		News news =new News();
		DBConnect.preparedStatement(sql);
		try{
			resultSet=DBConnect.getPreparedStatement().executeQuery();
			while(resultSet.next()){
		
				news.setId(resultSet.getInt("id"));
				news.setTitle(resultSet.getString("title"));
				
				news.setContent(resultSet.getString("content"));
				news.setCreate_date(resultSet.getString("create_date"));
				news.setType(resultSet.getString("type"));
			}
		}catch(SQLException e){
			e.printStackTrace();			
		}finally{
			DBConnect.closeAll(null);
		}
		System.out.println("news_title----"+news.getTitle());
		return news;
		
	}
	
	/**
	 * 分页显示News
	 * */
	public static List<News> showByPage(int page){
			
		ResultSet resultSet=null;
		List<News> list=new ArrayList<News>();
		String sql="select * from News order by id desc limit ?,5";
		//分页查询的SQL语句，末页显示5条记录
		DBConnect.preparedStatement(sql);
		try{
		    DBConnect.preparedStatement(sql).setInt(1, page);
			resultSet=DBConnect.getPreparedStatement().executeQuery();
			while(resultSet.next()){
				News news =new News();
				news.setId(resultSet.getInt("id"));
				news.setTitle(resultSet.getString("title"));
				news.setContent(resultSet.getString("content"));
				news.setCreate_date(resultSet.getString("create_date"));
				news.setType(resultSet.getString("type"));
				list.add(news);
			}
		}catch(SQLException e){
			e.printStackTrace();			
		}finally{
			DBConnect.closeAll(null);
		}
		return list;	
	}	
	public static int page(String type){  
	    ResultSet resultSet=null;
		int count=0;
		int maxpage=0;
		String sql="select count(*) from News where type=?";//查询总记录数的SQL语句
			
		try{
			DBConnect.preparedStatement(sql);
			DBConnect.preparedStatement(sql).setString(1, type);
			resultSet=DBConnect.getPreparedStatement().executeQuery();
			while(resultSet.next())
				count=resultSet.getInt(1);//如果结果集存在，记录数初始化值为1
				
			}	
		catch(SQLException e){
			e.printStackTrace();
		}finally{
			DBConnect.closeAll(null);	
		}
		return count;
	}
	public static int maxpage(){  //获取最大页数查询
	    ResultSet resultSet=null;
		int count=0;
		int maxpage=0;
		String sql="select count(*) from News";//查询总记录数的SQL语句
			
		try{
			DBConnect.preparedStatement(sql);
			resultSet=DBConnect.getPreparedStatement().executeQuery();
			while(resultSet.next()){
				count=resultSet.getInt(1);//如果结果集存在，记录数初始化值为1
				
			}	
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			DBConnect.closeAll(null);	
		}
		maxpage=(count+4)/5;//最大页数等于总记录条数加上4，在除以5
		return maxpage;
	}
	/**
	 * 获取用户名对应的密码
	 * */	
public static String getPassword(String strUserName, String strEmail) {
	ResultSet rs = null;
	try {
		// sql语句：
		String sql = "select passWord from userinfo where userName = '"
				+ strUserName+"'";
		// 执行sql语句：
		DBConnect.preparedStatement(sql);
		rs=DBConnect.getPreparedStatement().executeQuery();
		if (rs.next()) {
			return rs.getString("passWord");
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


 }

