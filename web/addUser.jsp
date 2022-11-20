<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/20
  Time: 10:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="./processAddUser.jsp" method="post">
  <input type="text" name="id">
  <input type="password" name="password">
  <input type="text" name="name">
  <input type="text" name="email">
  <input type="text" name="phonenumber">
  <input type="submit" value="전송">
</form>
</body>
</html>
