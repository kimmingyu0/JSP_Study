<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-24
  Time: 오후 2:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@page import="java.io.*" %>
<%
    String img1 = request.getParameter("img1");
    String img2 = request.getParameter("img2");
    String img3 = request.getParameter("img3");
    String img4 = request.getParameter("img4");

    Writer wout = new FileWriter("C:\\banner\\bname.txt");
    wout.write(img1+" ");
    wout.write(img2+" ");
    wout.write(img3+" ");
    wout.write(img4+" ");
    wout.flush();
    wout.close();

    response.sendRedirect("01Admin.jsp");
%>


</body>
</html>
