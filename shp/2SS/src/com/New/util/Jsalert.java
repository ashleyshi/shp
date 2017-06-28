package com.New.util;

public class Jsalert {

	/**
	 * 显示默认提示，回退go(-1)页面
	 * @return
	 */
	public static String  operateFailed(){
		StringBuffer buffer = new StringBuffer();
		buffer.append("<script type=\"text/javascript\">");
		buffer.append("alert(\"操作失败\");");
		buffer.append("window.history.go(-1);");
		buffer.append("</script>");
		return buffer.toString();
	}
	
	
	public static String  operateFailed(String msg){
		StringBuffer buffer = new StringBuffer();
		buffer.append("<script type=\"text/javascript\">");
		buffer.append("alert(\""+msg+"\");");
		buffer.append("window.history.go(-1);");
		buffer.append("</script>");
		return buffer.toString();
	}
	
	
	public static String operateFailedOnlyMsg(String msg){
		StringBuffer buffer = new StringBuffer();
		buffer.append("<script type=\"text/javascript\">");
		buffer.append("alert(\""+msg+"\");");
		buffer.append("</script>");
		
		return buffer.toString();
	}
	
	/**
	 * 显示提示信息，跳转指定url
	 * @param msg
	 * @param url
	 * @return
	 */
	public static String  operateFailed(String msg,String url){
		StringBuffer buffer = new StringBuffer();
		buffer.append("<script type=\"text/javascript\">");
		buffer.append("alert(\""+msg+"\");");
		buffer.append("window.location.href=\""+url+"\";");
		buffer.append("</script>");
		return buffer.toString();
	}
	
	/**
	 * 显示提示信息，跳转指定url
	 * @param msg
	 * @param url
	 * @return
	 */
	public static String  confirm(String msg,String url1,String url2){
		StringBuffer buffer = new StringBuffer();
		buffer.append("<script type=\"text/javascript\">");
		buffer.append("if(confirm(\""+msg+"\")){");
		buffer.append("window.location.href=\""+url1+"\";");
		buffer.append("}else{");
		buffer.append("window.location.href=\""+url2+"\";");
		buffer.append("}");
		buffer.append("</script>");
		return buffer.toString();
	}
	/**
	 * 显示成功信息,并跳转到指定url
	 * @param msg
	 * @param url
	 * @return
	 */
	public static String operateSuccess(String msg,String url){
		StringBuffer buffer = new StringBuffer();
		buffer.append("<script type=\"text/javascript\">");
		buffer.append("alert(\""+msg+"\");");
		buffer.append("window.location.href=\""+url+"\";");
		buffer.append("</script>");
		return buffer.toString();
	}
}
