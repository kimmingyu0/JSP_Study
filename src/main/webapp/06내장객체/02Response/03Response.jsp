<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-27
  Time: 오후 3:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@page import="java.io.*, java.util.*" %>
<%
    try{
        FileInputStream in = new FileInputStream("c:\\upload\\test.pptx");

        response.setHeader("Content-Disposition", "attachment; filename=test.pptx");
        response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");

        ServletOutputStream os = response.getOutputStream();

        while(true)
        {
            int data=in.read();
            if(data==-1)
                break;
            os.write((byte)data);
        }
        os.flush();
        os.close();
        in.close();

    }catch(Exception e){
        e.printStackTrace();
    }
%>

</body>
</html>
