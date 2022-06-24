<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-24
  Time: 오후 1:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    System.out.println("이름 : " +name);
    System.out.println("age : " +age);

    System.out.println("forward_ret으로 요청을 전달");
    RequestDispatcher dispatcher =
    request.getRequestDispatcher("forward_ret.jsp");
    dispatcher.forward(request,response);
%>


