<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-23
  Time: 오후 3:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%@page import="Ch03.*,java.net.*" %>
<%@ page import="sun.text.normalizer.UTF16" %>
<%
    request.setAttribute("03Page","03Page에서전달하는 내용");

    SampleDTO sample = new SampleDTO("홍길동","대구");
    request.setAttribute("sample",sample);

    /* 리다이렉트 방식 */
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    String param = URLEncoder.encode("한글값테스트","UTF-8");

    response.sendRedirect("04Result.jsp?Retest="+param);



%>
</body>
</html>
