<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-27
  Time: 오후 2:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  이 페이지는 3초마다 새로고침이 됩니다<br>
    <%
        response.setIntHeader("Refresh",3);

    %>
    <%=new java.util.Date().toString()%>
</body>
</html>
