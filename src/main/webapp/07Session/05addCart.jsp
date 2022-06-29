<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-29
  Time: 오전 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
  <jsp:useBean id="CartBean" class="Ch07.CartRepository" scope="application" />
  <jsp:useBean id="ProductDTO" class="Ch07.ProductDTO" scope="page" />
  <jsp:setProperty name="ProductDTO" property="*" />
  <%@page import="java.util.*,Ch07.*" %>

  <%
//      System.out.println("받은 상품 정보 : "+ ProductDTO.toString());
    String id = (String) session.getAttribute("ID");
    CartBean.cart.get(id).add(ProductDTO);
  %>

  <script>
    alert("상품을 카트에 담았습니다.");
    location.href="05Main.jsp";
  </script>
  </body>
</html>
