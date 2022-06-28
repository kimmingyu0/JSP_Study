<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-27
  Time: 오전 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<jsp:useBean id="MemberBean" class="Ch05.MemberBean" />
<jsp:setProperty name="MemberBean" property="*"/>

확인 : <%=MemberBean.getEmail()%><br>
확인 : <%=MemberBean.getPwd()%><br>
확인 : <%=MemberBean.getAddr1()%><br>
확인 : <%=MemberBean.getAddr2()%><br>
</body>
</html>
