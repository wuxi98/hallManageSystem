package com.nchu.service.impl;

import com.nchu.entity.Student;
import com.nchu.entity.StudentLog;
import com.nchu.mapper.ComputerMapper;
import com.nchu.mapper.StudentLogMapper;
import com.nchu.mapper.StudentMapper;
import com.nchu.service.service.StudentLogService;
import com.nchu.service.service.StudentService;
import com.nchu.utils.ExcelUtils;
import com.nchu.utils.StatisticsMessage;
import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZoneOffset;
import java.util.*;

@Service("studentLogService")
public class StudentLogServiceImpl implements StudentLogService {

	@Resource(name="studentLogMapper")
	private StudentLogMapper studentLogMapper;

	@Resource(name="studentMapper")
	private StudentMapper studentMapper;

	@Resource(name="computerMapper")
	private ComputerMapper computerMapper;

	@Resource(name="studentService")
	private StudentService studentService;

	/**
	 * 查询student_og表所有数据
	 * @return
	 */
	@Override
	public List<StudentLog> queryAll() {
		System.out.println("在impl中。。。。。");
		return studentLogMapper.queryAll();
	}

	/**
	 * 学生上机操作，往student_log表里插入一条数据
	 * @param studentLog
	 */
	@Override
	public String goComputer(StudentLog studentLog) {
		boolean flag=true;
		String msg="成功！";
		System.out.println(studentLog.toString());
		boolean insert = false;
		int studentStatus=studentMapper.studentStatus(studentLog.getStudentId());
		String computerStatus=computerMapper.queryStatus(studentLog.getComputerId());
		if(studentStatus>0) msg="该学生已在上机状态";
		if("使用".equals(computerStatus)) msg="该机位已被使用";
		else if("预约".equals(computerStatus)||"维修".equals(computerStatus))
		{msg="该机位不可用";flag=false;}
		if (studentStatus==0&&flag) {
			try {
				insert = studentLogMapper.insert(studentLog);
			} catch (Exception e) {
				/*数据库访问异常
				1.外键约束，数据库操作失败
				 */
				System.out.println("数据库访问异常");
				e.printStackTrace();
			}
		}



		if(!insert) msg="数据库访问失败";
		System.out.println(msg);
		return msg;
	}

	/**
	 * 学生下机操作，更新学生上机时插入的那一条数据。
	 * @param computerId
	 */
	@Override
	public String offComputer(String computerId) {
		String  msg="下机成功";
		//System.out.println("在Service层22222。。。。。。。");
		System.out.println(computerId);
			boolean is=studentLogMapper.offComputerUpdate(computerId);
			if(!is)
				msg="下机失败";
		System.out.println(msg);
		return msg;

	}

	/**
	 * 换机
	 * @param computerId1
	 * @param computerId2
	 * @return
	 */
	@Override
	public String chooseComputer(String computerId1, String computerId2) {
		String msg="";

		//System.out.println("1="+computerId1);
	//	System.out.println("2="+computerId2);
		studentLogMapper.changeComputer(computerId1,computerId2);
		computerMapper.setFree(computerId1);
		computerMapper.setUsed(computerId2);

		/*boolean downBeforeChoose=false;

		boolean upBeforeChoose=false;

		StudentLog student=studentLogMapper.queryStudentId(computerId1);
		System.out.println(student.toString());
		System.out.println();
		StudentLog studentLog=new StudentLog();
		if(student!=null){

			studentLog.setStartTime(new Date());
			studentLog.setEndTime(null);
			studentLog.setComputerId(computerId2);
			studentLog.setIsfree(student.getIsfree());
		try {
			downBeforeChoose=studentLogMapper.offComputerUpdate(computerId1);
		} catch (Exception e) {
			*//*
				下机操作。如果不存在end_time为null的记录则插入失败			 *//*
			e.printStackTrace();
		}



		upBeforeChoose=studentLogMapper.insert(studentLog);

		}
		if(downBeforeChoose&&upBeforeChoose)
			msg="换机成功？";
		else
			msg="换机失败！";*/
		return msg;
	}

	/**
	 * 对机房所有机器下机
	 * @param hallId
	 * @return
	 */
	@Override
	public String offComputerAll(String hallId) {
		String msg="";
		//System.out.println("impl的"+hallId);
		if(studentLogMapper.offComputerAll(hallId)>0)
			msg="下机成功!";
		return msg;
	}

	@Override
	public String batchGoComputer(HttpServletRequest request) {

		String hallId=request.getParameter("hallId");
		System.out.println(hallId);
		String clazz=request.getParameter("clazz");
		//System.out.println(request.getParameter("clazz"));
		String date;
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd ");
		SimpleDateFormat dateformat1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		date=dateformat.format(new Date());
		switch (clazz){
			case "1":date+="08:00:00";break;
			case "2":date+="10:00:00";break;
			case "3":date+="13:30:00";break;
			case "4":date+="15:30:00";break;
			case "5":date+="19:00:00";break;
			case "6":date+="21:00:00";break;
		}
		System.out.println(date);
		List<String> list=null;
		list=studentService.ajaxUploadExcelwx(request);
		//System.out.println(hallId);
		for (String str:list) {
			StudentLog studentLog=new StudentLog();
			//System.out.println(str.substring(6));
			String comId=hallId+"-"+str.substring(6);
			/*System.out.println("hallId="+hallId);
			System.out.println("comId="+comId);*/
			studentLog.setStudentId(str);
			studentLog.setComputerId(comId);
			studentLog.setIsfree(1);
			try {
				studentLog.setStartTime(dateformat1.parse(date));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			//System.out.println(str);
			System.out.println(studentLog.toString());
			studentLogMapper.insert(studentLog);
		}
		return null;
	}

	@Override
	public List<StatisticsMessage> getLastStudentNum(String hallId) {
		//System.out.println(4);
		HashMap<String,Integer> map=new HashMap<>();
		long nowTime =System.currentTimeMillis();
		List<StatisticsMessage> list=new ArrayList<>();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-mm-dd");
		long todayStartTime = LocalDateTime.of(java.time.LocalDate.now(), LocalTime.MIN).toInstant(ZoneOffset.ofHours(8)).toEpochMilli();
		//System.out.println(zero);
		for(int i=6;i>=0;i--){
			//System.out.println("总毫秒为="+(todayStartTime-i*1000*3600*24));
			Date date=new Date(todayStartTime-i*3600*1000*24);
			String str=sdf.format(date);
			Integer num=studentLogMapper.getStudentNum(todayStartTime/1000-i*3600*24,hallId);
			StatisticsMessage statisticsMessage=new StatisticsMessage();
			statisticsMessage.setDate(str);
			statisticsMessage.setNum(num);
			list.add(statisticsMessage);
		}
		return list;
	}

	@Override
	public HashMap<String, Integer> getStudentStudy(String clazz) {
		HashMap<String,Integer> map=new HashMap<>();
		String str;
		for (double i=0.2;i<=1;i+=0.2)
		{
			int j1= (int) (i*100);
			int j2= (int) ((i-0.2)*100);
			if(j2==0) {
				str=j2+"到"+j1+"%";
			}
			else{
				str=j2+"%到"+j1+"%";
			}

			System.out.println("str="+str);
			Integer num=studentLogMapper.getStudy(i,clazz);
			System.out.println("num="+num);
			map.put(str,num);
		}
		return map;
	}

	@Override
	public List<StudentLog> loadStudentLog(StudentLog studentLog, String studentName,String hallId) {
		System.out.println("进入服务层");
		return studentLogMapper.query(studentLog, studentName,hallId);
	}


}
