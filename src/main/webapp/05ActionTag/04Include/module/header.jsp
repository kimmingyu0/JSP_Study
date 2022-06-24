<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-23
  Time: 오후 2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
        String border;String bgcolor;String height;
%>
    <%
        border = request.getParameter("border");
        bgcolor = request.getParameter("bgcolor");
        height = request.getParameter("height");
    %>
    <div id="header">
        헤더입니다.
    </div>

    <script>
        const header = document.getElementById("header");
        header.style.border="<%=border%>"
        header.style.backgroundColor="<%=bgcolor %>"
        header.style.height="<%=height %>"
    </script>