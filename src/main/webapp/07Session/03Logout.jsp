<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-28
  Time: 오전 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String id=(String)session.getAttribute("ID");
        session.invalidate();

        if(id!=null)
        {
            %>
                <script>
                    alert("<%=id %>님 로그아웃");
                    location.href="03LoginForm.jsp";
                </script>
            <%
        }
    %>
</body>
</html>
