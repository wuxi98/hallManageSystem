<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PBC
  Date: 2019/1/9
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.nchu.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
这是测试页面
<c:forEach items="${list}" var="obj">
    <tr>
        <td>${obj.hallId}</td>
    </tr>
</c:forEach>

</body>
</html>
