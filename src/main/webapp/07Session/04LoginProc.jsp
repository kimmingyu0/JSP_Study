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
    <jsp:useBean id="sessionSave" class="Ch07.SessionSave" scope="application" />

    <%
        String id = request.getParameter("userid");
        String pw = request.getParameter("pwd");

        session.setAttribute("ID",id);
        session.setAttribute("PW",pw);
        session.setMaxInactiveInterval(60*15);

        //세션 정보 저장
        sessionSave.AddSession(id, session);

        response.sendRedirect("04Main.jsp");
    %>
</body>
</html>
