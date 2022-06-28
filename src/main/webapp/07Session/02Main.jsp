<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-28
  Time: 오전 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>MAIN</h1>
세션ID : <%=session.getId() %><br>
계정ID : <%=session.getAttribute("ID") %><br>

<a href="02Logout.jsp">로그아웃</a>
</body>
</html>
