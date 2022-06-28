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
    <%
        String id = request.getParameter("userid");
        String pw = request.getParameter("pwd");

        if(id.equals("abcd")&&pw.equals("1234"))
        {
            session.setAttribute("ID",id);
            session.setAttribute("PW",pw);
            session.setMaxInactiveInterval(30);
            response.sendRedirect("03Main.jsp");
        }
        else
        {
            response.sendRedirect("03LoginForm.jsp");
        }
    %>
</body>
</html>
