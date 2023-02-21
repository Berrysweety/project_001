<%--
  Created by IntelliJ IDEA.
  User: zhixiang
  Date: 2022/12/12
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/top.css">

</head>
<script type="text/javascript" src="js/showTime.js"></script>
<body onload="showTime()">
<div class="b">
现在是<span id="time"></span>
欢迎你，${loginUser.username}登录成功啦！</div>
</body>
</html>
