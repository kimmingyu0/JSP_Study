<%--
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
<h1>MAIN</h1>
세션ID : <%=session.getId() %><br>
계정ID : <%=session.getAttribute("ID") %><br>
세션 유지시간 : <%=session.getMaxInactiveInterval() %><br>
<p id="timer"></p>
<script>
    // stime = new Date();
    max=<%=session.getMaxInactiveInterval() %>;
    //alert("시작시간 : "+stime+"\n MAX : "+max);
    function timer(){
        max = max-1;
        if(max<0)
        {
            clearInterval(tmp);
            alert("세션종료");
            location.href="03LoginForm.jsp";
        }
        document.getElementById("timer").innerHTML=max;
    }
    tmp = setInterval(timer,1000);
</script>

<a href="03Logout.jsp">로그아웃</a>
</body>
</html>
