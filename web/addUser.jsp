<script type="text/javascript" src="./recourses/js/validation.js"></script>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="./processAddUser.jsp" method="post">
  <input type="text" name="id" id="id">
  <input type="password" name="password" id="password">
  <input type="text" name="name" id="name">
  <input type="text" name="email" id="email">
  <input type="text" name="phonenumber" id="phonenumber">
  <input type="submit" value="등록" onclick="CheckAddUser()">
</form>
</body>
</html>
