<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-28
  Time: 오전 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!--
    1. 입력값 검증 (ID와 PW가 abcd, 1234가 일치한지 확인)
    2. 세션객체 값 저장(ID : abcd , PW : 1234)
    3. 세션유지 시간 지정(30초)
    4. 01Main.jsp로 이동
    5. 30초 동안 아무작업을 하지 않으면 자동 로그아웃 (세션제거후 01Index.jsp 이동) 처리 할 것.

    <%
        String id = request.getParameter("userid");
        String pw = request.getParameter("pwd");
        if(id.equals("abcd")&&pw.equals("1234"))
        {
            session.setAttribute("ID",id);
            session.setAttribute("PW",pw);
            session.setMaxInactiveInterval(30);
            response.sendRedirect("01Main.jsp");
        }
        else
        {
            response.sendRedirect("01Index.jsp");
        }
    %>
-->
</body>
</html>
