package com.nchu.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.nchu.entity.Computer;
import com.nchu.service.service.ComputerService;
import com.nchu.entity.Msg;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/computer")
public class ComputerController {

	@Resource(name="computerService")
	private ComputerService computerService;

	/**
	 * all
	 */

	@RequestMapping("allComputer")
	@ResponseBody
	public Msg allComputer(@RequestParam(value="pn",defaultValue="1")Integer pn, Model model ){
		PageHelper.startPage(pn,5);

		List<Computer> list=computerService.queryAll();
		PageInfo page = new PageInfo<>(list,5);

		return Msg.success().add("pageInfo",page);
	}
	/**
	 * 按机房号返回该机房所有机器信息
	 * @param request
	 * @return
	 */
	@RequestMapping("/getComputer")
	@ResponseBody
	public List<Computer> getComputer(HttpServletRequest request){
		//computerService.updateHall(request.getParameter("hallId"));

		return computerService.queryByHall(request.getParameter("hallId"));
	}

	/**
	 * 按机房号更新该机房状态
	 */
	@RequestMapping("/update")
	@ResponseBody
	public void updateHall(HttpServletRequest request){
		computerService.updateHall(request.getParameter("hallId"));
	}
}
