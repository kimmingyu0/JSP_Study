<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-27
  Time: 오후 2:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String protocol = request.getProtocol();
  String serverName = request.getServerName();
  int serverPort = request.getServerPort();
  String remoteAddr = request.getRemoteAddr();
  String remoteHost = request.getRemoteHost();
  String method = request.getMethod();
  StringBuffer requestURL = request.getRequestURL();
  String requestURI = request.getRequestURI();
  String userBrowser = request.getHeader("User-Agent");
  String fileType = request.getHeader("Accept");
%>
<h1>Request 내장 객체 확인</h1>
프로토콜 : <%=protocol %><br>
서버이름 : <%=serverName %><br>
서버포트 : <%=serverPort %><br>
클라주소 : <%=remoteAddr %><br>
클라이름 : <%=remoteHost %><br>
사용함수 : <%=method %><br>
요청경로 : <%=requestURL %><br>
요청경로 : <%=requestURI %><br>
브라우저 : <%=userBrowser %><br>
파일타입 : <%=fileType %><br>

</body>
</html>
