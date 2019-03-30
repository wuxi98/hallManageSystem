package com.nchu.service.service;

import com.nchu.entity.SystemManager;
import org.springframework.stereotype.Service;

public interface SystemManagerService {

    //    （1）可通过用户名密码登录系统，登录成功后使用系统各项功能
//      （2）可管理系统中的用户，包括 新增、修改、删除、查询用户信息；
//            （3）可从给定的Excel模板中导入用户信息
//（4）查看各类用户的登录日志情况，主要包括：用户名、登录时间、登录IP地址、登出系统时间

    /**
     * 系统管理员登录
     */
    Boolean login(SystemManager systemManager);
}
