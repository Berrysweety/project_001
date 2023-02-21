<%@ page import="pojo.Tusers" %>
<%@ page import="dao.TusersDao" %>
<%@ page import="dao.impl.TusersDaoImpl" %>
<%--
  Created by IntelliJ IDEA.
  User: zhixiang
  Date: 2022/12/19
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String isPassword = request.getParameter("isPassword");
    TusersDao tusersDao = new TusersDaoImpl();
    int num = tusersDao.register(username, password, isPassword);
    if (username.equals("") || password.equals("") || isPassword.equals("")) {
        out.print("<script>alert('输入项不能为空');location.href='register.jsp'</script>");
    } else {
        if (num == 0) {
            out.print("<script>alert('用户名已被注册，请重新注册！');location.href='register.jsp'</script>");
        } else if (num == 1) {
            out.print("<script>alert('注册成功,即将进入到登录页面');location.href='login.jsp'</script>");
        } else if (num == 2) {
            out.print("<script>alert('两次密码不一致，请重新输入');location.href='register.jsp'</script>");
        }
    }
%>
