package com.nchu.controller;

import com.nchu.entity.DisableTime;
import com.nchu.service.service.DisableTimeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/disable")
public class DisableController {

	@Resource(name="disableTimeService")
	private DisableTimeService disableTimeService;

	@RequestMapping("/add")
	public String add(HttpServletRequest request){
		String hallId=request.getParameter("hallId");
		String date=request.getParameter("date");
		String clazz=request.getParameter("clazz");
		String content=request.getParameter("content");
		DisableTime disableTime=new DisableTime();
		System.out.println("hallId="+hallId);
		System.out.println("date="+date);
		System.out.println("clazz="+clazz);
		System.out.println("content="+content);
		disableTimeService.add(request);
		return "hallManage";
	}

	@RequestMapping("/excelAdd")
	public String excelAdd(HttpServletRequest request)
	{
		disableTimeService.batchAdd(request);
		return "hallManage";
	}
}
