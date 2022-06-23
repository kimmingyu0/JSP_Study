<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
	.errortitle{
		font-size:50px;
		text-align:center;
	}
	.errormessage{
		font-size:50px;
		font-weight:700;
		color: red;
		text-align:center;
		margin-top:15px;
	}
</style>

	<div class="errortitle">
		EMERGENCY
	</div>
	<div class="errormessage">
		<%=exception.getMessage() %><br>
	</div>
	
</body>
</html>