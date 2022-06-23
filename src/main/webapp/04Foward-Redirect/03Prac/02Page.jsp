<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-23
  Time: 오후 4:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <!--
        01StartPage로부터 전달받은 isForward의 값이
        true 이면 포워드방식으로 03Forward로 페이지 처리가 되도록 합니다.
        이 때 입력했던 ID/PW를 그대로 화면에 출력해줍니다.

        false 이면 리다이렉트 방식으로 03Redirect로 페이지 처리가 되도록 합니다.
        이 때 입력했던 ID/PW를 화면에 출력해줍니다.
    -->
<%@page import="Ch03.*,java.net.*" %>
<%
    String userid = request.getParameter("userid");
    String pwd = request.getParameter("pwd");
    String isForward = request.getParameter("isForward");
    if(isForward.equals("true"))
    {
        //Forward
        RequestDispatcher dispatcher=
        request.getRequestDispatcher("03Foward.jsp");
        dispatcher.forward(request,response);
    }
    else
    {
        //URL Encoding
        userid = URLEncoder.encode(userid,"UTF-8");
        //Redirect
        response.sendRedirect("03Redirect.jsp?userid="+userid+"&pwd="+pwd);
    }
%>

</body>
</html>
