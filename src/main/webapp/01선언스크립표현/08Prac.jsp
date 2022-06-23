<%@page import="java.util.Scanner"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
	Scanner로 행과 열의 개수를 입력받아 테이블을 생성.
-->
<%
	Scanner sc = new Scanner(System.in);
	System.out.print("행의 개수를 입력하세요 : ");
	int hang = sc.nextInt();
	System.out.print("열의 개수를 입력하세요 : ");
	int yuel = sc.nextInt();
	int cnt=1;
	out.println("<table>");
	for(int i=0;i<hang;i++)
	{
%>
	<tr>
	<%
		for(int j=0;j<yuel;j++)
		{
			out.println("<td>"+(cnt++)+"<td>");
		}
	%>
	</tr>
	<%
	}
	
%>
</table>
<%
sc.close();
%>
</body>
</html>