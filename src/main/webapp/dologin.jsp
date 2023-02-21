<%@ page import="dao.TusersDao" %>
<%@ page import="dao.impl.TusersDaoImpl" %>
<%@ page import="pojo.Tusers" %>
<%--
  Created by IntelliJ IDEA.
  User: zhixiang
  Date: 2022/12/12
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  //后台处理
  //接收用户输入的用户名和密码
  request.setCharacterEncoding("UTF-8");
  String name=request.getParameter("username");
  String password=request.getParameter("password");

  TusersDao tusersDao=new TusersDaoImpl();
  Tusers tusers=tusersDao.login(name,password);
  if(tusers!=null){
    //登录成功，页面要进行跳转：转发（传递数据，不改变url地址），重定向（）
    request.setAttribute("loginUser",tusers);
    request.getRequestDispatcher("welcome.jsp").forward(request,response);
  }
  else{
    //response.sendRedirect("login.jsp");
    out.print("<script>alert('登录失败，请重新登录');location.href='login.jsp'</script>");
  }
%>