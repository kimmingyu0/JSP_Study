<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-23
  Time: 오후 3:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <%@ page import="Ch03.*" %>

    <%

        request.setAttribute("02Page","02Page에서 전달하는 내용");
        BookDTO book = new BookDTO("1010","JAVA정석","00미디어");

        request.setAttribute("book",book);

        /* 포워딩 방식 */
        //RequestDispatcher
        //클라이언트로부터의 요청을 JSP/Servelet내의 특정 자원으로
        //-> Fowarding 처리를 하기 위해 사용되는 클래스

        //request.getRequestDispatcher(URL);
        //->Fowarding 경로 지정

        //dispatcher.foward()
        //request객체, reponse객체의 제어권을 넘기는데 사용
        RequestDispatcher dispatcher =
        request.getRequestDispatcher("03Page.jsp");
        dispatcher.forward(request,response);
    %>
</body>
</html>
