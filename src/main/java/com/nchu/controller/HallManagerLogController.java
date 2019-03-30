package com.nchu.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.nchu.entity.HallManagerLog;
import com.nchu.entity.Msg;
import com.nchu.entity.StudentLog;
import com.nchu.service.service.HallManagerLogService;
import com.nchu.service.service.HallManagerService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

@Controller("hallManagerLogController")
@RequestMapping("/hallManagerLog")
public class HallManagerLogController {

	@Autowired
	private HallManagerLogService hallManagerLogService;
	/**
	 * 各类参数查询登录日志
	 * 依据需求输入
	 * @return
	 */
	@RequestMapping("/loadManagerLog")
	@ResponseBody
	public  Msg loadStudentLog(@Param("hallManagerId")String hallManagerId,
							   @Param("hallManagerName")String hallManagerName,
							   @Param("startTime")String startTime,
							   @Param("endTime")String finishTime,
							   @RequestParam(value = "pn", defaultValue = "1") Integer pn
	) throws ParseException {

		HallManagerLog hallManagerLog = new HallManagerLog();
		hallManagerLog.setHallManagerId(hallManagerId);

		System.out.println(hallManagerLog.toString());
		SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd HH:mm:ss" );
		if (finishTime!=null&&startTime!=null) {
			if (!(finishTime.equals("yyyy-mm-dd hh:mm:ss")||finishTime.equals("")||startTime.equals("yyyy-mm-dd hh:mm:ss")||startTime.equals(""))){
				System.out.println("判断时间进入");
				hallManagerLog.setFinishTime(sdf.parse(finishTime));
				hallManagerLog.setStartTime(sdf.parse(startTime));
			}
		}

		System.out.println("接收到的数据：name:"+hallManagerName);
		PageHelper.startPage(pn, 5);

		List<HallManagerLog> list = hallManagerLogService.loadHallManagerLog(hallManagerLog,hallManagerName);
		for (HallManagerLog hallManagerLog1:list)
			System.out.println(hallManagerLog1.toString());

		System.out.println("控制层：查询：" + list);

		PageInfo page = new PageInfo<>(list, 5);
		//list 转 json
		//return  list;
		return Msg.success().add("pageInfo", page);

		//model.addAttribute("studentLogs",list);
//		return "";//loadStudentLog
	}
}
