<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-24
  Time: 오후 4:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = request.getParameter("name");
    String age = request.getParameter("age");
%>
<html>
<head>
    <title>리디렉트 결과</title>
</head>
<body>
리디렉트 결과입니다.<br>
브라우저에서 새로 요청한 것이므로<br>
요청 URL부분이 변경되고 request객체도 새로 생성됩니다.(값 유지 안 됨)<br>
<%="redirect_ret.jsp에서 request 파라미터 확인"%><br>
<%="이름 : " +name %>
<%="나이 : " +age %>
</body>
</html>
