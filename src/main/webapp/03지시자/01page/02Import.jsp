<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.util.* ,Ch03.SampleDTO" %>

<%
	/*java.util.Scanner sc = new java.util.Scanner(System.in); */
	Scanner sc = new Scanner(System.in);
	
	/* Ch03.SampleDTO dto = new Ch03.SampleDTO("홍길동","55"); */
	SampleDTO dto = new SampleDTO("홍길동","55");
%>

</body>
</html>