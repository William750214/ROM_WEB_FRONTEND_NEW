<%@ page import="java.io.PrintWriter" %>
<%--
  Created by IntelliJ IDEA.
  User: William
  Date: 2018/9/9
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //    Map studentMap = request.getParameterMap();
//    System.out.println(studentMap);

    String name = request.getParameter("name");

    String callback = request.getParameter("callbackFunc");

    System.out.println("Name: " + name);

//    response.setHeader("Access-Control-Allow-Origin", "*");
//    response.addHeader("Access-Control-Allow-Method", "POST,GET");

    response.setContentType("text/json; charset=utf-8");
    PrintWriter pw = response.getWriter();

//    pw.println("Hello " + name + " !");
//    pw.println("{\"name\":\"zhangsan\",\"age\":18, \"sex\":true}");
    pw.println(callback + "({\"name\":\"zhangsan\",\"age\":18, \"sex\":true})");

%>
<%--<html>--%>
<%--<head>--%>
<%--<title>Ajax</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h2>Hello Ajax!</h2>--%>
<%--</body>--%>
<%--</html>--%>
