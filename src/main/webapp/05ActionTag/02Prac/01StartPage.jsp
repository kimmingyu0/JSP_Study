<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-24
  Time: 오전 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="02Forwarder.jsp">
    <input name="userid"><br>
    <input name="pwd"><br>
    <select name="mode">
        <option value="type1">A->B->C</option>
        <option value="type2">B->C</option>
        <option value="type3">C</option>
    </select>
    <input type="submit">

</form>
</body>
</html>
