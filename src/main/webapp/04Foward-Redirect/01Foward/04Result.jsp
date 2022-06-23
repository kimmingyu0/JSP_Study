<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-23
  Time: 오후 3:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String id = request.getParameter("userid");
        String pw = request.getParameter("pwd");
        String page02=(String)request.getAttribute("02Page");
        String page03=(String)request.getAttribute("03Page");
    %>
ID : <%=id %><br>
PW : <%=pw %><br>
P2 : <%=page02 %><br>
P3 : <%=page03 %><br>
</body>
</html>
