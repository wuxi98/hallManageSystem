package com.nchu.service.impl;

import com.nchu.entity.DisableTime;
import com.nchu.entity.Hall;
import com.nchu.mapper.DisableTimeMapper;
import com.nchu.mapper.HallMapper;
import com.nchu.service.service.HallService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
@Service("hallService")
public class HallServiceImpl implements HallService {
	@Autowired
	@Qualifier("hallMapper")
	private HallMapper hallMapper;

	@Resource(name="disableTimeMapper")
	private DisableTimeMapper disableTimeMapper;

	/**
	 * 给机房不可用时间段表插入数据
	 * @param disableTime
	 */
	@Override
	public void setDisableTime(DisableTime disableTime) {
		disableTimeMapper.insert(disableTime);
	}

	@Override
	public List<Hall> query() {

		return hallMapper.queryAll();
	}

	@Override
	public List<String> queryHallId() {
		return hallMapper.selectAllHallId();
	}

	@Override
	public boolean setHallInfo(Hall hall) {
		return hallMapper.insert(hall);
	}

	@Override
	public boolean deleteHallInfo(String hallId) {
		return hallMapper.delete(hallId);
	}

	@Override
	public boolean updateHallInfo(Hall hall) {
		System.out.println("进入service层");
		return hallMapper.update(hall);
	}

	@Override
	public List<Hall> queryHallInfo(Hall hall) {
		return hallMapper.query(hall);
	}

}
