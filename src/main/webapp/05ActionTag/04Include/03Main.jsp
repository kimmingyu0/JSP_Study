<%--
  Created by IntelliJ IDEA.
  User: 김민규
  Date: 2022-06-24
  Time: 오전 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
  String height=request.getParameter("height");
  String border=request.getParameter("border");
  String bgcolor=request.getParameter("bgcolor");
%>

<div id="wrapper">
  <!--헤더 -->
  <jsp:include page="module/header.jsp" >
    <jsp:param name="border" value="<%=border%>"/>
    <jsp:param name="bgcolor" value="<%=bgcolor%>"/>
    <jsp:param name="height" value="<%=height%>"/>
  </jsp:include>

  <!--네비 -->
  <jsp:include page="module/nav.jsp" />

  <!--컨텐츠 -->
  <div>컨텐츠~</div>

  <!--푸터 -->
  <jsp:include page="module/footer.jsp" />

</div>

  <form action="03Main.jsp">
    <fieldset>
      <legend>헤더 설정</legend>
      <label>헤더 높이</label><input name="height"><br>
      <label>배경 컬러</label><input name="bgcolor"><br>
      <label>테두리유무</label><input name="border"><br>
      <input type="submit">
    </fieldset>
  </form>

</body>
</html>
