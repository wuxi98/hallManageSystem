package com.nchu.mapper;

import com.nchu.entity.Hall;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository("hallMapper")
public interface HallMapper {
	List<Hall> queryAll();
	List<String> selectAllHallId();


	boolean insert(Hall hall);
	boolean update(Hall hall);

	boolean delete(String hallId);

	List<Hall> query(Hall hall);



}
