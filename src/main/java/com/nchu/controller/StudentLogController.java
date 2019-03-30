package com.nchu.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.nchu.entity.Msg;
import com.nchu.entity.Student;
import com.nchu.entity.StudentLog;
import com.nchu.mapper.StudentLogMapper;
import com.nchu.service.impl.StudentLogServiceImpl;
import com.nchu.service.service.StudentLogService;
import com.nchu.service.service.StudentService;
import com.nchu.utils.StatisticsMessage;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/studentLog")
public class StudentLogController {

	/**
	 * 获得学生日志服务bean
	 */
	@Resource(name="studentLogService")
	private StudentLogService studentLogService;

	@Resource(name="studentService")
	private StudentService studentService;


	/**
	 * 自由上机
	 * 一个studentLog参数
	 * 获取当前时间作为上机时间
	 * @return
	 */
	@RequestMapping("/goComputer")
	public String  goComputer(HttpServletRequest request){

			StudentLog studentLog=new StudentLog();
		studentLog.setStudentId(request.getParameter("studentId"));
		studentLog.setComputerId(request.getParameter("computerId"));
		studentLog.setStartTime(new Date());
		studentLog.setIsfree(0);


		System.out.println("在studentLog控制器中。。。。");
		System.out.println(studentLog.toString());


		studentLogService.goComputer(studentLog);
		return "redirect:/mstp_107_tfcrown/hall.jsp";
		//return studentLogService.queryAll();
		//return studentLogMapper.queryAll();
	}

	/**
	 * 自由下机方法
	 * 一个studentLog参数，获得当前时间作为下机时间
	 */
	@RequestMapping("/offComputer")
	public String offComputer(@RequestParam(value="computerId")String computerId,
							  HttpServletResponse response){


		response.setContentType("application/json;charset=UTF-8");
		studentLogService.offComputer(computerId);
		return "redirect:/mstp_107_tfcrown/hall.jsp";
	}

	/**
	 * 自由换机方法，
	 * 一个studentLog参数代表对应上机记录
	 * 一个computerId代表要换机的id
	 */
	@RequestMapping("/chooseComputer")
	public String chooseComputer(HttpServletRequest request){

		String computerId1=request.getParameter("computerId1");
		String computerId2=request.getParameter("computerId2");
		studentLogService.chooseComputer(computerId1,computerId2);
		return "redirect:/mstp_107_tfcrown/hall.jsp";
		//return studentLogService.queryAll();
		//return studentLogMapper.queryAll();
	}

	/**
	 * 对一个机房所有机器下机操作
	 */
	@RequestMapping("/offComputerAll")
	public String offComputerAll(HttpServletRequest request){
		//System.out.println("控制层的"+hallId);
		request.setAttribute("msg",studentLogService.offComputerAll(request.getParameter("hallId")));

		return "redirect:/mstp_107_tfcrown/hall.jsp";
	}

	/**
	 * 批量学生上机
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/ajaxUpload.do")
	public String ajaxUploadExcel(HttpServletRequest request) {
		System.out.println("文件控制层");
		System.out.println(request.getParameter("file"));
		studentLogService.batchGoComputer(request);
		return "redirect:/mstp_107_tfcrown/hall.jsp";
	}

	/**
	 * 各类参数查询登录日志
	 * 依据需求输入
	 * @param studentId
	 * @param studentName
	 * @param startTime
	 * @return
	 */
	@RequestMapping("/loadStudentLog")
	@ResponseBody
	public  Msg loadStudentLog(@Param("studentId")String studentId,
							   @Param("studentName")String studentName,
							   @Param("startTime")String startTime,
							   @Param("endTime")String endTime,
							   @Param("hallId")String hallId,
							   @Param("computerId")String computerId,
							   @RequestParam(value = "pn", defaultValue = "1") Integer pn
							  ) throws ParseException {

		StudentLog studentLog = new StudentLog();
		studentLog.setStudentId(studentId);
		studentLog.setComputerId(computerId);
		System.out.println(studentLog.toString());
		SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd HH:mm:ss" );
		if (endTime!=null&&startTime!=null) {
			if (!(endTime.equals("yyyy-mm-dd hh:mm:ss")||endTime.equals("")||startTime.equals("yyyy-mm-dd hh:mm:ss")||startTime.equals(""))){
				System.out.println("判断时间进入");
				studentLog.setEndTime(sdf.parse(endTime));
				studentLog.setStartTime(sdf.parse(startTime));
			}
		}

		System.out.println("接收到的数据：studentLog:"+studentLog);
		System.out.println(hallId+" student:"+studentName);
		PageHelper.startPage(pn, 5);

		List<StudentLog> list = studentLogService.loadStudentLog(studentLog,studentName,hallId);
		for (StudentLog studentLog1:list)
			System.out.println(studentLog1.toString());

		System.out.println("控制层：查询：" + list);

		PageInfo page = new PageInfo<>(list, 5);
		//list 转 json
		//return  list;
		return Msg.success().add("pageInfo", page);

		//model.addAttribute("studentLogs",list);
//		return "";//loadStudentLog
	}
	@RequestMapping("/getStudentNum")
	@ResponseBody
	public List<StatisticsMessage> getStudentNum(@Param("hallId")String hallId){

		return studentLogService.getLastStudentNum(hallId);
	}

	@RequestMapping("/getStudentStudy")
	@ResponseBody
	public List<StatisticsMessage> getStudentStudy(@Param("clazz")String clazz){

		HashMap<String,Integer> map=studentLogService.getStudentStudy(clazz);
		List<StatisticsMessage> list=new ArrayList<>();
		for(Map.Entry<String,Integer> entry:map.entrySet())
		{
			StatisticsMessage statisticsMessage=new StatisticsMessage();
			statisticsMessage.setDate(entry.getKey());
			statisticsMessage.setNum(entry.getValue());
			list.add(statisticsMessage);

		}

		return list;
	}
}
