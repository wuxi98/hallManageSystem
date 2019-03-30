package com.nchu.mapper;

import com.nchu.entity.SystemManager;
import org.springframework.stereotype.Repository;

@Repository("systemManagerMapper")
public interface SystemManagerMapper {

     SystemManager querySystemManager(SystemManager saManager);
}
