package com.nchu.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.nchu.entity.Hall;
import com.nchu.entity.Msg;
import com.nchu.service.service.HallService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.nchu.entity.DisableTime;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/hall")
public class HallController {

	@Autowired
	private HallService hallService;


	/**
	 * 增加机房信息操作
	 *
	 * @param hallId
	 * @param row
	 * @param col
	 * @param computerNumber
	 * @param leader
	 * @param hardwareInfo
	 * @param softwareInfo
	 */
	@RequestMapping("/insertHallInfo")
	@ResponseBody
	public void setHallInfo(@Param("hallId") String hallId,
							@Param("row") String row,
							@Param("col") String col,
							@Param("computerNumber") String computerNumber,
							@Param("leader") String leader,
							@Param("hardwareInfo") String hardwareInfo,
							@Param("softwareInfo") String softwareInfo,
							HttpServletRequest request, HttpServletResponse response) throws IOException {

		Hall hall = new Hall();
		hall.setHallId(hallId);
		if (!row.equals("")||row==null)
			hall.setRow(Integer.valueOf(row));
		else
			hall.setRow(0);
		if (!col.equals("")||col==null)
			hall.setCol(Integer.valueOf(col));
		else
			hall.setCol(0);
		if (!computerNumber.equals("")||computerNumber==null)
			hall.setComputerNumber(Integer.valueOf(computerNumber));
		else
			hall.setComputerNumber(0);
		hall.setHardwareInfo(hardwareInfo);
		hall.setSoftwareInfo(softwareInfo);
		hall.setLeader(leader);
		System.out.println("控制层："+hall);
		int code; // 0 失败  1 成功
		Boolean b = false;
		try {
			b = hallService.setHallInfo(hall);
		} catch (Exception e) {
			System.out.println("主外键冲突");
			e.printStackTrace();
		}
		if (b != null && b == true) {
			request.setAttribute("msg2", "success");
			//表示 更新成功  返回
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print("<h1>增加成功，3秒之后自动回到操作页面</h1>");
		} else {
			request.setAttribute("msg2", "failed");
			//表示 更新成功  返回
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print("<h1>增加失败，3秒之后自动回到操作页面</h1>");
		}
		response.setHeader("refresh", "3;url=../mstp_107_tfcrown/SystemManagerHall.jsp");

	}

	/**
	 * 修改机房信息操作
	 *按id修改
	 * @param hallId
	 * @param row
	 * @param col
	 * @param computerNumber
	 * @param leader
	 * @param hardwareInfo
	 * @param softwareInfo
	 */
	@RequestMapping("/updateHallInfo")
	@ResponseBody
	public void updateHallInfo(@Param("hallId") String hallId,
							   @Param("row") String row,
							   @Param("col") String col,
							   @Param("computerNumber") String computerNumber,
							   @Param("leader") String leader,
							   @Param("hardwareInfo") String hardwareInfo,
							   @Param("softwareInfo") String softwareInfo,
							   HttpServletRequest request, HttpServletResponse response) throws IOException {

		Hall hall = new Hall();
		hall.setHallId(hallId);
		if (!row.equals("")||row==null)
			hall.setRow(Integer.valueOf(row));
		else
			hall.setRow(0);
		if (!col.equals("")||col==null)
			hall.setCol(Integer.valueOf(col));
		else
			hall.setCol(0);
		if (!computerNumber.equals("")||computerNumber==null)
			hall.setComputerNumber(Integer.valueOf(computerNumber));
		else
			hall.setComputerNumber(0);
		hall.setHardwareInfo(hardwareInfo);
		hall.setSoftwareInfo(softwareInfo);
		hall.setLeader(leader);
		System.out.println("更新信息："+hall);
		int code; // 0 失败  1 成功
		Boolean b = hallService.updateHallInfo(hall);
		System.out.println(b);
		if (b != null || b) {
			request.setAttribute("msg2", "success");
			//表示 更新成功  返回
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print("<h1>更新成功，3秒之后自动回到操作页面</h1>");
		} else {
			request.setAttribute("msg2", "failed");
			//表示 更新成功  返回
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print("<h1>更新失败，3秒之后自动回到操作页面</h1>");
		}
		response.setHeader("refresh", "3;url=../mstp_107_tfcrown/SystemManagerHall.jsp");
	}

	/**
	 * 删除机房信息操作
	 *按照机房id删除
	 * @param hallId

	 */
	@RequestMapping("/deleteHallInfo")
	@ResponseBody
	public void deleteHallInfo(@Param("hallName") String hallId,
							   HttpServletRequest request, HttpServletResponse response) throws IOException {

		int code; // 0 失败  1 成功 2 id是空的，不能执行
		Boolean b = hallService.deleteHallInfo(hallId);
		if (b != null || b) {
			request.setAttribute("msg2", "success");
			//表示 更新成功  返回
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print("<h1>删除成功，3秒之后自动回到操作页面</h1>");
		} else {
			request.setAttribute("msg2", "failed");
			//表示 更新成功  返回
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().print("<h1>删除失败，3秒之后自动回到操作页面</h1>");
		}
		response.setHeader("refresh", "3;url=../mstp_107_tfcrown/SystemManagerHall.jsp");
	}

	/**
	 * 查询机房信息操作
	 *
	 * @param hallId
	 * @param computerNumber
	 * @param leader
	 */
	@RequestMapping("/queryHallInfo")
	@ResponseBody
	public Msg queryHallInfo(@Param("hallId") String hallId,
								@Param("computerNumber") String computerNumber,
								@Param("leader") String leader,
							 	@RequestParam(value = "pn", defaultValue = "1") Integer pn
								) {


		Hall hall = new Hall();
		hall.setHallId(hallId);
		if (!computerNumber.equals(""))
			hall.setComputerNumber(Integer.valueOf(computerNumber));
		hall.setLeader(leader);
		System.out.println("接受到的数据"+hall.toString());
		PageHelper.startPage(pn, 5);
		int code; // 0 失败  1 成功
		List<Hall> list = hallService.queryHallInfo(hall);
		if (list != null) {
			code = 1;
			System.out.println("查询成功");
		} else {
			code = 0;
			System.out.println("插入失败");
		}

		System.out.println("查询到的：");
		for(Hall hall1:list)
			System.out.println(hall1.toString());
		PageInfo page = new PageInfo<>(list, 5);
		//list 转 json
		return Msg.success().add("pageInfo", page);
	}

	@RequestMapping("/getHallId")
	@ResponseBody
	public List<String> getAllHallId()
	{
		return hallService.queryHallId();
	}

}
