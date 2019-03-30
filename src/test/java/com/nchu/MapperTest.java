package com.nchu;

import com.nchu.entity.DisableTime;
import com.nchu.mapper.DisableTimeMapper;
import com.nchu.service.impl.StudentLogServiceImpl;
import com.nchu.service.service.StudentLogService;
import org.joda.time.LocalDate;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZoneOffset;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.TimeZone;

public class MapperTest {

	/*@Resource(name="studentLogService")
	private StudentLogService studentLogService;*/

	@Test
	public void v2(){
		/*System.out.println(1);
		StudentLogService studentLogService=new StudentLogServiceImpl();
		System.out.println(2);
		//HashMap<String,Integer> map=studentLogService.getLastStudentNum("d304");
		System.out.println(3);
		for(Map.Entry<String,Integer> entry:map.entrySet())
		{
			System.out.println(entry.getKey()+":"+entry.getValue());
		}*/
		/*long nowTime =System.currentTimeMillis();
		System.out.println(3600*24*1000);
		System.out.println(nowTime%(3600*24*1000));
		System.out.println(nowTime);
		long zero = LocalDateTime.of(java.time.LocalDate.now(), LocalTime.MIN).toInstant(ZoneOffset.ofHours(8)).toEpochMilli();
		System.out.println(zero);
		long current=System.currentTimeMillis();//当前时间毫秒数
		long zero1=current/(1000*3600*24)*(1000*3600*24)-TimeZone.getDefault().getRawOffset();

		System.out.println(zero1);*/
	}
	@Test
	public void v1(){
		/*String date;
		DateFormat d1=DateFormat.getDateInstance();
		date=d1.format(new Date());
		System.out.println(date+"0");
		System.out.println("-------------------------------");
		Date date1= new Date();

		String sDateSuffix = dateformat.format(date1);
		System.out.println(sDateSuffix);*/
	}


	@Test
	public void disableTime(){
	/*	DisableTime disableTime=new DisableTime();
		disableTime.setHallId("d304");
		disableTime.setStartTime(new Date());
		disableTime.setEndTime(new Date());
		disableTime.setContent("今天想拉屎");
		disableTimeMapper.insert(disableTime);*/
	}
}
