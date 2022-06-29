<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-29
  Time: 오전 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.Iterator" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<jsp:useBean id="sessionSave" class="Ch07.SessionSave" scope="application" />

<%
    Set<String> set=sessionSave.slist.keySet();
    Iterator<String> iter = set.iterator();
    while(iter.hasNext())
    {
        String id = iter.next();
        String pw = (String)sessionSave.slist.get(id).getAttribute("PW");
        out.println("접속 계정명 : "+id+" 접속 계정 패스워드 : "+pw+"<br>");
    }

%>






%>
</body>
</html>
