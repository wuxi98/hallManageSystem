package com.nchu.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.nchu.entity.HallManager;
import com.nchu.entity.Msg;
import com.nchu.mapper.HallManagerMapper;
import com.nchu.service.service.HallManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Service("hallManagerService")
public class HallManagerServiceImpl implements HallManagerService {

    @Autowired
    private HallManagerMapper hallManagerMapper;


    /**
     * 系统管理员登录功能
     */
    @Override
    public Boolean login(HallManager hallManager) {

        HallManager sa = hallManagerMapper.query(hallManager);
        System.out.println("服务：hallManager："+sa);
        if (sa!=null)
            return true;
        return false;
    }

    /**
     * 管理   机房管理员
     * 查询所有
     *
     * @return
     */
    @Override
    public List<HallManager> queryAll() {
        return hallManagerMapper.queryAll();
    }

    @Override
    public Boolean update(HallManager hallManager) {

        return hallManagerMapper.update(hallManager);
    }

    @Override
    public Boolean delete(HallManager hallManager) {
        System.out.println("进入服务层");
        return hallManagerMapper.delete(hallManager);
    }

    @Override
    public List<HallManager> select(HallManager hallManager) {
        return hallManagerMapper.select(hallManager);
    }

    @Override
    public Boolean insert(HallManager hallManager) {

        return hallManagerMapper.add(hallManager);
    }




}
