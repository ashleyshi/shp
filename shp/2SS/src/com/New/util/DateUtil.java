package com.New.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	
	/**
	 * java.util.Date 转化为 java.sql.Date
	 * @param date
	 * @return
	 */
	public static java.sql.Date getSqlDate(Date date){
		return new java.sql.Date(date.getTime());
	}
	
	/**
	 * 格式化日期时间
	 * @param date
	 * @return
	 */
	public static String formatDateTime(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(date).toString();
	}
	
	public static Date StringToDate(String time) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if("".equals(time)){
			return sdf.parse((new Date()).toString());
		}
			return sdf.parse(time);

	}
	
	public static Date StringToDateYM(String time) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		if("".equals(time)){
			return sdf.parse((new Date()).toString());
		}
			return sdf.parse(time);

	}
	
	/**
	 * 格式化日期
	 * @param date
	 * @return
	 */
	public static String formatDate(Date date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(date).toString();
	}
	
	public static String getDateForIndex(){
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
		return sdf.format(date).toString();
	}
	
	
	
}
