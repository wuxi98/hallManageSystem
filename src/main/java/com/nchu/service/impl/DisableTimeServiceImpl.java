package com.nchu.service.impl;

import com.nchu.entity.DisableTime;
import com.nchu.entity.StudentLog;
import com.nchu.mapper.DisableTimeMapper;
import com.nchu.service.service.DisableTimeService;
import com.nchu.utils.ExcelUtils;
import com.nchu.utils.MyUtil;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service("disableTimeService")
public class DisableTimeServiceImpl implements DisableTimeService {

	@Resource(name="disableTimeMapper")
	private DisableTimeMapper disableTimeMapper;

	/**
	 * 增加一个记录
	 * @param request
	 * @return
	 */
	@Override
	public String add(HttpServletRequest request) {
		String hallId=request.getParameter("hallId");
		String date=request.getParameter("date");
		String clazz=request.getParameter("clazz");
		String content=request.getParameter("content");
		String startTime=date;
		String endTime=date;

		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd ");
		SimpleDateFormat dateformat1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		date=dateformat.format(new Date());
		switch (clazz){
			case "1":startTime+=" 08:00:00";endTime+=" 09:40:00";break;
			case "2":startTime+=" 10:00:00";endTime+=" 11:40:00";break;
			case "3":startTime+=" 13:30:00";endTime+=" 15:10:00";break;
			case "4":startTime+=" 15:30:00";endTime+=" 17:10:00";break;
			case "5":startTime+=" 19:00:00";endTime+=" 20:40:00";break;
			case "6":startTime+=" 21:00:00";endTime+=" 22:40:00";break;
		}
		if("fix".equals(content))
			content="维修";
		else if("order".equals(content))
			content="预约";
		DisableTime disableTime=new DisableTime();
		disableTime.setHallId(hallId);

		disableTime.setContent(content);
		try {
			disableTime.setStartTime(dateformat1.parse(startTime));
			disableTime.setEndTime(dateformat1.parse(endTime));
			disableTime.setDay(dateformat.parse(date));
		} catch (ParseException e) {
			e.printStackTrace();
		}
	//	System.out.println("在service层");
	//	System.out.println(disableTime.toString());
		disableTimeMapper.insert(disableTime);
		return null;
	}

	/**
	 * excel批量导入
	 */
	@Override
	public String batchAdd(HttpServletRequest request) {

		System.out.println("进入服务层了");
		List<DisableTime> list=null;
		MultipartHttpServletRequest mRequest = (MultipartHttpServletRequest) request;
		MultipartFile file = mRequest.getFile("file");
       /* System.out.println("文件：");
        System.out.println(file);*/
		if (file.isEmpty()) {
			try {
				throw new Exception("文件不存在！");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		InputStream in = null;
		try {
			in = file.getInputStream();
		} catch (IOException e) {
			e.printStackTrace();
		}

		//获取Excel表对象  类型是List<List<Object>>
		List<List<Object>> listObj = null;
		try {
			listObj = new ExcelUtils().getBankListByExcel(in, file.getOriginalFilename());
		} catch (Exception e) {
			e.printStackTrace();
		}

		list=new ArrayList<>();


		// date=dateformat.format(new Date());

		//遍历excel表

		MyUtil myUtil=new MyUtil();
		String startTime="",endTime="",date="";
		for (List<Object> aListObj : listObj) {
			//System.out.println("jin for");
			//System.out.println(listObj.get(i).get(1));
			DisableTime disableTime=new DisableTime();
			disableTime.setHallId(aListObj.get(0).toString());
			disableTime.setContent(aListObj.get(3).toString());
			disableTime.setDay(myUtil.toDate((String) aListObj.get(1)));
			date=(String) aListObj.get(1);
			startTime= date;
			endTime= date;
			switch (aListObj.get(2).toString()){
				case "1":startTime+=" 08:00:00";endTime+=" 09:40:00";break;
				case "2":startTime+=" 10:00:00";endTime+=" 11:40:00";break;
				case "3":startTime+=" 13:30:00";endTime+=" 15:10:00";break;
				case "4":startTime+=" 15:30:00";endTime+=" 17:10:00";break;
				case "5":startTime+=" 19:00:00";endTime+=" 20:40:00";break;
				case "6":startTime+=" 21:00:00";endTime+=" 22:40:00";break;
			}

				disableTime.setStartTime(myUtil.toDate(startTime));
				disableTime.setEndTime(myUtil.toDate(endTime));
			System.out.println(disableTime.toString());
			list.add(disableTime);

		}

		for(DisableTime disableTime:list){
			disableTimeMapper.insert(disableTime);
		}


		return null;
	}

}
