<%@ page import="org.mindrot.bcrypt.BCrypt" %><%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-30
  Time: 오전 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <!-- 비밀번호 암호화 라이브러리 -->
    <jsp:useBean id="BCrypt" class="org.mindrot.bcrypt.BCrypt" scope="page"/>

    <%
        String userid = request.getParameter("userid");
        String pwd = request.getParameter("pwd");
        String idchk = request.getParameter("idchk");
        String pwdchk = request.getParameter("pwdchk");

//        System.out.println("USERID : " + userid);
//        System.out.println("PWD : " + pwd);
//        System.out.println("IDCHK : " + idchk);
//        System.out.println("PWDCHK : " + pwdchk);

        //비밀번호 암호화
        pwd = BCrypt.hashpw(pwd,BCrypt.gensalt());
        System.out.println("PWD : " +pwd);

        Cookie c1 = new Cookie("id",userid);
        Cookie c2 = new Cookie("pwd",pwd);
        Cookie c3 = new Cookie("idchk",idchk);
        Cookie c4 = new Cookie("pwdchk",pwdchk);

        response.addCookie(c1);
        response.addCookie(c2);
        response.addCookie(c3);
        response.addCookie(c4);
        response.sendRedirect("Main.jsp");
    %>
</body>
</html>
