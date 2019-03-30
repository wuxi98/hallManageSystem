package com.nchu.mapper;

import com.nchu.entity.HallManager;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("hallManagerMapper")
public interface HallManagerMapper {

	HallManager query(HallManager hallManager);
	List<HallManager> queryAll();

	Boolean delete(HallManager hallManager);

	Boolean update(HallManager hallManager);

	List<HallManager> select(HallManager hallManager);

	Boolean add(HallManager hallManager);
}
