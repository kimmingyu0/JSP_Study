<%@ page import="java.util.ArrayList" %>
<%@ page import="Ch07.ProductDTO" %><%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-28
  Time: 오전 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:useBean id="sessionSave" class="Ch07.SessionSave" scope="application" />
    <jsp:useBean id="CartBean" class="Ch07.CartRepository" scope="application" />

    <%@page import="java.util.*,Ch07.*" %>
    <%
        String id = request.getParameter("userid");
        String pw = request.getParameter("pwd");

        session.setAttribute("ID",id);
        session.setAttribute("PW",pw);
        session.setMaxInactiveInterval(30);

        //세션 정보 저장
        sessionSave.AddSession(id, session);

        //계정 전용 Arraylist<ProductDTO>를 생성 + 연결
        Set<String> set = CartBean.cart.keySet();
        boolean flag=false;
        for(String mapid : set)
        {
            if(mapid.equals(id)){
                flag=true;
            }
        }
        if(!flag) {
            ArrayList<ProductDTO> list = new ArrayList();
            CartBean.cart.put(id, list);
        }
        response.sendRedirect("05Main.jsp");
    %>
</body>
</html>
