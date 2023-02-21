<%--
  Created by IntelliJ IDEA.
  User: zhixiang
  Date: 2022/12/12
  Time: 12:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/page1.css">
</head>
<script type="text/javascript" src="js/createCode.js"></script>
<body>
<div class="container">
    <div class="login-wrapper">
        <form name="true" action="doregister.jsp">
            <div class="header">注 册</div>

            <div class="form-wrapper">
                <input type="text" name="username" placeholder="用户名" class="input-item">
                <input type="password" name="password" placeholder="登录密码" class="input-item">
                <input type="Password" name="isPassword" placeholder="确认密码" class="input-item">
                <!-- <table>
                   <tr>
                       <td><input type="text" name="checkCode" id="inputCode" placeholder="验证码" class="input-item"></td>
                       <td><div id="checkCode" class="code"  onclick="createCode(4)" ></div></td>
                   </tr></table> -->
                <input type="text" name="checkCode" id="inputCode" placeholder="验证码" class="input-item">
                <table>
                    <tr>
                        <td>
                            <div id="checkCode" class="code" onclick="createCode(4)"></div>
                        </td>
                        <td>点击刷新验证码</td>
                    </tr>
                </table>
                <button class="btn"  onclick="validateCode1()">提交注册</button>
            </div>
        </form>
    </div>
</div>
</body>

</html>