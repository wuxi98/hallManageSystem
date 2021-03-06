<%--
  Created by IntelliJ IDEA.
  User: pcdn
  Date: 2019/1/16
  Time: 8:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
    <title>Crown - premium responsive admin template for backend systems</title>
    <%
        //pageContext.setAttribute("APP_PATH", request.getContextPath());
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://"
                + request.getServerName() + ":" + request.getServerPort()
                + path + "/"+"mstp_107_tfcrown/";
        System.out.println(basePath);
        //pageContext.setAttribute("APP_PATH", request.getContextPath());
        System.out.println(path);
    %>
    <link href="<%=basePath %>css/main.css" rel="stylesheet" type="text/css" />

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

    <script type="text/javascript" src="<%=basePath %>js/custom.js"></script>

    <!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  -->
</head>
<body>





<!-- Left side content -->
<div id="leftSide">
    <div class="logo"><a href="index.html"><img src="<%=basePath %>images/logo.png" alt="" /></a></div>

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

    <!-- Left navigation -->
    <ul id="menu" class="nav">
        <li class="dash"><a href="../mstp_107_tfcrown/SystemManagerIndex.jsp" title=""><span>机房管理员管理</span></a></li>
        <li class="charts"><a href="../mstp_107_tfcrown/hall.jsp" title=""><span>上下机</span></a></li>
        <li class="charts"><a href="../mstp_107_tfcrown/hallManage.jsp" title="" class="active"><span>时间段设置</span></a></li>
        <li class="ui"><a href="../mstp_107_tfcrown/SystemManagerStudent.jsp" title=""><span>学生管理</span></a></li>
        <li class="files"><a href="../mstp_107_tfcrown/SystemManagerCheck.jsp" title=""><span>机房上机情况查询</span></a></li>
        <li class="files"><a href="../mstp_107_tfcrown/SystemManagerHall.jsp" title=""><span>机房管理</span></a></li>
    </ul>
</div>

<div id="rightSide">

    <!-- Top fixed navigation -->
    <div class="topNav">
        <div class="wrapper">
            <div class="welcome"><a href="#" title=""><img src="<%=basePath %>images/userPic.png" alt="" /></a><span>Howdy, Eugene!</span></div>
            <div class="userNav">
                <ul>
                    <li><a href="#" title=""><img src="<%=basePath %>images/icons/topnav/settings.png" alt="" /><span>Update</span></a></li>
                    <li><a href="../mstp_107_tfcrown/login.jsp" title=""><img src="<%=basePath %>images/icons/topnav/logout.png" alt="" /><span>Logout</span></a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <!-- Responsive header -->
    <div class="resp">
        <div class="respHead">
            <a href="index.html" title=""><img src="<%=basePath %>images/loginLogo.png" alt="" /></a>
        </div>

        <div class="cLine"></div>
        <div class="smalldd">
            <span class="goTo"><img src="<%=basePath %>images/icons/light/images2.png" alt="" />Gallery</span>
            <ul class="smallDropdown">
                <li><a href="index.html" title=""><img src="<%=basePath %>images/icons/light/home.png" alt="" />Dashboard</a></li>
                <li><a href="charts.html" title=""><img src="<%=basePath %>images/icons/light/stats.png" alt="" />Statistics and charts</a></li>
                <li><a href="#" title="" class="exp"><img src="<%=basePath %>images/icons/light/pencil.png" alt="" />Forms stuff<strong>4</strong></a>
                    <ul>
                        <li><a href="forms.html" title="">Form elements</a></li>
                        <li><a href="form_validation.html" title="">Validation</a></li>
                        <li><a href="form_editor.html" title="">WYSIWYG and file uploader</a></li>
                        <li class="last"><a href="form_wizards.html" title="">Wizards</a></li>
                    </ul>
                </li>
                <li><a href="ui_elements.html" title=""><img src="<%=basePath %>images/icons/light/users.png" alt="" />Interface elements</a></li>
                <li><a href="tables.html" title="" class="exp"><img src="<%=basePath %>images/icons/light/frames.png" alt="" />Tables<strong>3</strong></a>
                    <ul>
                        <li><a href="table_static.html" title="">Static tables</a></li>
                        <li><a href="table_dynamic.html" title="">Dynamic table</a></li>
                        <li class="last"><a href="table_sortable_resizable.html" title="">Sortable &amp; resizable tables</a></li>
                    </ul>
                </li>
                <li><a href="#" title="" class="exp"><img src="<%=basePath %>images/icons/light/fullscreen.png" alt="" />Widgets and grid<strong>2</strong></a>
                    <ul>
                        <li><a href="widgets.html" title="">Widgets</a></li>
                        <li class="last"><a href="grid.html" title="">Grid</a></li>
                    </ul>
                </li>
                <li><a href="#" title="" class="exp"><img src="<%=basePath %>images/icons/light/alert.png" alt="" />Error pages<strong>6</strong></a>
                    <ul class="sub">
                        <li><a href="403.html" title="">403 page</a></li>
                        <li><a href="404.html" title="">404 page</a></li>
                        <li><a href="405.html" title="">405 page</a></li>
                        <li><a href="500.html" title="">500 page</a></li>
                        <li><a href="503.html" title="">503 page</a></li>
                        <li class="last"><a href="offline.html" title="">Website is offline</a></li>
                    </ul>
                </li>
                <li><a href="file_manager.html" title=""><img src="<%=basePath %>images/icons/light/files.png" alt="" />File manager</a></li>
                <li><a href="#" title="" class="exp"><img src="<%=basePath %>images/icons/light/create.png" alt="" />Other pages<strong>3</strong></a>
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
   <%-- <div class="statsRow">
        &lt;%&ndash;<div class="wrapper">
            <div class="controlB">


                <div class="clear"></div>
            </div>
        </div>&ndash;%&gt;
    </div>--%>

    <div class="line"></div>

    <!-- Main content wrapper -->
    <div class="wrapper">

        <%--<div class="widget">
            <div class="title"><span class="titleIcon"></span><h6>设置不可用时间段</h6></div>--%>
            <form id="usualValidate" class="form" method="post" action="${ctx}/disable/add">
                <fieldset>
                    <div class="widget">
                        <div class="title"><img src="images/icons/dark/alert.png" alt="" class="titleIcon" /><h6>设置不可用时间段</h6></div>
                        <div class="formRow">
                            <label>机房号:<span class="req"></span></label>
                            <div class="formRight"><input type="text" class="required" name="hallId" id="class"/></div><div class="clear"></div>
                        </div>
                        <%--<div class="formRow">
                            <label>内容:<span class="req">*</span></label>
                            <div class="formRight">
                                <select class="required" name="content"><option value="order">预约</option><option value="fix">维修</option> </select>
                                <div class="clear"></div>
                                <div class="clear"></div>
                        </div>--%>
                        <div class="formRow">
                            <label>日期</label>
                            <div class="formRight">
                                <input type="text" class="datepicker"  name="date" id="startime"/>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>节次</label>
                            <div class="formRight">
                                <select name="clazz">
                                    <option value="1">1~2节</option>
                                    <option value="2">3~4节</option>
                                    <option value="3">5~6节</option>
                                    <option value="4">7~8节</option>
                                    <option value="5">9~10节</option>
                                    <option value="6">11~12节</option>
                                </select>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="formRow">
                            <label>内容:<span class="req"></span></label>
                            <div class="formRight">
                                <select name="content"><option value="order">预约</option><option value="fix">维修</option> </select>

                            </div>
                            <div class="clear"></div>
                        </div>
                        <div style="width: 100%;display: block">
                            <div class="formSubmit" style="float: right"><input type="submit" value="submit" class="redB" /></div>
                        </div>
                            <div class="clear"></div>
                    </div>
                </fieldset>
            </form>
            <form action="${ctx}/disable/excelAdd" enctype="multipart/form-data">


            </form>

            <form id="usualValidate" enctype="multipart/form-data" class="form" method="post" action="${ctx}/disable/excelAdd">
                <fieldset>
                    <div class="widget">
                        <div class="title"><img src="images/icons/dark/alert.png" alt="" class="titleIcon" /><h6>设置不可用时间段(excel导入)</h6></div>

                        <div class="formRow">
                            <label>选择文件：</label>
                            <div class="formRight">
                                <input type="file" name="file"/>
                            </div>
                            <div class="clear"></div>
                        </div>


                        <div style="width: 100%;display: block">
                            <div class="formSubmit" style="float: right"><input type="submit" value="submit" class="redB" /></div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </fieldset>
            </form>
            <%--
            <table cellpadding="0" cellspacing="0" width="100%" class="sTable withCheck mTable" id="hallM_table">

                <thead>
                <tr>
                    <td><img src="<%=basePath %>images/icons/tableArrows.png" alt="" /></td>

                    <td>机器号</td>
                    <td>机房号</td>
                    &lt;%&ndash;<td>email</td>&ndash;%&gt;
                    &lt;%&ndash;<td>depName</td>&ndash;%&gt;
                    <td>操作</td>
                </tr>
                </thead>

                <tfoot>
                <tr>
                    <td colspan="5">
                        <div class="itemActions" id="page_info_area">
                        </div>
                        <div class="tPagination" id="page_nav_area">
                        </div>
                    </td>
                </tr>
                </tfoot>

                <tbody>

                </tbody>

            </table>--%>
        </div>

    </div>

    <!-- Footer line -->
    <%--<div id="footer">--%>
    <%--<div class="wrapper">As usually all rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></div>--%>
    <%--</div>--%>


<script type="text/javascript">
$(function(){
    //alert("sad");
    $('.datepicker').datepicker({
        dateFormat: 'yy-mm-dd'
    });
})
</script>
</body>
</html>
