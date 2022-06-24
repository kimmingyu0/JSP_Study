<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-24
  Time: 오후 1:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = request.getParameter("name");
    String age = request.getParameter("age");
%>
<html>
<head>
    <title>포워드 결과</title>
</head>
<body>
포워드 결과입니다.<br>
요청 URL부분이 변경되지 않고 request객체도 유지됩니다.<br>
<%="forward.ret.jsp에서 request파라미터 확인 "%><br>
<%="이름 : "+name%><br>
<%="나이 : "+age%><br>
</body>
</html>
