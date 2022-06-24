<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-24
  Time: 오전 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Result</h1>

StartPage : <%=request.getParameter("userid") %><br>
StartPage : <%=request.getParameter("pwd") %><br>
02Page : <%=request.getParameter("02Page") %><br>
03Page : <%=request.getParameter("03Page") %><br>

</body>
</html>
