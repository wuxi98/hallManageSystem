package com.nchu.service.impl;

import com.nchu.entity.SystemManager;
import com.nchu.mapper.SystemManagerMapper;
import com.nchu.service.service.SystemManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("systemManagerService")
public class SystemManagerServiceImpl implements SystemManagerService {

    //    （1）可通过用户名密码登录系统，登录成功后使用系统各项功能
//      （2）可管理系统中的用户，包括 新增、修改、删除、查询用户信息；
//            （3）可从给定的Excel模板中导入用户信息
//（4）查看各类用户的登录日志情况，主要包括：用户名、登录时间、登录IP地址、登出系统时间

    @Autowired
    private SystemManagerMapper systemManagerMapper;


    /**
     * 系统管理员登录功能
     */
    @Override
    public Boolean login(SystemManager systemManager) {

        SystemManager sa = systemManagerMapper.querySystemManager(systemManager);
        System.out.println("服务:sa:"+sa);
        if (sa!=null)
            return true;
        return false;
    }


}
