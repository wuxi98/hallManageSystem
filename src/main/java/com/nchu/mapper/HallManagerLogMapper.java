package com.nchu.mapper;

import com.nchu.entity.HallManagerLog;
import com.nchu.entity.StudentLog;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("hallManagerLogMapper")
public interface HallManagerLogMapper {
	List<HallManagerLog> loadHallManagerLog(@Param("hallManagerLog") HallManagerLog hallManagerLog, @Param("hallManagerName") String hallManagerName);
}
