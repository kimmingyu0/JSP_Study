<%@ page import="java.io.FileWriter" %><%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-27
  Time: 오후 2:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MAIN PAGE</title>
    <%
        String remoteIP = request.getRemoteAddr();
    %>
    <%=remoteIP %>님이 접속하셨습니다!<br>
    <%@page import="java.io.*,java.util.*" %>
    <%
        try{
            FileWriter wout = new FileWriter("c:\\upload\\test.txt",true);
            //접속날짜시간 , 원격 IP , 원격브라우저
            wout.write(new Date().toString()+" | ");
            wout.write(request.getRemoteAddr()+" | ");
            wout.write(request.getHeader("User-Agent")+"\n");
            wout.flush();
            wout.close();
        }catch(Exception e){e.printStackTrace();}


    %>
</head>
<body>

</body>
</html>
