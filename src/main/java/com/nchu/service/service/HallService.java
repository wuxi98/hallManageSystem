package com.nchu.service.service;

import com.nchu.entity.DisableTime;
import com.nchu.entity.Hall;

import java.util.List;

public interface HallService {
	/**
	 * 给机房不可用时间段表插入数据
	 * @param disableTime
	 */
	void setDisableTime(DisableTime disableTime);

	/**
	 *查询所有
	 * @return
	 */
	List<Hall> query();

	List<String> queryHallId();

	boolean setHallInfo( Hall hall);

	boolean deleteHallInfo( String hallId);

	boolean updateHallInfo( Hall hall);

	List<Hall> queryHallInfo(Hall hall);
}
