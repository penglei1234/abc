package com.tool;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	
	public static String toString(Date d){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss ");
		
		String str = sdf.format(d);
		
		return str;
	}
	
	public static String toString1(Date d){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		
		String str = sdf.format(d);
		
		return str;
	}
	
	public static Date toDate(String str){
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date d = null;
		try {
			d = sdf.parse(str);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		return d;
		
	}
	public static String toAllString(Date d){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		
		String str = sdf.format(d);
		
		return str;
	}
	
	
	
	
}
