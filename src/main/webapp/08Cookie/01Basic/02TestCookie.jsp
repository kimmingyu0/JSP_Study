<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-29
  Time: 오후 4:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    if(cookies!=null)
    {
        for(int i=0;i<cookies.length;i++)
        {
            out.println(cookies[i].getName()+","+cookies[i].getValue()+"<br>");
        }
    }
%>

</body>
</html>
