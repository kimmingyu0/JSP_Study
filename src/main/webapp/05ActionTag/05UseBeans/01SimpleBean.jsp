<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-27
  Time: 오전 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <!-- 빈 객체 생성-->
    <jsp:useBean id="test1" class="Ch05.SimpleBean" scope="page" />
    
    <!-- 빈 객체 속성값 저장 -->
    <jsp:setProperty name="test1" property="msg1" value="MSG1의 값입니다." />
    <jsp:setProperty name="test1" property="msg2" value="MSG2의 값입니다." />

    <!-- 빈 객체 속성값 확인 -->
    MSG1 : <jsp:getProperty name="test1" property="msg1" /><br>
    MSG2 : <jsp:getProperty name="test1" property="msg2" /><br>
    <hr>

    <%@page import="Ch05.SimpleBean" %>
    <%
        SimpleBean bean = new SimpleBean();
        bean.setMsg1("메시지 1");
        bean.setMsg2("메시지 2");
    %>
    MSG1 = <%=bean.getMsg1()%><br>
    MSG2 = <%=bean.getMsg2()%><br>

</body>
</html>
