package com.nchu.utils;

import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MyUtil {

	public Date toDay(String s)
	{
		Date date=null;
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd ");

		try {
			date=dateformat.parse(s);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	public Date toDate(String s)
	{
		Date date=null;

		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			date=dateformat.parse(s);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
}
