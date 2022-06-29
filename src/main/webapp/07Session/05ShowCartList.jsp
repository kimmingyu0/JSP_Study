<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-29
  Time: 오후 12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="CartBean" class="Ch07.CartRepository" scope="application" />
<%@page import="java.util.*,Ch07.*" %>
<%
    String id = (String) session.getAttribute("ID");
    ArrayList<ProductDTO> list = CartBean.cart.get(id);
    for(int i=0;i<list.size();i++){
        out.println(list.get(i).toString()+"<br>");
    }
%>


</body>
</html>
