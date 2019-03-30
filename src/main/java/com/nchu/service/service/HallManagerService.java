package com.nchu.service.service;

import com.nchu.entity.HallManager;

import java.util.List;

public interface HallManagerService {

    Boolean login(HallManager hallManager);
    List<HallManager> queryAll();
    Boolean delete(HallManager hallManager);
    Boolean update(HallManager hallManager);
    Boolean insert(HallManager hallManager);
    List<HallManager> select(HallManager hallManager);

}
