<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-24
  Time: 오전 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String mode = request.getParameter("mode");
        if(mode.equals("type1"))
        {
        %>
            <jsp:forward page="A.jsp"></jsp:forward>
        <%
        }
        else if(mode.equals("type2"))
        {
        %>
            <jsp:forward page="B.jsp"></jsp:forward>
        <%
        }
        else{
        %>
            <jsp:forward page="C.jsp"></jsp:forward>
        <%
        }
    %>
</body>
</html>
