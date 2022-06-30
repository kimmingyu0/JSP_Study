<%--
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
    <%
        Cookie[] cookies = request.getCookies();
        String userid = null;
        String pwd = null;
        String idchk = "";
        String pwdchk = "";
        if(cookies!=null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("id"))
                    userid = cookie.getValue();
                if (cookie.getName().equals("pwd"))
                    pwd = cookie.getValue();
                if (cookie.getName().equals("idchk"))
                    idchk = cookie.getValue();
                if (cookie.getName().equals("pwdchk"))
                    pwdchk = cookie.getValue();
            }
        }
        System.out.println(userid+","+pwd+","+idchk+","+pwdchk);
        if (!idchk.equals("on"))
            userid = "";
        if (!pwdchk.equals("on"))
            pwd = "";

    %>


    <h1>Login Page</h1>
    <form action="LoginProc.jsp">
        ID : <input type="text" name="userid" value="<%=userid %>"><br>
        PW : <input type="password" name="pwd" value="<%=pwd %>"><br>
        <input type="checkbox" name="idchk" >아이디저장&nbsp;
        <input type="checkbox" name="pwdchk" >비밀번호 저장&nbsp;
        <input type="submit" value="로그인">
    </form>
</body>
</html>
