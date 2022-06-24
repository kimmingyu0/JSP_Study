<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-24
  Time: 오후 4:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    System.out.println("redirect.jsp에서 request파라미터 확인");
    System.out.println("이름 : "+name);
    System.out.println("나이 : "+age);
    System.out.println("redirect_ret으로 다시 요청하라고 응답해줌");
    response.sendRedirect("redirect_ret.jsp");
%>
</body>
</html>
