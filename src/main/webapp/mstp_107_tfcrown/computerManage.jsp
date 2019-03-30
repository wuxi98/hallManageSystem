<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/1/7
  Time: 17:18
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
            <span class="balanceAmount">YY-MM-DD</span>
        </a>
        <a href="#" title="" class="amChanges">
            <strong class="sPositive">星期三</strong>
        </a>
    </div>



    <div class="sidebarSep"></div>

    <!-- Left navigation -->
    <ul id="menu" class="nav">
        <li class="dash"><a href="SystemManagerIndex.jsp" title="" class="active"><span>机房管理员</span></a></li>
        <li class="charts"><a href="SystemManagerHall.jsp" title=""><span>机房管理</span></a></li>
        <li class="ui"><a href="SystemManagerStudent.jsp" title=""><span>学生管理</span></a></li>
        <li class="files"><a href="SystemManagerCheck.jsp" title=""><span>机房上机情况查询</span></a></li>
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
                    <li><a href="login.html" title=""><img src="<%=basePath %>images/icons/topnav/logout.png" alt="" /><span>Logout</span></a></li>
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
                <h5>欢迎系统管理员。。。</h5>
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
                <nav class="main_nav">
                    <li><a class="cd-signin" href="#0" title="上机"><img src="<%=basePath %>images/icons/control/32/plus.png" alt="" /><span>Add new student</span></a></li>
                    <%--<li><a href="#" title=""><img src="<%=basePath %>images/icons/control/32/plus.png" alt="" /><button id="emp_add_modal_btn">Add new student</button></a></li>--%>
                    <li><a href="#0" title=""><img src="<%=basePath %>images/icons/control/32/database.png" alt="" /><span>New room entry</span></a></li>
                    <li><a class="cd-signup" href="#" title=""><img src="<%=basePath %>images/icons/control/32/hire-me.png" alt="" /><span>Add new SystemManager</span></a></li>
                </nav>

                    <li><a href="#" title=""><img src="<%=basePath %>images/icons/control/32/comment.png" alt="" /><span>Check StDaily</span></a></li>
                    <li><a href="#" title=""><img src="<%=basePath %>images/icons/control/32/order-149.png" alt="" /><span>Check SmDaily</span></a></li>
                </ul>

                <div class="clear"></div>
            </div>
        </div>
    </div>

    <div class="line"></div>

    <!-- Main content wrapper -->
    <div class="wrapper">

        <div class="widget">
            <div class="title"><span class="titleIcon"><input type="checkbox" id="titleCheck" name="titleCheck" /></span><h6>HallManager table</h6></div>
            <table cellpadding="0" cellspacing="0" width="100%" class="sTable withCheck mTable" id="hallM_table">

                <thead>
                <tr>
                        <td><img src="<%=basePath %>images/icons/tableArrows.png" alt="" /></td>

                        <td>机器号</td>
                        <td>机房号</td>
                        <%--<td>email</td>--%>
                        <%--<td>depName</td>--%>
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

            </table>
        </div>

    </div>

    <!-- Footer line -->
    <%--<div id="footer">--%>
        <%--<div class="wrapper">As usually all rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></div>--%>
    <%--</div>--%>

</div>
<script type="text/javascript">
    //1.页面加载完成以后，直接去发送一个ajax请求，要到分页数据
    $(function(){
        //去首页
        to_page(1);
    });

    function to_page(pn){
        $.ajax({
            url:"${ctx}/computer/allComputer",
            data:"pn="+pn,
            type:"GET",
            success:function(result){
                console.log(result);
                //1.解析并显示
                build_hallM_table(result);
                //2.解析并显示分页信息
                build_page_info(result);
                //3.解析显示分页数据
                build_page_nav(result);
            }

        });
    }

    function build_hallM_table(result){
        //清空table表格
        $("#hallM_table tbody").empty();

        //alert("kkkk");

        var emps = result.data.pageInfo.list;
        $.each(emps,function(computerManage,item){

            var check = $("<td><input type=\"checkbox\" id=\"titleCheck2\" name=\"checkRow\" /></td>");
            var emIdTd = $("<td></td>").append(item.computerId);
            var empNameTd = $("<td></td>").append(item.hallId);
           // var deptNameTd = $("<td></td>").append(item.department.deptName);
            /**
             <button class="btn btn-primary btn-sm">
             <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
             编辑
             </button>
             **/
            var editBtn = ($("<a></a>").addClass("tipS")).append($("<img src=\"<%=basePath %>images/icons/edit.png\" alt=\"\" />"));
            var delBtn =($("<a></a>").addClass("tipS")).append($("<img src=\"<%=basePath %>images/icons/remove.png\" alt=\"\" />"));



            var btnTd = $("<td></td>").addClass("actBtns").append(editBtn).append(" ").append(delBtn);
            //append方法执行完成以后还是返回原来的元素
            $("<tr></tr>")
                .append(check)
                .append(emIdTd)
                .append(empNameTd)
                // .append(genderTd)
                // .append(mailTd)
                //.append(deptNameTd)
                .append(btnTd)
                .appendTo("#hallM_table tbody");
        });
    }
    //解析显示分页信息
    function build_page_info(result){
        //清空table表格
        $("#page_info_area").empty();
        $("#page_info_area").append("当前"+result.data.pageInfo.pageNum+"页,总"+
            result.data.pageInfo.pages+"页,总"+
            result.data.pageInfo.total+"条记录");
    }

    //解析显示分页条,点击分页要能去下一页
    function build_page_nav(result){

        //清空#page_nav_area
        $("#page_nav_area").empty();

        var ul = $("<ul></ul>").addClass("pagination");

        //构建元素
        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
        var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
        if(result.data.pageInfo.hasPreviousPage === false){
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        }else{
            //为元素添加点击翻页
            firstPageLi.click(function(){
                to_page(1);
            });
            prePageLi.click(function(){
                to_page(result.data.pageInfo.pageNum-1);
            })
        }


        var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
        var laststPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
        if(result.data.pageInfo.hasNextPage === false){
            nextPageLi.addClass("disabled");
            laststPageLi.addClass("disabled");
        }else{
            //为元素添加点击翻页
            nextPageLi.click(function(){
                to_page(result.data.pageInfo.pageNum+1);
            })
            laststPageLi.click(function(){
                to_page(result.data.pageInfo.pages);
            })
        }


        //添加首页和前一页的显示
        ul.append(firstPageLi).append(prePageLi);

        //1,2,..5遍历给ul中添加页码提示
        $.each(result.data.pageInfo.navigatepageNums,function(index,item){

            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if(result.data.pageInfo.pageNum === item){
                numLi.addClass("active");
            }
            numLi.click(function(){
                to_page(item);
            })

            ul.append(numLi);

        })
        //添加下一页和末页的提示
        ul.append(nextPageLi).append(laststPageLi);
        //把ul加入到nav
        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area");

    }







</script>
</body>
</html>
