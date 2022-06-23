
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
	<div style="font-size:150px;">
	예외발생 메시지 : <%=exception.getMessage() %><br>
	</div>
	
	<script>
		alert("error페이지");
	</script>

</body>
</html>