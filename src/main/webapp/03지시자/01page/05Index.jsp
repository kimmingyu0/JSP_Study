<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
	input{
		margin-top:10px;
		width:200px;
		height:50px;
		border-radius:20px;
		border:1px solid gray;
			
	}
	button{
		width:200px;
		height:50px;
		background-color:skyblue;
		border-radius:20px;
		margin-top:15px;
		font-size:20px;
		border:1px solid skyblue;	
	}
</style>

	<form action="05Main.jsp">
		<input name=BookCode placeholder="책코드를 입력하세요"
		onfocus="this.placeholder=''"
		onblur="this.placeholder='책코드를 입력하세요'"><br>
		<input name=BookName placeholder="책이름을 입력하세요"
		onfocus="this.placeholder=''"
		onblur="this.placeholder='책이름를 입력하세요'"><br>
		<input name=Publisher placeholder="출판사를 입력하세요"
		onfocus="this.placeholder=''"
		onblur="this.placeholder='출판사를 입력하세요'"><br>
		<button type=submit>저장</button>
	</form>
</body>
</html>