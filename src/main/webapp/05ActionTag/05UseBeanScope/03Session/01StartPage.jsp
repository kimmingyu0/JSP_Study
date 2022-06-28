<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-27
  Time: 오전 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <!-- Bean 생성 -->
    <jsp:useBean id="bean" class="Ch05.TestBean" scope="session" />
    <!-- 값 등록 -->
    <jsp:setProperty name="bean" property="msg1" value="msg1-value" />
    <!-- Redirect(request x) -->
    <%
        response.sendRedirect("02a.jsp");
    %>

</body>
</html>
