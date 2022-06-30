<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-30
  Time: 오후 3:30
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
    ResultSet rs = null;

    try{
        //드라이브를 메모리공간에 적재
        Class.forName("oracle.jdbc.driver.OracleDriver");

        //DB에 연결
        conn = DriverManager.getConnection(url,id,pw);
        System.out.println("Connected...");
        //쿼리 객체 생성
        pstmt = conn.prepareStatement("insert into book_tbl values(?,?,?,?,?,?)");
        int i=1;
        while(i<=200)
        {
            pstmt.setInt(1, i);
            pstmt.setInt(2, (1000+i));
            pstmt.setString(3, "Name"+i);
            pstmt.setString(4, "Publisher"+i);
            pstmt.setInt(5,2*i);
            pstmt.setInt(6,3*i);
            int result = pstmt.executeUpdate();
            i++;
        }

    }catch (Exception e){
        e.printStackTrace();
    }finally{
        try{pstmt.close();}catch (Exception e1){e1.printStackTrace();}
        try{conn.close();}catch (Exception e1){e1.printStackTrace();}
    }
%>
</body>
</html>
