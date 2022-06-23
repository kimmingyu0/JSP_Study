<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-23
  Time: 오후 4:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<h1>Foward결과</h1>
<%
  String userid = request.getParameter("userid");
  String pwd = request.getParameter("pwd");
%>
ID : <%=userid %><br>
PW : <%=pwd %><br>
  </body>
</html>
