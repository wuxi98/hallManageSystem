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

    <script type="text/javascript" src="<%=basePath %>js/plugins/spinner/ui.spinner.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/spinner/jquery.mousewheel.js"></script>

    <script type="text/javascript" src="<%=basePath %>js/jquery-ui.min.js"></script>

    <script type="text/javascript" src="<%=basePath %>js/plugins/charts/excanvas.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/charts/jquery.sparkline.min.js"></script>

    <script type="text/javascript" src="<%=basePath %>js/plugins/forms/uniform.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/forms/jquery.cleditor.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/forms/jquery.validationEngine-en.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/forms/jquery.validationEngine.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/forms/jquery.tagsinput.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/forms/autogrowtextarea.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/forms/jquery.maskedinput.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/forms/jquery.dualListBox.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/forms/jquery.inputlimiter.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/forms/chosen.jquery.min.js"></script>

    <script type="text/javascript" src="<%=basePath %>js/plugins/wizard/jquery.form.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/wizard/jquery.validate.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/wizard/jquery.form.wizard.js"></script>

    <script type="text/javascript" src="<%=basePath %>js/plugins/uploader/plupload.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/uploader/plupload.html5.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/uploader/plupload.html4.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/uploader/jquery.plupload.queue.js"></script>

    <script type="text/javascript" src="<%=basePath %>js/plugins/tables/datatable.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/tables/tablesort.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/tables/resizable.min.js"></script>

    <script type="text/javascript" src="<%=basePath %>js/plugins/ui/jquery.tipsy.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/ui/jquery.collapsible.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/ui/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/ui/jquery.progress.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/ui/jquery.timeentry.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/ui/jquery.colorpicker.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/ui/jquery.jgrowl.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/ui/jquery.breadcrumbs.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/ui/jquery.sourcerer.js"></script>

    <script type="text/javascript" src="<%=basePath %>js/plugins/calendar.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>js/plugins/elfinder.min.js"></script>

    <%--<script type="text/javascript" src="<%=basePath %>js/custom.js"></script>--%>

    <!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  -->
</head>
<body>

<div id="leftSide">
    <div class="logo"><a href="index.html"><img src="<%=basePath %>images/logo.png" alt=""/></a></div>

    <div class="sidebarSep mt0"></div>
    <div class="genBalance">
        <a href="#" title="" class="amount">
            <span>今天是</span>
            <span class="balanceAmount" id="now_time"></span>
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
        <li class="dash"><a href="../mstp_107_tfcrown/SystemManagerIndex.jsp" title=""><span>机房管理员管理</span></a></li>
        <li class="charts"><a href="../mstp_107_tfcrown/hall.jsp" title=""><span>上下机</span></a></li>
        <li class="charts"><a href="../mstp_107_tfcrown/hallManage.jsp" title=""><span>时间段设置</span></a></li>
        <li class="ui"><a href="../mstp_107_tfcrown/SystemManagerStudent.jsp" title="" class="active"><span>学生管理</span></a></li>
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
                    <li><a href="../mstp_107_tfcrown/login.jsp" title=""><img src="<%=basePath %>images/icons/topnav/logout.png"
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
                        <a onclick="loadStudent()" title=""><img src="<%=basePath %>images/icons/control/32/plus.png"
                                                                 alt=""/>
                            <span>Excel导入学生信息</span></a>
                    </li>

                    <li><a onclick="checkStudent()" title=""><img
                            src="<%=basePath %>images/icons/control/32/database.png" alt=""/>
                        <span>查询学生信息</span></a></li>


                    <li><a onclick="checkStudentLog()" title=""><img
                            src="<%=basePath %>images/icons/control/32/hire-me.png" alt=""/>
                        <span>查看学生登录日志</span></a>
                    </li>

                    <%--<li><a href="#" title=""><img src="images/icons/control/32/statistics.png" alt="" /><span>Check statistics</span></a></li>--%>
                    <li><a onclick="updateStudent()" title="">
                        <img src="<%=basePath %>images/icons/control/32/comment.png" alt=""/>
                        <span>更新学生信息</span></a>
                    </li>
                    <li><a onclick="deleteStudent()" title="">
                        <img src="<%=basePath %>images/icons/control/32/order-149.png"
                             alt=""/>
                        <span>删除学生信息</span></a></li>
                </ul>
                <script type="text/javascript">

                    function deleteStudent() {
                        var tableStu = document.getElementById("studentInfo");
                        var tableLog = document.getElementById("studentLogInfo");
                        var formLog = document.getElementById("studentLogForm");
                        var formLoad = document.getElementById("loadStudentExcel");
                        var formCheck = document.getElementById("usualValidate");
                        var formUpdate = document.getElementById("updateStudent");
                        var formDelete = document.getElementById("deleteStudent");
                        formDelete.style.display = "block";
                        formUpdate.style.display = "none";
                        formLoad.style.display = "none";
                        formCheck.style.display = "none";
                        formLog.style.display = "none";
                        tableLog.style.display = "none";
                        tableStu.style.display = "none";
                    }

                    function updateStudent() {
                        var tableStu = document.getElementById("studentInfo");
                        var tableLog = document.getElementById("studentLogInfo");
                        var formLog = document.getElementById("studentLogForm");
                        var formLoad = document.getElementById("loadStudentExcel");
                        var formCheck = document.getElementById("usualValidate");
                        var formUpdate = document.getElementById("updateStudent");
                        var formDelete = document.getElementById("deleteStudent");
                        formDelete.style.display = "none";
                        formLoad.style.display = "none";
                        formCheck.style.display = "none";
                        formLog.style.display = "none";
                        tableLog.style.display = "none";
                        tableStu.style.display = "none";
                        formUpdate.style.display = "block";
                    }

                    function loadStudent() {
                        var tableStu = document.getElementById("studentInfo");
                        var tableLog = document.getElementById("studentLogInfo");
                        var formLog = document.getElementById("studentLogForm");
                        var formLoad = document.getElementById("loadStudentExcel");
                        var formCheck = document.getElementById("usualValidate");
                        var formUpdate = document.getElementById("updateStudent");
                        var formDelete = document.getElementById("deleteStudent");
                        formDelete.style.display = "none";
                        formUpdate.style.display = "none";
                        formLoad.style.display = "block";
                        formCheck.style.display = "none";
                        formLog.style.display = "none";
                        tableLog.style.display = "none";
                        tableStu.style.display = "none";
                    }

                    function checkStudent() {
                        var tableStu = document.getElementById("studentInfo");
                        var tableLog = document.getElementById("studentLogInfo");
                        var formLog = document.getElementById("studentLogForm");
                        var formLoad = document.getElementById("loadStudentExcel");
                        var formCheck = document.getElementById("usualValidate");
                        var formUpdate = document.getElementById("updateStudent");
                        var formDelete = document.getElementById("deleteStudent");
                        formDelete.style.display = "none";
                        formUpdate.style.display = "none";
                        formLoad.style.display = "none";
                        formCheck.style.display = "block";
                        formLog.style.display = "none";
                        tableLog.style.display = "none";
                        tableStu.style.display = "block";
                    }

                    function checkStudentLog() {
                        var tableStu = document.getElementById("studentInfo");
                        var tableLog = document.getElementById("studentLogInfo");
                        var formLog = document.getElementById("studentLogForm");
                        var formLoad = document.getElementById("loadStudentExcel");
                        var formCheck = document.getElementById("usualValidate");
                        var formUpdate = document.getElementById("updateStudent");
                        var formDelete = document.getElementById("deleteStudent");
                        formDelete.style.display = "none";
                        formUpdate.style.display = "none";
                        formLoad.style.display = "none";
                        formCheck.style.display = "none";
                        formLog.style.display = "block";
                        tableLog.style.display = "block";
                        tableStu.style.display = "none"
                    }
                </script>

                <div class="clear"></div>
            </div>
        </div>

        <div class="line"></div>

        <div class="wrapper">
            <%--删除表单--%>
            <form id="deleteStudent" class="form" method="get"
                  action="/student/delete" style="display: none">
                <fieldset>
                    <div class="widget">
                        <div class="title"><img src="images/icons/dark/alert.png" alt="" class="titleIcon"/><h6>
                            学生信息删除</h6></div>
                        <div class="formRow">
                            <label>学生学号:<span class="req">*</span></label>
                            <div class="formRight">
                                <input type="text" name="studentId" class="required"/></div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>学生班级:<span class="req">*</span></label>
                            <div class="formRight">
                                <input type="text" name="studentClass" class="required"/></div>
                            <div class="clear"></div>
                        </div>
                        <div class="formSubmit"><input type="submit" value="submit" class="redB"/></div>
                        <div class="clear"></div>
                    </div>
                </fieldset>
            </form>
            <%--更新表单--%>
            <form id="updateStudent" class="form" method="get"
                  action="/student/update" style="display: none">
                <fieldset>
                    <div class="widget">
                        <div class="title"><img src="images/icons/dark/alert.png" alt="" class="titleIcon"/><h6>
                            学生信息更新</h6></div>
                        <div class="formRow">
                            <label>学生学号:<span class="req">*</span></label>
                            <div class="formRight">
                                <input type="text" name="studentId" class="required"/></div>
                            <div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>学生姓名:<span class="req">*</span></label>
                            <div class="formRight">
                                <input type="text" name="studentName"/>
                            </div>
                            <div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>学生班级:<span class="req">*</span></label>
                            <div class="formRight">
                                <input type="text" name="studentClass"/></div>
                            <div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>实验课时时长：<span class="req">*</span></label>
                            <div class="formRight">
                                <input type="text" name="defaultTime"/></div>
                            <div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>自由上机时长:<span class="req">*</span></label>
                            <div class="formRight">
                                <input type="text" name="totalTime"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formSubmit"><input type="submit" value="submit" class="redB"/></div>
                        <div class="clear"></div>
                    </div>
                </fieldset>
            </form>
            <%--查询学生日志表单--%>
            <form id="studentLogForm" class="form" method="get"
                  action="" style="display: none" onsubmit="to_page2(1); return false">
                <fieldset>
                    <div class="widget">
                        <div class="title"><img src="images/icons/dark/alert.png" alt="" class="titleIcon"/><h6>
                            学生日志查询</h6></div>
                        <div class="formRow">
                            <label>学生学号:<span class="req">*</span></label>
                            <div class="formRight"><input type="text" name="studentId"
                                                          id="studentId"/></div>
                            <div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>学生姓名:<span class="req">*</span></label>
                            <div class="formRight">
                                <input type="text" name="studentName" id="studentName"/>
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
                            <div class="formRight"><input type="text" name="endTime"
                                                          value="yyyy-mm-dd hh:mm:ss" id="endTime"/></div>
                            <div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>机房号:<span class="req">*</span></label>
                            <div class="formRight"><input type="text" name="hallId" id="hallId"/>
                            </div>
                            <div class="clear"></div>
                        </div>

                        <div class="formRow">
                            <label>微机号（全称）:<span class="req">*</span></label>
                            <div class="formRight"><input type="text" name="computerId"
                                                          id="computerId"/></div>
                            <div class="clear"></div>
                        </div>

                        <div class="formSubmit"><input type="submit" value="submit" class="redB"/></div>
                        <div class="clear"></div>
                    </div>
                </fieldset>
            </form>
            <%--导入表单--%>
            <form id="loadStudentExcel" class="form" method="post"
                  action="/student/loadFile" enctype="multipart/form-data"
                  style="display: none">
                <fieldset>
                    <div class="widget">
                        <div class="title"><img src="images/icons/dark/alert.png" alt="" class="titleIcon"/><h6>
                            学生导入</h6></div>
                        <div class="formRow">
                            <label>选择Excel:<span class="req">*</span></label>
                            <div class="formRight"><input type="file" name="file"
                                                          id="file"/></div>
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
                                学生查询
                            </h6></div>
                        <div class="formRow">
                            <label>学号:<span class="req">*</span></label>
                            <div class="formRight"><input type="text" id="stid" name="studentId"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>姓名:<span class="req">*</span></label>
                            <div class="formRight"><input type="text" id="stnm" name="studentName"/></div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>班级:<span class="req">*</span></label>
                            <div class="formRight"><input type="text" id="stcl" name="studentClass"/></div>
                            <div class="clear"></div>
                        </div>
                        <div class="formSubmit"><input type="submit" value="submit" class="redB"/></div>
                        <div class="clear"></div>
                    </div>
                </fieldset>
            </form>
            <%--查询学生日志--%>
            <div class="widget" id="studentLogInfo" style="display: none">
                <div class="title">
                        <span class="titleIcon"><input type="checkbox" id="titleCheck1"
                                                       name="titleCheck"/>
                        </span><h6>StudentLog table</h6></div>
                <table cellpadding="0" cellspacing="0" width="100%" class="sTable withCheck mTable" id="st_loig_table">
                    <thead>
                    <tr>
                        <td><img src="<%=basePath %>images/icons/tableArrows.png" alt=""/></td>
                        <td>学号</td>
                        <td>微机号</td>
                        <td>登入时间</td>
                        <td>登出时间</td>
                        <td>操作</td>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr>
                        <td colspan="7">
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
            <%--查询学生信息--%>
            <div class="widget" id="studentInfo">
                <div class="title"><span class="titleIcon">
                    <input type="checkbox" id="titleCheck"
                           name="titleCheck"/></span>
                    <h6>Student table</h6>
                </div>
                <table cellpadding="0" cellspacing="0" width="100%" class="sTable withCheck mTable" id="emps_table">
                    <thead>
                    <tr>
                        <td><img src="<%=basePath %>images/icons/tableArrows.png" alt=""/></td>
                        <td>#</td>
                        <td>学号</td>
                        <td>姓名</td>
                        <td>班级</td>
                        <td>上机总时长</td>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr>
                        <td colspan="7">
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



        </div>

        <script type="text/javascript">

            //跳转页码的功能
            function to_page(pn) {

               // alert("q");
                var v1 = document.getElementById("stid").value;
                var v2 = document.getElementById("stnm").value;
                var v3 = document.getElementById("stcl").value;

            /*    alert(v1);
                alert(v2);
                alert(v3);*/
                $.ajax({

                    url: "/student/query?studentId=" + v1 + "&&studentName=" + v2 + "&&studentClass=" + v3,//改变

                    data: "pn=" + pn,

                    type: "GET",


                    success: function (result) {

                        // alert("kkkkkkk");
                        // alert(result[1].studentId);
                        // alert(result[2].studentId);
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
            //解析并显示学生数据
            function build_emps_table(result) {

                //清空table表格

                $("#emps_table tbody").empty();

                var emps = result.data.pageInfo.list;//所有的学生数据

                //遍历所有的学生数据

                $.each(emps, function (SystemManagerStudent, item) {

                    //alert(item.studentId);

                    //构建表格

                    var c = $("<td></td>").append("<input type=\"checkbox\" id=\"titleCheck2\" name=\"checkRow\" />");

                    var empIdTd = $("<td align=\"center\"></td>").append(item.studentId);

                    var empNameTd = $("<td align=\"center\"></td>").append(item.studentName);

                    var genderTd = $("<td align=\"center\"></td>").append(item.studentClass);

                    var emailTd = $("<td align=\"center\"></td>").append(item.defaultTime);

                    var deptNameTd = $("<td align=\"center\"></td>").append(item.totalTime);


                    var editBtn = ($("<a href=\"#\" title=\"Update\"></a>").addClass("tipS").append($("<img />").attr('src', "<%=basePath %>images/icons/edit.png").load()));
                    var delBtn = ($("<a href=\"#\" title=\"Remove\"></a>").addClass("tipS").append($("<img  />").attr('src', "<%=basePath %>images/icons/remove.png").load()));

                    var btnTd = $("<td></td>").addClass("actBtns").append(editBtn).append(delBtn);

                    //append方法执行完成以后还是返回原来的元素

                    $("<tr></tr>").append(c)

                        .append(empIdTd)

                        .append(empNameTd)

                        .append(genderTd)

                        .append(emailTd)

                        .append(deptNameTd)

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

                if (result.data.pageInfo.hasPreviousPage === false) {

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

                if (result.data.pageInfo.hasNextPage === false) {

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

                    if (result.data.pageInfo.pageNum === item) {

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



            function to_page2(pn) {

                // alert("q");
                var v1 = document.getElementById("studentId").value;
                var v2 = document.getElementById("studentName").value;
                var v3 = document.getElementById("startTime").value;
                var v4 = document.getElementById("startTime").value;
                var v5 = document.getElementById("endTime").value;
                var v6 = document.getElementById("computerId").value;

            /*    alert(v1);
                alert(v2);
                alert(v3);
                alert(v4);
                alert(v5);
                alert(v6);*/

                $.ajax({

                    url: "/studentLog/loadStudentLog"+
                    "?studentId="+ v1 + "&&studentName=" + v2 + "&&studentClass=" + v3+"&&startTime="+v4+
                    "&&endTime="+v5+"&&computerId="+v6,//改变

                    data: "pn=" + pn,

                    type: "GET",


                    success: function (result) {

                        // alert("kkkkkkk");
                        // alert(result[1].studentId);
                        // alert(result[2].studentId);
                        console.log(result);

                        //1、解析并显示学生数据

                        build_st_loig_table(result);

                        //2、解析并显示分页信息

                        build_page_info(result);

                        //3、解析显示分页条数据

                        build_page_nav(result);

                    }

                });

            }

            //解析并显示学生数据
            function build_st_loig_table(result) {

                //清空table表格

                $("#st_loig_table tbody").empty();

                var emps = result.data.pageInfo.list;//所有的学生数据

                //遍历所有的学生数据

                $.each(emps, function (SystemManagerStudent, item) {

                    //alert(item.studentId);

                    //构建表格

                    var c = $("<td></td>").append("<input type=\"checkbox\" id=\"titleCheck2\" name=\"checkRow\" />");

                    var studentId = $("<td align=\"center\"></td>").append(item.studentId);

                   var computerId = $("<td align=\"center\"></td>").append(item.computerId);

                    var startTime = $("<td align=\"center\"></td>").append(getDateTime(new Date(item.startTime)));

                    var endTime = $("<td align=\"center\"></td>").append( getDateTime(new Date(item.endTime)));

                    //var deptNameTd = $("<td align=\"center\"></td>").append(item.ip);


                    var editBtn = ($("<a href=\"javascript:void(0);\" title=\"Update\"></a>").addClass("tipS").append($("<img />").attr('src', "<%=basePath %>images/icons/edit.png").load()));
                    var delBtn = ($("<a href=\"javascript:void(0);\" title=\"Remove\"></a>").addClass("tipS").append($("<img  />").attr('src', "<%=basePath %>images/icons/remove.png").load()));

                    var btnTd = $("<td></td>").addClass("actBtns").append(editBtn).append(delBtn);

                    //append方法执行完成以后还是返回原来的元素

                    $("<tr></tr>").append(c)


                        .append(studentId)

                        .append(computerId)

                        .append(startTime)

                        .append(endTime)

                        .append(btnTd)

                        .appendTo("#st_loig_table tbody");


                });

            }

            //解析显示分页信息的

            function getDateTime(date) {

                var year = date.getFullYear();

                var month = date.getMonth() + 1;

                var day = date.getDate();

                var hh = date.getHours();

                var mm = date.getMinutes();

                var ss = date.getSeconds();

                return year + "-" + month + "-" + day + " " + hh + ":" + mm + ":" + ss;
            }


        </script>

</body>
</html>

