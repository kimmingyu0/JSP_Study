<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="05ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="Ch03.BookDTO" %>
<%
	String BookCode = request.getParameter("BookCode");
	String BookName = request.getParameter("BookName");
	String Publisher = request.getParameter("Publisher");
	
	if(BookCode=="" && BookName==""&&Publisher=="")
	{
		throw new Exception("책 코드,책이름,출판사 셋다 비어있습니더...");
	}else if(BookName=="")
	{
		throw new Exception("정보를 덜 입력하셨습니더...");
	}else if(BookCode=="")
	{
		throw new Exception("정보를 덜 입력하셨습니더...");
	}
	else if(Publisher=="")
	{
		throw new Exception("정보를 덜 입력하셨습니더...");
	}
	
	BookDTO dto = new BookDTO(BookCode,BookName,Publisher);
	out.println("확인 : "+dto);
%>
</body>
</html>