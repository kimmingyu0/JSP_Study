<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-30
  Time: 오전 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        session.invalidate();
        response.sendRedirect("Login.jsp");
    %>
</body>
</html>
