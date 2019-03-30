package com.nchu.service.impl;

import com.nchu.entity.Computer;
import com.nchu.mapper.ComputerMapper;
import com.nchu.service.service.ComputerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("computerService")
public class ComputerServiceImpl implements ComputerService {

	@Resource(name="computerMapper")
	private ComputerMapper computerMapper;

	@Override
	public List<Computer> queryAll() {
		return computerMapper.queryAll();
	}

	/**
	 * 查询一个机房所有机器
	 * @param hallId
	 * @return
	 */
	@Override
	public List<Computer> queryByHall(String hallId) {
		return computerMapper.queryByHall(hallId);
	}

	@Override
	public void updateHall(String hallId) {
		computerMapper.updateStatus1(hallId);
		computerMapper.updateStatus2(hallId);
	}
}
