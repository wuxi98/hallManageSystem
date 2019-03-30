package com.nchu.service.service;

import com.nchu.entity.HallManagerLog;
import com.nchu.entity.StudentLog;

import java.util.List;

public interface HallManagerLogService {
	List<HallManagerLog> loadHallManagerLog(HallManagerLog hallManagerLog, String hallManagerName);
}
