package com.nchu.mapper;

import com.nchu.entity.Computer;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("computerMapper")
public interface ComputerMapper {

	/**
	 * 所有机器
	 */
	List<Computer> queryAll();
	/**
	 * 一个机房的机器
	 * @param HallId
	 * @return
	 */
	List<Computer> queryByHall(String HallId);

	/**
	 * 检查不可用时间段表
	 * 更新状态信息，通过传入的hallId
	 */
	void updateStatus1(String hallId);
	void updateStatus2(String hallId);

	/**
	 * 返回对应机器的状态
	 */
	String queryStatus(String computerId);

	/**
	 * 设置状态为使用
	 */
	 void setUsed(String computerId);

	/**
	 * 设置为空闲
	 */
	void setFree(String computerId);
}
