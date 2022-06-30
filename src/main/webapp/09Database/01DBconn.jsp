<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-30
  Time: 오후 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%@page import="java.sql.*,java.util.*" %>
    <%
        String url = "jdbc:oracle:thin:@localhost:1521:XE";
        String id = "book_ex";
        String pw = "1234";
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection(url,id,pw);
            System.out.println("Connected...");

        }catch (Exception e){
            e.printStackTrace();
        }




    %>
</body>
</html>
