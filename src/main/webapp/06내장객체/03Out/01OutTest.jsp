<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-27
  Time: 오후 3:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" buffer="5kb" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        out.print("test~!!");out.print("test~!!");out.print("test~!!");out.print("test~!!");
        out.print("test~!!");out.print("test~!!");out.print("test~!!");out.print("test~!!");
    %>

    <hr>
    출력 Buffer의 전체 크기 : <%=out.getBufferSize() %>Byte<br>
    남은 Buffer의 크기 : <%=out.getRemaining() %>Byte<br>
    사용한 Buffer의 크기 : <%=out.getBufferSize()-out.getRemaining() %>Byte<br>
</body>
</html>
