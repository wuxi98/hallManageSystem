package com.nchu.service.service;

import com.nchu.entity.StudentLog;
import com.nchu.utils.StatisticsMessage;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

public interface StudentLogService {
	List<StudentLog> queryAll();
	String goComputer(StudentLog studentLog);
	String offComputer(String computerId);
	String chooseComputer(String computerId1,String computerId2);
	String offComputerAll(String hallId);
	String batchGoComputer(HttpServletRequest request);
	List<StatisticsMessage> getLastStudentNum(String hallId);
	HashMap<String,Integer> getStudentStudy(String clazz);
	List<StudentLog> loadStudentLog(StudentLog studentLog,String studentName,String hallId);
}
