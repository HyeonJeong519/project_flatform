<%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/20
  Time: 12:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String error = request.getParameter("error");
    if(error != null){
        out.println("<div class='alert alert-danger'>");
        out.println("아이디와 비밀번호를 확인해주세요");
        out.println("</div>");
    }
%>
<form class="form-signin" action="j_security_check" method="post">
    <div class="form-group">
        <label for ="inputUserName" class="sr-only">User Name</label>
        <input type="text" class="form-control" placeholder="ID" name="j_username" required autofocus>
    </div>
    <div class="form-group">
        <label for ="inputPassword" class="sr-only">Password</label>
        <input type="password" class="form-control" placeholder="Password" name="j_password" required>
    </div>
    <button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
</form>
<jsp:include page="footer.jsp"/>
</body>
</html>
