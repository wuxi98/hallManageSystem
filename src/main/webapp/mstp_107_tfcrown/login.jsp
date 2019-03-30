<%--
  Created by IntelliJ IDEA.
  User: PBC
  Date: 2019/1/15
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <link href="css/main.css" rel="stylesheet" type="text/css"/>
</head>

<body class="nobg loginPage">

<div class="topNav">
    <div class="wrapper">
        <div class="userNav">
            <span>欢迎来到机房管理系统</span>
        </div>
        <div class="clear"></div>
    </div>
</div>


<!-- Main content wrapper -->
<div class="loginWrapper">
    <div class="loginLogo"><img src="images/loginLogo.png" alt=""/></div>
    <div class="widget">
        <div class="title"><img src="images/icons/dark/files.png" alt="" class="titleIcon"/><h6>Login panel</h6></div>
        <form action="/hallManager/login" id="validate" class="form">
            <fieldset>
                <div class="formRow">
                    <label>Username:</label>
                    <div class="loginInput"><input type="text" name="id" class="validate[required]" id="id"/>
                    </div>
                    <div class="clear"></div>
                </div>

                <div class="formRow">
                    <label>Password:</label>
                    <div class="loginInput">
                        <input type="password" name="password" class="validate[required]"
                               id="password"/>
                    </div>
                    <div class="clear"></div>
                </div>

                <div class="formRow">
                    <label>kind:</label>
                    <div class="loginInput">
                        <select id="selectValue" onchange="changeValue()">
                            <option value="hallManager" id="hallManager" selected>hallManager</option>
                            <option value="systemManager" id="systemManager">systemManager</option>
                            <option value="student" id="student">student</option>
                        </select>
                    </div>
                    <div class="clear"></div>
                </div>
                <span style="color: red">
                    ${sessionScope['org.springframework.web.servlet.support.SessionFlashMapManager.FLASH_MAPS'][0]['msg']}
                    <%  session.removeAttribute("org.springframework.web.servlet.support.SessionFlashMapManager.FLASH_MAPS");%>
                </span>
                <div class="loginControl">
                    <input type="submit" value="login"  class="dredB logMeIn" />
                    <div class="clear"></div>
                </div>
            </fieldset>
        </form>
    </div>
</div>

<script type="application/javascript">
    function changeValue(){
       // alert("come");
        var selectValue = document.getElementById("selectValue").value;
        var form1 = document.getElementById("validate");


        if (selectValue==="hallManager")
            form1.action="../hallManager/login";
        else if (selectValue==="systemManager")
            form1.action="../systemManager/login";
        else if (selectValue==="student")
            form1.action="../student/login";
      //  alert("action:"+form1.action);
    }
</script>


</body>
</html>
