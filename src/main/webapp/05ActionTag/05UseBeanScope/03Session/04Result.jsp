<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-27
  Time: 오전 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <!-- Bean 생성-->
    <jsp:useBean id="bean" class="Ch05.TestBean" scope="session" />

    <h1>RESULT</h1>
    확인 : <%=bean.toString()%>
</body>
</html>
