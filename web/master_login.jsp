<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="/recourses/css/cssgroup.css" rel="stylesheet" type="text/css">
<html>
<head>
    <title>Title</title>
</head>
<body style="background-color: #FBEAEB">
<jsp:include page="header.jsp"/>
<div class="container" align="center">
    <div class="col-md-4 col-md-offset-4">
        <h3 class="form-signin-heading">관리자 로그인</h3>
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
    <button class="btn btn btn-lg btn-success btn-block" type="submit" style="background-color: #2E3C7E;color: #FBEAEB">로그인</button>
</form>
    </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
