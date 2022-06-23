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
        request.setAttribute("03Page","03Page에서 전달하는 내용");

        /* 포워딩 방식 */
        RequestDispatcher dispatcher=
        request.getRequestDispatcher("04Result.jsp");
        dispatcher.forward(request,response);
    %>
</body>
</html>
