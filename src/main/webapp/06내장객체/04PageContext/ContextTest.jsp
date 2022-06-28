<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-27
  Time: 오후 4:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        pageContext.getOut().print("Hello World<br>");
        //out.print
        HttpServletResponse res=
                (HttpServletResponse)pageContext.getResponse();

        res.sendError(404,"에러지롱");
    %>

</body>
</html>
