<%--
  Created by IntelliJ IDEA.
  User: zhixiang
  Date: 2022/12/12
  Time: 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/page1.css">
    <link rel="stylesheet" href="css/top.css">
</head>

<div class="container">
    <div class="login-wrapper">
        <form name="true" action="dologin.jsp">
            <div class="header">登 录</div>
            <div class="form-wrapper">
                <input type="text" name="username" placeholder="用户名" class="input-item">
                <input type="password" name="password" placeholder="密码" class="input-item">
                <!-- <table>
               <tr>
                   <td><input type="text" name="checkCode" id="inputCode" placeholder="验证码" class="input-item"></td>
                   <td><div id="checkCode" class="code"  onclick="createCode(4)" ></div></td>
               </tr></table> -->
                <input type="text" name="checkCode" id="inputCode" placeholder="验证码" class="input-item">
                <table>
                    <tr>
                        <td>
                            <div id="checkCode" class="code" onclick="createCode(4)">点击此处可刷新</div>
                        </td>
                        <td>点击刷新验证码</td>
                    </tr>
                </table>
                <button class="btn"  onclick="validateCode2()">立即登录</button>

            </div>
        </form>
        <div class=" ms">
                没有账号？ <a href="register.jsp">点击注册</a>
            </div>
    </div>
</div>
</body>
<%--<script type="text/javascript" src="js/createCode.js"></script>--%>
<script type="text/javascript" src="js/createCode.js"></script>
</html>
