<%@ page import="Ch05.BookBean" %>
<%@ page import="java.awt.print.Book" %><%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-27
  Time: 오전 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%@page import="Ch05.BookBean" %>
    <%
//        String bookcode = request.getParameter("bookcode");
//        String bookname = request.getParameter("bookname");
//        String bookprice = request.getParameter("bookprice");
//        BookBean bean = new BookBean();
//
//        bean.setBookcode(bookcode);
//        bean.setBookname(bookname);
//        bean.setBookprice(bookprice);
    %>
    <%--    확인 : <%=bean.toString()%><br>--%>

    <jsp:useBean id="bean" class="Ch05.BookBean" scope="page" />
    <jsp:setProperty name="bean" property="*" />
    확인 : <%=bean.toString()%><br>
    코드 : <%=bean.getBookcode()%><br>
    제목 : <%=bean.getBookname()%><br>
    가격 : <%=bean.getBookprice()%><br>




</body>
</html>
