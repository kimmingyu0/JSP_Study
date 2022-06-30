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
    String url = "jdbc:oracle:thin:@localhost:1521:XE"; //DBMS 접속 URL
    String id = "book_ex";                              //ID
    String pw = "1234";                                 //PW

    Connection conn = null;

    PreparedStatement pstmt = null;
    ResultSet rs =null;
    try{
        //드라이브를 메모리공간에 적재
        Class.forName("oracle.jdbc.driver.OracleDriver");

        //DB에 연결
        conn = DriverManager.getConnection(url,id,pw);

        System.out.println("Connected...");

        //쿼리 객체
        pstmt = conn.prepareStatement("select * from book_tbl where no between ? and ?");
        pstmt.setInt(1,130);
        pstmt.setInt(2,150);

        //쿼리 전송
        rs = pstmt.executeQuery();
        while(rs.next())
        {
            out.println(rs.getInt("No")+" | ");
            out.println(rs.getInt("BookCode")+" | ");
            out.println(rs.getString("BookName")+" | ");
            out.println(rs.getString("Publisher")+" | ");
            out.println(rs.getInt("TotalPage")+" | ");
            out.println(rs.getInt("Amount")+"<br>");
        }

    }catch (Exception e){
        e.printStackTrace();
    }finally{
        try{rs.close();}catch (Exception e1){e1.printStackTrace();}
        try{conn.close();}catch (Exception e1){e1.printStackTrace();}
    }


%>
</body>
</html>
