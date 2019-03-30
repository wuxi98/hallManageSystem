package com.nchu.service.service;

import com.nchu.entity.Computer;

import java.util.List;

public interface ComputerService {

	/**
	 * 所有机器
	 */
	List<Computer> queryAll();
	/**
	 * 一个机房的机器
	 * @param hallId
	 * @return
	 */
	List<Computer> queryByHall(String hallId);

	/**
	 * 按机房更新状态
	 */
	void updateHall(String hallId);


}
