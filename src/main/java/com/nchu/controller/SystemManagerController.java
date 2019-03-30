package com.nchu.controller;

import com.nchu.entity.HallManager;
import com.nchu.entity.SystemManager;
import com.nchu.service.service.SystemManagerService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller("systemManagerController")
@RequestMapping("/systemManager")
public class SystemManagerController {

//    （1）可通过用户名密码登录系统，登录成功后使用系统各项功能
//      （2）可管理系统中的用户(即机房管理员)，包括 新增、修改、删除、查询用户信息；
//            （3）可从给定的Excel模板中导入用户信息
//（4）查看各类用户的登录日志情况，主要包括：用户名、登录时间、登录IP地址、登出系统时间

    @Autowired
    private SystemManagerService systemManagerService;


    /**
     *登录功能  如果登录成功 进入 systemManager页面
     */
    @RequestMapping("/login")
    public String login(@RequestParam("id")String saId, @RequestParam("password")String saPassword, RedirectAttributes attr){
        SystemManager sa = new SystemManager();
        sa.setSaManagerId(saId);
        sa.setSaManagerPassword(saPassword);

        System.out.println("sa:"+sa);

        if (saId==null)
            System.out.println("SystemManagerController ：账号为空");

        if (saPassword==null){
            System.out.println("SystemManagerController ：密码为空");
        }

        Boolean login = systemManagerService.login(sa);

        System.out.println(login);

        if (login){
            return "SystemManagerIndex";
        }else {

            //设置session前先清楚历史记录[前台实现]
            attr.addFlashAttribute ("msg", "用户名或密码错误！");
            System.out.println("msg:"+attr.getFlashAttributes());

        }

        return "redirect:../mstp_107_tfcrown/login.jsp";
    }


}
