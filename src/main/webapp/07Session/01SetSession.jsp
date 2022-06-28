<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-27
  Time: 오후 4:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>세션객체에 값넣기</h1>

<%
    String id = "abcd";
    String pw = "1234";

    session.setAttribute("ID", id);
    session.setAttribute("PW", pw);
    session.setMaxInactiveInterval(20);
%>
<a href="01SessionInfo.jsp">세션정보 확인</a>
</body>
</html>
