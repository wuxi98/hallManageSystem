package com.nchu.service.impl;

import com.nchu.entity.HallManagerLog;
import com.nchu.mapper.HallManagerLogMapper;
import com.nchu.service.service.HallManagerLogService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("hallManagerLogService")
public class HallManagerLogServiceImpl implements HallManagerLogService {

	@Resource(name="hallManagerLogMapper")
	private HallManagerLogMapper hallManagerLogMapper;


	@Override
	public List<HallManagerLog> loadHallManagerLog(HallManagerLog hallManagerLog, String hallManagerName) {
		return hallManagerLogMapper.loadHallManagerLog(hallManagerLog,hallManagerName);
	}
}
