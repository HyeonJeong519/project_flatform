<script type="text/javascript" src="./recourses/js/validation.js"></script>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body style="background-color: #FBEAEB;">
<jsp:include page="header.jsp"/>
<div class="container" align="center" style="background-color: #FBEAEB">
  <h2 class="display-3" style="color: #2E3C7E">회원가입 </h2>
  <br><br>
</div>
<div class="container" style="background-color: #FBEAEB;color: #2E3C7E">
  <form name="newUser" action="./processAddUser.jsp" class="form-horizontal" method="post">
    <div class="form-group row">
      <label class="col-sm-2">아이디</label>
      <div class="col-sm-3">
        <input type="text" id="id" name="id" class="form-control">
        <br>
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">비밀번호</label>
      <div class="col-sm-3">
        <input type="password" id="password" name="password" class="form-control">
        <br>
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">이름</label>
      <div class="col-sm-3">
        <input type="text" id="name" name="name" class="form-control">
        <br>
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">이메일</label>
      <div class="col-sm-3">
        <input type="text" id="email" name="email" class="form-control">
        <br>
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">전화번호</label>
      <div class="col-sm-3">
        <input type="text" id="phonenumber" name="phonenumber" class="form-control">
        <br>
      </div>
    </div>
    <div class="form-group row">
      <div class="col-sm-offset-2 col-sm-10">
        <br>
        <input type="submit" class="btn btn-primary" value="등록" onclick="CheckAddUser()" style="background-color: #2E3C7E;color: #FBEAEB">
        <br>
      </div>
    </div>
  </form>
</div>
  <jsp:include page="footer.jsp"/>
</body>
</html>
