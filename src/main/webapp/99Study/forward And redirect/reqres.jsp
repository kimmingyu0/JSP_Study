<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-24
  Time: 오후 1:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="foward_ret.jsp" method="get">
    이름 : <input type="text" name="name" /><br>
    나이 : <input type="text" name="age" />
    <input type="submit" value="포워드 요청">
</form>
<hr>
<form action="redirect_ret.jsp" method="get">
    이름 : <input type="text" name="name" /><br>
    나이 : <input type="text" name="age" />
    <input type="submit" value="리다이렉트 요청">
</form>
</body>
</html>
