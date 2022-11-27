<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/28
  Time: 2:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  request.setCharacterEncoding("utf-8");
  Cookie userId = new Cookie("userId", URLEncoder.encode(request.getParameter("userId"),"uft-8"));
  Cookie userName = new Cookie("userName", URLEncoder.encode(request.getParameter("userName"),"uft-8"));
  Cookie userEmail = new Cookie("userEmail", URLEncoder.encode(request.getParameter("userEmail"),"uft-8"));

  userId.setMaxAge(24*60*60);
  userName.setMaxAge(24*60*60);
  userEmail.setMaxAge(24*60*60);

  response.addCookie(userId);
  response.addCookie(userName);
  response.addCookie(userEmail);

  response.sendRedirect("./checkAddUser.jsp");
%>
</body>
</html>
