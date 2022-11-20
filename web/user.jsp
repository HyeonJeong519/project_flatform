<%@ page import="dao.UserRepository" %>
<%@ page import="dto.User" %><%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/20
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>내 정보</h3>
<%
  String id = request.getParameter("id");
  UserRepository dao = UserRepository.getInstance();
  User user = dao.getUserById(id);
%>
<p>이름 : <%=user.getName()%></p>
<p>아이디 : <%=user.getId()%></p>
<p>비밀번호 : <%=user.getPassword()%></p>
<p>전화번호 : <%=user.getPhoneNumber()%></p>
<p>이메일 : <%=user.getEmail()%></p>
<jsp:include page="footer.jsp"/>
</body>
</html>
