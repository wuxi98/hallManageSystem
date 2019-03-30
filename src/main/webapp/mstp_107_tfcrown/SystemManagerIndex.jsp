<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/1/8
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0;"/>
    <title>Crown - premium responsive admin template for backend systems</title>
    <%
        //pageContext.setAttribute("APP_PATH", request.getContextPath());
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://"
                + request.getServerName() + ":" + request.getServerPort()
                + path + "/" + "mstp_107_tfcrown/";
        System.out.println(basePath);
        //pageContext.setAttribute("APP_PATH", request.getContextPath());
        System.out.println(path);
    %>
    <link href="<%=basePath %>css/main.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="<%=basePath %>js/jquery.min.js"></script>

</head>
<body>

<div id="leftSide">
    <div class="logo"><a href="index.html"><img src="<%=basePath %>images/logo.png" alt=""/></a></div>

    <div class="sidebarSep mt0"></div>
    <div class="genBalance">
        <a href="#" title="" class="amount">
            <span>今天是</span>
            <span class="balanceAmount" id="now_time">2019年&nbsp;1月17日</span>
        </a>
        <a href="#" title="" class="amChanges">
            <strong class="sPositive">星期四</strong>
        </a>
    </div>

    <script type="text/javascript">
        var da = new Date();
        var year = da.getFullYear()+'年';
        var month = da.getMonth()+1+'月';
        var date = da.getDate()+'日';
        //给span标签赋值：
        $('#now_time').text([year,month,date].join(' '));
    </script>
    <div class="sidebarSep"></div>

    <ul id="menu" class="nav">
        <li class="dash"><a href="../mstp_107_tfcrown/SystemManagerIndex.jsp" title=""  class="active"><span>机房管理员管理</span></a></li>
        <li class="charts"><a href="../mstp_107_tfcrown/hall.jsp" title=""><span>上下机</span></a></li>
        <li class="charts"><a href="../mstp_107_tfcrown/hallManage.jsp" title=""><span>时间段设置</span></a></li>
        <li class="ui"><a href="../mstp_107_tfcrown/SystemManagerStudent.jsp" title=""><span>学生管理</span></a></li>
        <li class="files"><a href="../mstp_107_tfcrown/SystemManagerCheck.jsp" title=""><span>机房上机情况查询</span></a></li>
        <li class="files"><a href="../mstp_107_tfcrown/SystemManagerHall.jsp" title=""><span>机房管理</span></a></li>
    </ul>
</div>

<div id="rightSide">
    <!-- Top fixed navigation -->
    <div class="topNav">
        <div class="wrapper">
            <div class="welcome"><a href="#" title=""><img src="<%=basePath %>images/userPic.png" alt=""/></a><span>Howdy, Eugene!</span>
            </div>
            <div class="userNav">
                <ul>
                    <li><a href="#" title=""><img src="<%=basePath %>images/icons/topnav/settings.png" alt=""/><span>Update</span></a>
                    </li>
                    <li><a href="login.html" title=""><img src="<%=basePath %>images/icons/topnav/logout.png"
                                                           alt=""/><span>Logout</span></a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <!-- Responsive header -->
    <div class="resp">
        <div class="respHead">
            <a href="index.html" title=""><img src="<%=basePath %>images/loginLogo.png" alt=""/></a>
        </div>

        <div class="cLine"></div>
        <div class="smalldd">
            <span class="goTo"><img src="<%=basePath %>images/icons/light/images2.png" alt=""/>Gallery</span>
            <ul class="smallDropdown">
                <li><a href="index.html" title=""><img src="<%=basePath %>images/icons/light/home.png" alt=""/>Dashboard</a>
                </li>
                <li><a href="charts.html" title=""><img src="<%=basePath %>images/icons/light/stats.png" alt=""/>Statistics
                    and charts</a></li>
                <li><a href="#" title="" class="exp"><img src="<%=basePath %>images/icons/light/pencil.png" alt=""/>Forms
                    stuff<strong>4</strong></a>
                    <ul>
                        <li><a href="forms.html" title="">Form elements</a></li>
                        <li><a href="form_validation.html" title="">Validation</a></li>
                        <li><a href="form_editor.html" title="">WYSIWYG and file uploader</a></li>
                        <li class="last"><a href="form_wizards.html" title="">Wizards</a></li>
                    </ul>
                </li>
                <li><a href="ui_elements.html" title=""><img src="<%=basePath %>images/icons/light/users.png" alt=""/>Interface
                    elements</a></li>
                <li><a href="tables.html" title="" class="exp"><img src="<%=basePath %>images/icons/light/frames.png"
                                                                    alt=""/>Tables<strong>3</strong></a>
                    <ul>
                        <li><a href="table_static.html" title="">Static tables</a></li>
                        <li><a href="table_dynamic.html" title="">Dynamic table</a></li>
                        <li class="last"><a href="table_sortable_resizable.html" title="">Sortable &amp; resizable
                            tables</a></li>
                    </ul>
                </li>
                <li><a href="#" title="" class="exp"><img src="<%=basePath %>images/icons/light/fullscreen.png" alt=""/>Widgets
                    and grid<strong>2</strong></a>
                    <ul>
                        <li><a href="widgets.html" title="">Widgets</a></li>
                        <li class="last"><a href="grid.html" title="">Grid</a></li>
                    </ul>
                </li>
                <li><a href="#" title="" class="exp"><img src="<%=basePath %>images/icons/light/alert.png" alt=""/>Error
                    pages<strong>6</strong></a>
                    <ul class="sub">
                        <li><a href="403.html" title="">403 page</a></li>
                        <li><a href="404.html" title="">404 page</a></li>
                        <li><a href="405.html" title="">405 page</a></li>
                        <li><a href="500.html" title="">500 page</a></li>
                        <li><a href="503.html" title="">503 page</a></li>
                        <li class="last"><a href="offline.html" title="">Website is offline</a></li>
                    </ul>
                </li>
                <li><a href="file_manager.html" title=""><img src="<%=basePath %>images/icons/light/files.png" alt=""/>File
                    manager</a></li>
                <li><a href="#" title="" class="exp"><img src="<%=basePath %>images/icons/light/create.png" alt=""/>Other
                    pages<strong>3</strong></a>
                    <ul>
                        <li><a href="typography.html" title="">Typography</a></li>
                        <li><a href="calendar.html" title="">Calendar</a></li>
                        <li class="last"><a href="gallery.html" title="">Gallery</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="cLine"></div>
    </div>

    <!-- Title area -->
    <div class="titleArea">
        <div class="wrapper">
            <div class="pageTitle">
                <h5>欢迎你，系统管理员！</h5>
                <span>请问想要进行什么操作？</span>
            </div>

            <div class="clear"></div>
        </div>
    </div>

    <div class="line"></div>

    <!-- Page statistics area -->
    <div class="statsRow">
        <div class="wrapper">
            <div class="controlB">
                <ul>
                    <li>
                        <a onclick="loadHallManager()" title=""><img
                                src="<%=basePath %>images/icons/control/32/plus.png" alt=""/>
                            <span>新增机房管理员</span></a>
                    </li>
                    <li><a onclick="checkHallManager()" title=""><img
                            src="<%=basePath %>images/icons/control/32/database.png" alt=""/>
                        <span>查询机房管理员信息</span></a></li>


                    <li><a onclick="checkHallManagerLog()" title=""><img
                            src="<%=basePath %>images/icons/control/32/hire-me.png" alt=""/>
                        <span>查看机房管理员日志</span></a>
                    </li>

                    <%--<li><a href="#" title=""><img src="images/icons/control/32/statistics.png" alt="" /><span>Check statistics</span></a></li>--%>
                    <%--<li><a onclick="updateHallManager()" title="">--%>
                        <%--<img src="<%=basePath %>images/icons/control/32/comment.png" alt=""/>--%>
                        <%--<span>更新机房管理员信息</span></a>--%>
                    <%--</li>--%>
                    <li><a onclick="deleteHallManager()" title="">
                        <img src="<%=basePath %>images/icons/control/32/order-149.png"
                             alt=""/>
                        <span>删除机房管理员信息</span></a></li>
                </ul>
                <script type="text/javascript">

                    function deleteHallManager() {
                        //删除
                        var tableStu = document.getElementById("HallManagerInfo");
                        var tableLog = document.getElementById("HallManagerLogInfo");
                        var formLog = document.getElementById("HallManagerLogForm");
                        var formLoad = document.getElementById("loadHallManager");
                        var formCheck = document.getElementById("usualValidate");
                        //var formUpdate = document.getElementById("updateHallManager");
                        var formDelete = document.getElementById("deleteHallManager");
                        formDelete.style.display = "block";
                        //formUpdate.style.display = "none";
                        formLoad.style.display = "none";
                        formCheck.style.display = "none";
                        formLog.style.display = "none";
                        tableLog.style.display = "none";
                        tableStu.style.display = "none";
                    }

                    // function updateHallManager() {
                    //     alert("进来了");
                    //     var tableStu = document.getElementById("HallManagerInfo");
                    //     var tableLog = document.getElementById("HallManagerLogInfo");
                    //     var formLog = document.getElementById("HallManagerLogForm");
                    //     var formLoad = document.getElementById("loadHallManager");
                    //     var formCheck = document.getElementById("usualValidate");
                    //     var formUpdate = document.getElementById("updateHallManager");
                    //     var formDelete = document.getElementById("deleteHallManager");
                    //     formDelete.style.display = "none";
                    //     formUpdate.style.display = "block";
                    //     formLoad.style.display = "none";
                    //     formCheck.style.display = "none";
                    //     formLog.style.display = "none";
                    //     tableLog.style.display = "none";
                    //     tableStu.style.display = "none";
                    // }

                    function loadHallManager() {
                        var tableStu = document.getElementById("HallManagerInfo");
                        var tableLog = document.getElementById("HallManagerLogInfo");
                        var formLog = document.getElementById("HallManagerLogForm");
                        var formLoad = document.getElementById("loadHallManager");
                        var formCheck = document.getElementById("usualValidate");
                        //var formUpdate = document.getElementById("updateHallManager");
                        var formDelete = document.getElementById("deleteHallManager");
                        formDelete.style.display = "none";
                       // formUpdate.style.display = "none";
                        formLoad.style.display = "block";
                        formCheck.style.display = "none";
                        formLog.style.display = "none";
                        tableLog.style.display = "none";
                        tableStu.style.display = "none";
                    }

                    function checkHallManager() {
                        var tableStu = document.getElementById("HallManagerInfo");
                        var tableLog = document.getElementById("HallManagerLogInfo");
                        var formLog = document.getElementById("HallManagerLogForm");
                        var formLoad = document.getElementById("loadHallManager");
                        var formCheck = document.getElementById("usualValidate");
                        //var formUpdate = document.getElementById("updateHallManager");
                        var formDelete = document.getElementById("deleteHallManager");
                        formDelete.style.display = "none";
                        //formUpdate.style.display = "none";
                        formLoad.style.display = "none";
                        formCheck.style.display = "block";
                        formLog.style.display = "none";
                        tableLog.style.display = "none";
                        tableStu.style.display = "block";
                    }

                    function checkHallManagerLog() {
                        var tableStu = document.getElementById("HallManagerInfo");
                        var tableLog = document.getElementById("HallManagerLogInfo");
                        var formLog = document.getElementById("HallManagerLogForm");
                        var formLoad = document.getElementById("loadHallManager");
                        var formCheck = document.getElementById("usualValidate");
                        var formDelete = document.getElementById("deleteHallManager");
                        formDelete.style.display = "none";
                        formLoad.style.display = "none";
                        formCheck.style.display = "none";
                        formLog.style.display = "block";
                        tableLog.style.display = "block";
                        tableStu.style.display = "none";
                    }
                </script>
                <div class="clear"></div>
            </div>
        </div>

        <div class="line"></div>

        <div class="wrapper">
            <%--删除表单--%>
            <form id="deleteHallManager" class="form" method="get"
                  action="/hallManager/deleteHallManager" style="display: none">
                <fieldset>
                    <div class="widget">
                        <div class="title"><img src="images/icons/dark/alert.png" alt="" class="titleIcon"/><h6>
                            机房管理员信息删除</h6></div>
                        <div class="formRow">
                            <label>机房管理员账号:<span class="req">*</span></label>
                            <div class="formRight">
                                <input type="text" name="hallManagerId" class="required"/></div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>机房管理员名字:<span class="req">*</span></label>
                            <div class="formRight">
                                <input type="text" name="hallManagerName" class="required"/></div>
                            <div class="clear"></div>
                        </div>
                        <div class="formSubmit"><input type="submit" value="submit" class="redB"/></div>
                        <div class="clear"></div>
                    </div>
                </fieldset>
            </form>
            <%--&lt;%&ndash;更新表单&ndash;%&gt;--%>
            <%--<form id="updateHallManager" class="form" method="get"--%>
                  <%--action="/hallManager/updateHallManager" style="display: none">--%>
                <%--<fieldset>--%>
                    <%--<div class="widget">--%>
                        <%--<div class="title"><img src="images/icons/dark/alert.png" alt="" class="titleIcon"/><h6>--%>
                            <%--机房管理员信息更新</h6></div>--%>
                        <%--<div class="formRow">--%>
                            <%--<label> 机房管理员账号:<span class="req">*</span></label>--%>
                            <%--<div class="formRight">--%>
                                <%--<input type="text" name="hallManagerId" class="required"/></div>--%>
                            <%--<div class="clear"></div>--%>
                        <%--</div>--%>

                        <%--<div class="formRow">--%>
                            <%--<label> 机房管理员姓名:<span class="req">*</span></label>--%>
                            <%--<div class="formRight">--%>
                                <%--<input type="text" name="hallManagerName"/>--%>
                            <%--</div>--%>
                            <%--<div class="clear"></div>--%>
                        <%--</div>--%>
                        <%--<div class="formSubmit"><input type="submit" value="submit" class="redB"/></div>--%>
                        <%--<div class="clear"></div>--%>
                    <%--</div>--%>
                <%--</fieldset>--%>
            <%--</form>--%>
            <%--新增表单--%>
            <form id="loadHallManager" class="form"
                  action="/hallManager/addHallManager"
                  style="display: none">

                <fieldset>
                    <div class="widget">
                        <div class="title"><img src="images/icons/dark/alert.png" alt="" class="titleIcon"/><h6>
                            增加机房管理员</h6></div>
                        <div class="formRow">
                            <label>机房管理员账号:<span class="req">*</span></label>
                            <div class="formRight"><input type="text" name="hallManagerId"/></div>
                            <div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>机房管理员姓名:<span class="req">*</span></label>
                            <div class="formRight">
                                <input type="text" name="hallManagerName"/>
                            </div>
                            <div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>机房管理员密码:<span class="req">*</span></label>
                            <div class="formRight">
                                <input type="text" name="hallManagerPassword"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="formSubmit"><input type="submit" value="submit" class="redB"/></div>
                    <div class="clear"></div>

                </fieldset>
            </form>
            <%--查询机房管理员日志表单--%>
            <form id="HallManagerLogForm" class="form" method="get" action="#"
                  style="display: none" onsubmit="return to_page2(1); ">
                    <fieldset>
                        <div class="widget">
                            <div class="title"><img src="images/icons/dark/alert.png" alt="" class="titleIcon"/><h6>
                                机房管理员日志查询</h6></div>
                            <div class="formRow">
                                <label>机房管理员账号:<span class="req">*</span></label>
                                <div class="formRight"><input type="text" name="hallManagerId" id="hallManagerId"/></div>
                                <div class="clear"></div>
                            </div>

                            <div class="formRow">
                                <label>机房管理员姓名:<span class="req">*</span></label>
                                <div class="formRight">
                                    <input type="text" name="hallManagerName" id="hallManagerName"/>
                                </div>
                                <div class="clear"></div>
                            </div>

                            <div class="formRow">
                                <label>开始时间:<span class="req">*</span></label>
                                <div class="formRight">
                                    <input type="text" name="startTime" value="yyyy-mm-dd hh:mm:ss"
                                           id="startTime"/></div>
                                <div class="clear"></div>
                            </div>

                            <div class="formRow">
                                <label>截止时间:<span class="req">*</span></label>
                                <div class="formRight"><input type="text" name="finishTime"
                                                              value="yyyy-mm-dd hh:mm:ss" id="finishTime"/></div>
                                <div class="clear"></div>
                            </div>
                            <div class="formSubmit"><input type="submit" value="submit" class="redB"/></div>
                            <div class="clear"></div>
                        </div>
                    </fieldset>
                </form>
            <%--查询表单--%>
            <form id="usualValidate" class="form" method="get" action="#"
                  onsubmit="to_page(1); return false">
                <fieldset>
                    <div class="widget">
                            <div class="title"><img src="images/icons/dark/alert.png" alt="" class="titleIcon"/>
                                <h6 id="hh">
                                    机房管理员查询
                                </h6></div>
                            <div class="formRow">
                            <label>账号:<span class="req">*</span></label>
                            <div class="formRight"><input type="text" name="HallManagerId" id="hid"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>姓名:<span class="req">*</span></label>
                            <div class="formRight"><input type="text" name="HallManagerName" id="hname"/></div>
                            <div class="clear"></div>
                        </div>
                        <div class="formSubmit"><input type="submit" value="submit" class="redB"/></div>
                        <div class="clear"></div>
                    </div>
                </fieldset>
            </form>


            <%--查询机房管理员日志--%>
            <div class="widget" id="HallManagerLogInfo" style="display: none">
                <div class="title">
                        <span class="titleIcon"><input type="checkbox" id="titleCheck1"
                                                       name="titleCheck"/>
                        </span><h6>HallManagerLog table</h6></div>
                <table cellpadding="0" cellspacing="0" width="100%" class="sTable withCheck mTable" id="emps_table2">
                    <thead>
                    <tr>
                        <td><img src="<%=basePath %>images/icons/tableArrows.png" alt=""/></td>
                        <td>管理员账号</td>
                        <td>登入时间</td>
                        <td>登出时间</td>
                        <td>电脑</td>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr>
                        <td colspan="5">
                            <div class="itemActions" id="page_info_area1">
                            </div>
                            <div class="tPagination" id="page_nav_area1">
                            </div>
                        </td>
                    </tr>
                    </tfoot>
                    <tbody>
                    </tbody>
                </table>
            </div>
            <%--查询机房管理员信息--%>
            <div class="widget" id="HallManagerInfo">
                <div class="title">
                    <span class="titleIcon">
                        <input type="checkbox" id="titleCheck" name="titleCheck"/>
                    </span>
                    <h6>HallManager table</h6>
                </div>
                <table cellpadding="0" cellspacing="0" width="100%" class="sTable withCheck mTable" id="emps_table">
                    <thead>
                    <tr>
                        <td><img src="<%=basePath %>images/icons/tableArrows.png" alt=""/></td>
                        <td>管理员账号</td>
                        <td>管理员名字</td>
                        <%--<td>管理员密码</td>--%>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr>
                        <td colspan="3">
                            <div class="itemActions" id="page_info_area">
                            </div>
                            <div class="tPagination" id="page_nav_area">
                            </div>
                        </td>
                    </tr>
                    </tfoot>
                    <tbody>
                    </tbody>
                </table>
            </div>

                <script type="text/javascript">

                    //跳转页码的功能

                    function to_page(pn) {

                        alert("q");
                        var v1 = document.getElementById("hid").value;
                        var v2 = document.getElementById("hname").value;
                        //var v3 = document.getElementById("studentClass").value;

                        alert(v1);
                        alert(v2);

                        $.ajax({

                            url: "/hallManager/selectHallManager?hallManagerId="+v1+"&&hallManagerName="+v2 ,//改变

                            data: "pn=" + pn,

                            type: "GET",

                            success: function (result) {

                                alert("success");
                                console.log(result);

                                //1、解析并显示学生数据

                                build_emps_table(result);

                                //2、解析并显示分页信息

                                build_page_info(result);

                                //3、解析显示分页条数据

                                build_page_nav(result);

                            }

                        });

                    }

                    function to_page2(pn) {

                        alert("page2");
                        var v1 = document.getElementById("hallManagerId").value;
                        var v2 = document.getElementById("hallManagerName").value;
                        var v3 = document.getElementById("startTime").value;
                        var v4 = document.getElementById("finishTime").value;
                        alert(v1);
                        alert(v2);
                        alert(v3);
                        alert(v4);

                        $.ajax({

                            url: "/hallManagerLog/loadManagerLog?hallManagerId="+v1+"&&hallManagerName="+v2+"startTime="+v3+"&&finishTime="+v4 ,//改变

                            data: "pn=" + pn,

                            type: "GET",

                            success: function (result) {

                                alert("kkkkkkk");
                                console.log(result);

                                //1、解析并显示学生数据

                                build_st_table(result);

                                //2、解析并显示分页信息

                                build_page_info(result);

                                //3、解析显示分页条数据

                                build_page_nav(result);

                            }

                        });

                    }
                    //解析并显示学生数据

                    function build_st_table() {

                            //清空table表格

                            $("#emps_table2 tbody").empty();

                            var emps = result.data.pageInfo.list;//所有的学生数据

                            //遍历所有的学生数据

                            $.each(emps, function (SystemManagerIndex, item) {

                                //alert(item.studentId);

                                //构建表格

                                var c = $("<td></td>").append("<input type=\"checkbox\" id=\"titleCheck2\" name=\"checkRow\" />");

                                var hallManagerId = $("<td align=\"center\"></td>").append(item.hallManagerId);

                                var hallManagerName = $("<td align=\"center\"></td>").append(item.hallManagerName);




                                var editBtn = ($("<a href=\"#\" title=\"Update\"></a>").addClass("tipS").append($("<img />").attr('src', "<%=basePath %>images/icons/edit.png").load()));
                                var delBtn = ($("<a href=\"#\" title=\"Remove\"></a>").addClass("tipS").append($("<img  />").attr('src', "<%=basePath %>images/icons/remove.png").load()));

                                var btnTd = $("<td></td>").addClass("actBtns").append(editBtn).append(delBtn);

                                //append方法执行完成以后还是返回原来的元素

                                $("<tr></tr>").append(c)

                                    .append(hallManagerId)

                                    .append(hallManagerName)

                                    .append(btnTd)

                                    .appendTo("#emps_table2 tbody");

                            });


                    }

                    function build_emps_table(result) {

                        //清空table表格

                        $("#emps_table tbody").empty();

                        var emps = result.data.pageInfo.list;//所有的学生数据

                        //遍历所有的学生数据

                        $.each(emps, function (SystemManagerIndex, item) {

                            //alert(item.studentId);

                            //构建表格

                            var c = $("<td></td>").append("<input type=\"checkbox\" id=\"titleCheck2\" name=\"checkRow\" />");

                            var hallManagerId = $("<td align=\"center\"></td>").append(item.hallManagerId);

                            var hallManagerName = $("<td align=\"center\"></td>").append(item.hallManagerName);




                            var editBtn = ($("<a href=\"#\" title=\"Update\"></a>").addClass("tipS").append($("<img />").attr('src', "<%=basePath %>images/icons/edit.png").load()));
                            var delBtn = ($("<a href=\"#\" title=\"Remove\"></a>").addClass("tipS").append($("<img  />").attr('src', "<%=basePath %>images/icons/remove.png").load()));

                            var btnTd = $("<td></td>").addClass("actBtns").append(editBtn).append(delBtn);

                            //append方法执行完成以后还是返回原来的元素

                            $("<tr></tr>").append(c)

                                .append(hallManagerId)

                                .append(hallManagerName)

                                .append(btnTd)

                                .appendTo("#emps_table tbody");


                        });

                    }

                    //解析显示分页信息的

                    function build_page_info(result) {

                        //分页列表清空

                        $("#page_info_area").empty();

                        $("#page_info_area").append("当前" + result.data.pageInfo.pageNum + "页,总共" + result.data.pageInfo.pages + "页,总共" + result.data.pageInfo.total + "记录数");

                    }

                    //解析并显示分页条,点击分页能去下一页..

                    function build_page_nav(result) {

                        //page_nav_area

                        //清空列表

                        $("#page_nav_area").empty();

                        var ul = $("<ul></ul>").addClass("pagination");

                        //首页

                        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href", "#"));

                        //前一页

                        var prePageLi = $("<li></li>").append($("<a></a>").append("«"));

                        //如果没有前页的话，首页和前页隐藏

                        if (result.data.pageInfo.hasPreviousPage == false) {

                            firstPageLi.addClass("disabled");

                            prePageLi.addClass("disabled");

                        } else {

                            //为元素添加点击翻页的事件

                            //首页的点击事件

                            firstPageLi.click(function () {

                                to_page(1);

                            });

                            //前一页的点击事件

                            prePageLi.click(function () {

                                to_page(result.data.pageInfo.pageNum - 1);

                            });

                        }

                        //后一页

                        var nextPageLi = $("<li></li>").append($("<a></a>").append("»"));

                        //末页

                        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href", "#"));

                        //如果没有下一页的话，下一页的末页隐藏

                        if (result.data.pageInfo.hasNextPage == false) {

                            nextPageLi.addClass("disabled");

                            lastPageLi.addClass("disabled");

                        } else {

                            //下一页的点击事件

                            nextPageLi.click(function () {

                                to_page(result.data.pageInfo.pageNum + 1);

                            });

                            //末页的点击事件

                            lastPageLi.click(function () {

                                to_page(result.data.pageInfo.pages);

                            });

                        }

                        //添加首页和前一页

                        ul.append(firstPageLi).append(prePageLi);

                        //遍历给ul添加页码提示

                        $.each(result.data.pageInfo.navigatepageNums, function (index, item) {

                            var numLi = $("<li></li>").append($("<a></a>").append(item));

                            //按钮加深颜色

                            if (result.data.pageInfo.pageNum == item) {

                                numLi.addClass("active");

                            }

                            //页码的点击事件

                            numLi.click(function () {

                                to_page(item);

                            });

                            //遍历给ul添加页码提示

                            ul.append(numLi);

                        });

                        //添加下一页和末页的提示

                        ul.append(nextPageLi).append(lastPageLi);

                        //把ul加入到nav元素中

                        var navEle = $("<nav></nav>").append(ul);

                        //把nav元素放到div中

                        navEle.appendTo("#page_nav_area");

                    }

                </script>

</body>
</html>

