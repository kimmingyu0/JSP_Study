<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-23
  Time: 오후 4:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="02Page.jsp">
        <input name=userid><br>
        <input name=pwd><br>
        <select name=isForward>
            <option value="true" selected>Forward</option>
            <option value="flase">Redirect</option>
        </select>
        <input type="submit">
    </form>
</body>
</html>
