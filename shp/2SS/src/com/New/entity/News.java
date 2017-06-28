package com.New.entity;
public class News {
	private int id;
	private String title;
	private String content;
	private  String create_date;
	private String type;
	 public  int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		public String getCreate_date() {
			return create_date;
		}
		public void setCreate_date(String create_date) {
			this.create_date = create_date;
		}
		public News(String title, String content, String create_date,String type) {
			super();
			this.title = title;
			this.content = content;
			this.setCreate_date(create_date);
			this.type = type;
		}
		public News() {
			super();
			// TODO Auto-generated constructor stub
		}
		public String toString(){
			return "title:"+title+"content:"+content+"create_date:"+getCreate_date()+"type:"+type;
		}
		
		
		
		
}
