package com.nchu.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.nchu.entity.HallManager;
import com.nchu.entity.Msg;
import com.nchu.service.service.HallManagerService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller("hallManagerController")
@RequestMapping("/hallManager")
public class HallManagerController {

    @Autowired
    private HallManagerService hallManagerService;


    /**
     * 增   机房管理员
     *
     * @return
     */
    @RequestMapping("/addHallManager")
    @ResponseBody
    public void addHallManager(
            @Param("hallManagerId") String hallManagerId,
            @Param("hallManagerName") String hallManagerName,
            @Param("hallManagerPassword") String hallManagerPassword
            , HttpServletRequest request,HttpServletResponse response) throws IOException {

        //int code; // 0 表示无  1 表示成功  -1 表示失败
        HallManager hallManager = new HallManager();
        hallManager.setHallManagerId(hallManagerId);
        hallManager.setHallManagerName(hallManagerName);
        hallManager.setHallManagerPassword(hallManagerPassword);

        System.out.println("增加管理员：" + hallManager);
        Boolean b;

        b = hallManagerService.insert(hallManager);


        if (b != null && b) {
            request.setAttribute("Msg1", "success");
            //表示 增加成功  返回
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().print("<h1>增加成功，3秒之后自动回到操作页面</h1>");
        } else {
            request.setAttribute("msg2", "failed");
            //表示 增加失败  返回
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().print("<h1>增加失败，3秒之后自动回到操作页面</h1>");
        }
        response.setHeader("refresh", "3;url=../mstp_107_tfcrown/SystemManagerIndex.jsp");

    }

    /**
     *登录功能  如果登录成功 进入 hallManager页面
     */
    @RequestMapping("/login")
    public String login(@RequestParam("id")String HallId, @RequestParam("password")String HallPassword,
                        RedirectAttributes attr){
        HallManager sa = new HallManager();
        sa.setHallManagerId(HallId);
        sa.setHallManagerPassword(HallPassword);

        System.out.println("sa:"+sa);

        if (HallId==null)
            System.out.println("SystemManagerController ：账号为空");

        if (HallPassword==null){
            System.out.println("SystemManagerController ：密码为空");
        }

        Boolean login = hallManagerService.login(sa);
        System.out.println(login);

        if (login){
            return "HallManagerIndex";
        }else {
            //设置session前先清楚历史记录[前台实现]
            attr.addFlashAttribute ("msg", "用户名或密码错误！");
            System.out.println("msg:"+attr.getFlashAttributes());
        }

        return "redirect:../mstp_107_tfcrown/login.jsp";
    }

    /**
     * 管理   机房管理员
     * 查询所有
     *
     * @return
     */
    @RequestMapping("/selectHallManagerAll")
    @ResponseBody
    public Msg selectHallManagerAll(@RequestParam(value = "pn", defaultValue = "1") Integer pn ) {

        int code; // 0 表示无  1 表示成功  -1 表示失败

        PageHelper.startPage(pn,3);

        List<HallManager> list = hallManagerService.queryAll();
        System.out.println("控制层：查询：" + list);

        PageInfo page = new PageInfo<>(list,3);
            for (HallManager hallManager: list)
                System.out.println("chadaodeshuju:+"+list);
        return Msg.success().add("pageInfo",page);

    }
    /**
     * 管理   机房管理员
     * 带参数查询
     *
     * @return
     */
    @RequestMapping("/selectHallManager")
    @ResponseBody
    public Msg selectHallManager(@Param("hallManagerId") String hallManagerId,
                                 @Param("hallManagerName") String hallManagerName,
            @RequestParam(value = "pn", defaultValue = "1") Integer pn ) {

        int code; // 0 表示无  1 表示成功  -1 表示失败

        HallManager hallManager = new HallManager();
        hallManager.setHallManagerId(hallManagerId);
        hallManager.setHallManagerName(hallManagerName);
        System.out.println(hallManager.toString());
        PageHelper.startPage(pn,3);

        List<HallManager> list = hallManagerService.select(hallManager);
        System.out.println("控制层：查询：" + list);

        PageInfo page = new PageInfo<>(list,3);
        for (HallManager hallManager1: list)
            System.out.println("chadaodeshuju:+"+list);
        return Msg.success().add("pageInfo",page);

    }

    /**
     * 删   机房管理员
     *
     * @return
     */
    @RequestMapping("/deleteHallManager")
    @ResponseBody
    public void deleteHallManager(
            @Param("hallManagerId") String hallManagerId,
            HttpServletRequest request,HttpServletResponse response) throws IOException {

        int code; // 0 表示无  1 表示成功  -1 表示失败
        HallManager hallManager = new HallManager();
        hallManager.setHallManagerId(hallManagerId);

        Boolean b;
        System.out.println("删除管理员：" + hallManager);
        b = hallManagerService.delete(hallManager);

        System.out.println(b);
        if (b != null && b == true) {
            request.setAttribute("Msg1", "success");
            //表示 删除成功  返回
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().print("<h1>删除成功，3秒之后自动回到操作页面</h1>");
        } else {
            request.setAttribute("msg2", "failed");
            //表示 删除失败  返回
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().print("<h1>删除失败，3秒之后自动回到操作页面</h1>");
        }
        response.setHeader("refresh", "3;url=../mstp_107_tfcrown/SystemManagerIndex.jsp");

    }

    /**
     * 改   机房管理员
     * 通过 id修改
     *
     * @return
     */
    @RequestMapping("/updateHallManager")
    @ResponseBody
    public void updateHallManager(
            @Param("hallManagerId") String hallManagerId,
            @Param("hallManagerName") String hallManagerName,
            @Param("hallManagerPassword") String hallManagerPassword
            , HttpServletRequest request,HttpServletResponse response) throws IOException {

        int code; // 0 表示无  1 表示成功  -1 表示失败
        HallManager hallManager = new HallManager();
        hallManager.setHallManagerId(hallManagerId);
        hallManager.setHallManagerName(hallManagerName);
        hallManager.setHallManagerPassword(hallManagerPassword);
        Boolean b;
        System.out.println("修改信息：" + hallManager);
        b = hallManagerService.update(hallManager);
        System.out.println(b);
        if (b != null && b == true) {
            request.setAttribute("Msg1", "success");
            //表示 更新成功  返回
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().print("<h1>更新成功，3秒之后自动回到操作页面</h1>");
        } else {
            request.setAttribute("msg2", "failed");
            //表示 更新失败  返回
            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().print("<h1>更新失败，3秒之后自动回到操作页面</h1>");
        }
        response.setHeader("refresh", "3;url=../mstp_107_tfcrown/SystemManagerIndex.jsp");
    }



}
