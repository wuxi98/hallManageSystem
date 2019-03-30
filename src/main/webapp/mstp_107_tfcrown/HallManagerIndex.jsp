<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/1/8
  Time: 21:19
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
        // System.out.println(basePath);
        //pageContext.setAttribute("APP_PATH", request.getContextPath());
        // System.out.println(path);
    %>
    <link href="<%=basePath %>css/main.css" rel="stylesheet" type="text/css" />
    <%-- <link href="<%=basePath %>css/bootstrap.css" rel="stylesheet" type="text/css" />--%>
    <script type="text/javascript" src="<%=basePath %>js/jquery.min.js"></script>
    <%-- <script type="text/javascript" src="<%=basePath %>js/bootstrap.min.js"></script>--%>
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
    <script type="text/javascript" src="<%=basePath %>js/plugins/forms/jquery.form.min.js"></script>

    <!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  -->

    <style type="text/css">
        .computerDiv{
            width:12%;display: inline-block
        }
        .computerDiv:visited{
            border: #893f3f solid 2px;
        }


    </style>

    <script type="text/javascript" language="JavaScript">

        var flagChoose=false;


        function isChoose() {

            var v1=$("#zuowei").text();
            var v2=$("#tip2").text();
            /*  alert("1="+v1);
              alert("2="+v2);

              alert("此处无事111");*/
            if(($("#zuowei").text()!=null&&$("#zuowei").text()!=='')&&($("#tip2").text()!=null&&$("#tip2").text()!=='')) {
                //  alert("换机！111");
                var truthBeTold=window.confirm("确定从"+v1+"换到"+v2+"吗？");
                if(truthBeTold===true){
                    // alert("换机！");
                    $.ajax({
                        type:'post',
                        url:'${ctx}/studentLog/chooseComputer?computerId1='+v1+'&&computerId2='+v2,
                        success:function () {
                            alert("换机成功！");
                            // history.go(0);
                            getComputer(sessionStorage.getItem('hallId'));
                        }
                    })



                }
            }
            else
                alert("请选择完整换机信息!");
            document.getElementById("tip1").innerText = "";
        }

        function chooseComputer() {
            //alert($("#zuowei").text());
            if($("#zuowei").text()===null||$("#zuowei").text()===''){
                alert("请选择要换下的机！");
            }
            else {
                document.getElementById("tip1").innerText = "选择要换上的机器:";
                // alert("清选择要换下的机器");
                flagChoose=true;
            }
        }

        function offComputerAll() {
            var va=document.getElementById("hideHall").name;
            // alert(va);
            var truthBeTold = window.confirm("确定对"+va+"下机吗");
            if (truthBeTold) {
                $.ajax({
                    type:'post',
                    url:'${ctx}/studentLog/offComputerAll?hallId='+va,
                    success:function (data) {
                        // alert(data);
                        //history.go(0);
                        getComputer(sessionStorage.getItem('hallId'));
                    }
                })
            }
        }
        //下机事件
        function offComputer() {
            if(!document.getElementById("hideHallId").name)
                alert("请选择机位");
            else
            {

                var computerId=document.getElementById("hideHallId").name;
                var truthBeTold = window.confirm("确定对"+computerId+"下机吗");
                if (truthBeTold) {

                    $.ajax({
                        type:'post',
                        url:'${ctx}/studentLog/offComputer?computerId='+computerId,
                        success:function (data) {
                            alert("下机成功");
                            //  alert(sessionStorage.getItem('hallId'));
                            // history.go(0);
                            getComputer(sessionStorage.getItem('hallId'));
                        }
                    });} // history.go(0);getComputer(sessionStorage.setItem('hallId',va));
            }
        }

        function goCheck2(f) {
            //  alert("此处无事");
            var str = document.getElementById("file").value;
            if(str.length===0)
            {
                alert("请选择文件！");
                return false
            }
            var v=document.getElementById("hideHall").name;
            f.action+='?hallId='+v;
            return true;
            // alert(f.action);

        }

        //上机表单校验
        function goCheck1() {

            // alert("上机？");
            //var studentId=f.studentId.value;
            var computerId=document.getElementById("hideHallId").name;
            var v1=document.getElementById("studentId").value;
            //
            // alert(document.getElementById("hideHallId").name);
            // alert(f.studentId.value);
            if(computerId==null||computerId==='')
            {
                alert("请选择机位！");
                return false;
            }
            if(v1==null||v1==='')
            {
                alert("请输入学号！");
                return false;
            }
            /* if(f.studentId.value=="")
             {
                 alert("请输入学号！");
                 return false;
             }*/
            else{
                //f.action='/studentLog/goComputer?computerId='+computerId;


                //  alert(v1);
                $.ajax({
                    type:'get',
                    url:'${ctx}/studentLog/goComputer?computerId='+computerId+'&&studentId='+v1,
                    success:function () {
                        alert("上机成功！");
                        getComputer(sessionStorage.getItem('hallId'));
                    }
                })

            }


        }

        function hallIdHide(value) {
            //alert(value.id);
            var va=value.id;
            // alert("flagChoose="+flagChoose);
            if(flagChoose===true){
                // alert(va);
                document.getElementById("tip2").innerText=va;
                // alert(document.getElementById("tip2").text());
                flagChoose=false;
            }
            else {

                // $(".computerDiv").style='border:#000000 solid 1px';
                //value.style='border: #893f3f solid 2px';
                $("#zuowei").html(va);
                //alert($("#hideHallId").value);
                document.getElementById("hideHallId").name=va;
            }
            //$("#hideHallId").attr(value,va);
            //alert("value="+document.getElementById("hideHallId").name);

        }

        //机房图标点击事件
        //获取机房详细信息
        function get(value) {
            sessionStorage.setItem('hallId',value.name);
            //  alert(sessionStorage.getItem('hallId'));
            //  alert(value.name);
            getComputer(value.name);
        }
        function getComputer(value){
            //  alert("点击了");
            //alert(value.name);
            // alert(value);
            // alert("getComputer");
            //alert("value="+value);
            var va=value;
            document.getElementById("hideHall").name=va;

            $.ajax({
                type:'post',
                url:'/computer/update?hallId='+value,
                success:function () {
                    // alert("更新数据库！");
                }
            });

            $.ajax({
                type:'post',
                url:'/computer/getComputer?hallId='+value,
                success:function (data) {
                    //alert("显示视图！");
                    // alert("请求成功！");
                    $("#dynamicHall").detach();
                    $(".computerDiv").detach();
                    $("#opate").detach();

                    // $("#dynamic").append("<table border='1' style='width: 100%;border:1;table-layout:fixed'>");
                    for(var i=0;i<5;i++){
                        //  $("#dynamic").append("<tr>");
                        for(var j=0;j<8;j++){
                            var index;
                            if(data[j+8*i]==null) break;
                            else if(data[j+8*i].computerStatus==='空闲') index=1;
                            else if(data[j+8*i].computerStatus==='使用') index=2;
                            else if(data[j+8*i].computerStatus==='维修') index=3;
                            else if(data[j+8*i].computerStatus==='预约') index=4;
                            $("#dynamic").append("<div class=\"computerDiv\" onclick='hallIdHide(this);' id='"+data[j+8*i].computerId+"'" +
                                ">" +
                                "<img src=\"images/myPic/computer1"+index+".png\" " +
                                "style=\"height:50px;width: 50px\"/><br>" +
                                data[j+8*i].computerId+"</div>");


                        }//$("#dynamic").append("</br>");
                        //   $("#dynamic").append("</tr>");
                    }

                    $("#dynamicF").append("<div id=\"opate\" style='border-left: #000000 solid 2px;width: 20%;float:right'>"+
                        "<span id='zuowei' style='font-size:23px;background: #d3d3d3;border:3px solid #d3d3d3'></span>"+
                        "<button style='width: 100%' onclick='offComputer()'>下机</button><br>"+
                        "<button style='width: 100%' onclick='offComputerAll()'>全部下机</button><br>"+
                        "<br><form action='javascript:void(0)' method='post' id='shangji' onsubmit='return false;'>" +
                        "<label style='width: 100%'>输入学号：</label>" +
                        "<input type='text' name='studentId' id='studentId' style='width: 100%'/></form>" +
                        "<button onclick='goCheck1();' style='width:100%'>上机</button>"+
                        /*  "<input type='submit' value='上机' style='width: 100%'/> </form><br>" +*/
                        "<form action='${ctx}/studentLog/ajaxUpload.do' method='post' enctype='multipart/form-data' onsubmit='return goCheck2(this);'>" +
                        "<label style='width: 100%'>选择批量操作的文件：</label>" +
                        "<input type='file' id='file' name='file'/>" +
                        "<select name='clazz'>" +
                        "<option value='1'>1~2节</option>" +
                        "<option value='2'>3~4节</option>" +
                        "<option value='3'>5~6节</option>" +
                        "<option value='4'>7~8节</option>" +
                        "<option value='5'>9~10节</option>" +
                        "<option value='6'>11~12节</option>" +
                        "<input type='submit' value='上机' style='width: 100%'/></form><br> " +
                        "<button style='width: 100%' onclick='chooseComputer();'>换机：</button>" +
                        "<span id='tip1' style='width: 100%;height:30px;display: block'></span>" +
                        "<span id='tip2' style='style='font-size:23px;background: #d3d3d3;border:3px solid #d3d3d3''></span>" +
                        "<button style='width: 100%' onclick='isChoose();'>确定</button>" +
                        "</div>");
                }
            });
            //ajax请求结束。
        }


    </script>
</head>
<body>
<script type="text/javascript">

    $(function(){
        //alert("初始化!");
        AjaxT();


        function AjaxT(){
// 修改为ajax 来提交请求

            //alert("2");
            $.ajax({

                url:'${ctx}/hall/getHallId',
                type:'post',
                success:function (data) {
                    $("#dynamicCreate1").detach();
                    // alert("进l");
                    for(var i=0;i<data.length;i++){
                        //alert(data[i]);
                        $("#dynamicHall").append("<li id=\"dynamicCreate\" >" +
                            "<a href=\"javascript:void(0);\" id=\"hall\" name=\""+data[i]+"\" onclick='get(this);' rel=\"lightbox\">" +
                            "<img src=\"images/myPic/computer1.jpg\" style=\"height:101px;width: 101px\" alt=\"\" />" +data[i]+"</a>\n" +
                            "                <div class=\"actions\">\n" +
                            "                    <a href=\"#\" title=\"\"><img src=\"images/icons/update.png\" alt=\"\" /></a>\n" +
                            "                    <a href=\"#\" title=\"\"><img src=\"images/icons/delete.png\" alt=\"\" /></a>\n" +
                            "                </div>"
                        )
                    }

                }
            })//ajax初始化请求结束

        }
    });



</script>



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

    <ul id="menu" class="nav">
        <%--class=dash房子图标--%>  <%-- <li class="dash"><a href="" title=""><span>机房管理员</span></a></li>--%>
        <%--charts统计图标--%>
            <li class="charts"><a href="../mstp_107_tfcrown/HallManagerIndex.jsp" title="" class="active" ><span>上下机操作</span></a></li>
            <%--   <li class="charts"><a href="#" title=""><span>时间段设置</span></a></li>--%>
            <li class="ui"><a href="../mstp_107_tfcrown/HallManageHall.jsp" title=""><span>机房管理</span></a></li>
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
    <%--<div class="statsRow">
        <div class="wrapper">
            <div class="controlB">
                <ul>
                    <li><a href="#" onclick="goComputer();" title=""><img src="<%=basePath %>images/icons/control/32/plus.png" alt="" /><span>上机</span></a></li>
                    <li><a href="#" title=""><img src="<%=basePath %>images/icons/control/32/database.png" alt="" /><span>New room entry</span></a></li>
                    <li><a href="#" title=""><img src="<%=basePath %>images/icons/control/32/hire-me.png" alt="" /><span>Add new SystemManager</span></a></li>
                    &lt;%&ndash;<li><a href="#" title=""><img src="images/icons/control/32/statistics.png" alt="" /><span>Check statistics</span></a></li>&ndash;%&gt;
                    <li><a href="#" title=""><img src="<%=basePath %>images/icons/control/32/comment.png" alt="" /><span>Check StDaily</span></a></li>
                    <li><a href="#" title=""><img src="<%=basePath %>images/icons/control/32/order-149.png" alt="" /><span>Check SmDaily</span></a></li>
                </ul>
                <div class="clear"></div>
            </div>
        </div>
    </div>--%>

    <div class="line"></div>

    <div class="widget">
        <div class="title"><img src="images/icons/dark/images2.png" alt="" class="titleIcon" /><h6>机房信息</h6></div>
        <div class="line"></div>
        <div class="gallery" id="dynamicF" style="display: flex">
            <div id="dynamic" style="width: 80%;">
                <ul id="dynamicHall" >
                    <%--<li id="dynamicCreate1"><a href="images/big.png" title="" rel="lightbox"><img src="images/myPic/computer1.jpg" style="height:101px;width: 101px" alt="" /></a>
                        <div class="actions">
                            <a href="#" title=""><img src="images/icons/update.png" alt="" /></a>
                            <a href="#" title=""><img src="images/icons/delete.png" alt="" /></a>
                        </div>
                    </li>--%>

                </ul>
                <%--<div class="fix"></div>--%>
            </div>

        </div>
    </div>

</div>

<input id="hideHallId" style="display: none"/>
<input id="hideHall" style="display: none"/>
<%--<div style="display: none" id="hideHallId"></div>--%>
<%--<form action="#" style="display: none">
    <label></label><input id="hideHallId" value="default" style="display: none"/>
</form>--%>
</body>
</html>
