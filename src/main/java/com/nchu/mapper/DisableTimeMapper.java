package com.nchu.mapper;

import com.nchu.entity.DisableTime;
import org.springframework.stereotype.Repository;

@Repository("disableTimeMapper")
public interface DisableTimeMapper {
	void insert(DisableTime disableTime);
	DisableTime query(DisableTime disableTime);
}
