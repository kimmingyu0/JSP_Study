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

    <%@ page import="Ch03.*" %>
    <%
        request.setAttribute("03Page","03Page에서 전달하는 내용");

        SampleDTO sample = new SampleDTO("홍길동","대구");
        request.setAttribute("sample",sample);

        /* 리다에릭트 방식 */
        RequestDispatcher dispatcher=
        request.getRequestDispatcher("04Result.jsp");
        dispatcher.forward(request,response);
    %>
</body>
</html>
