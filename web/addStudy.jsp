<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>

<html>
<head>
  <title>Title</title>
</head>
<body>
<jsp:include page="header2.jsp"></jsp:include>
<div class="jumbotron">
  <div class="container">
    <h1 class="display-3">스터디 생성</h1>
  </div>
</div>
<div class="container">
  <form name="newStudy" action="./processAddStudy.jsp" class="form-horizontal" method="post"
        enctype="multipart/form-data">
    <div class="form-group row">
      <label class="col-sm-2">프로젝트명</label>
      <div class="col-sm-3">
        <input type="text" id="studyName" name="studyName" class="form-control">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">프로젝트 카테고리</label>
      <div class="col-sm-3">
        <select name="studyCategory">
          <option value="웹">웹</option>
          <option value="안드로이드">안드로이드</option>
          <option value="IOS">IOS</option>
        </select>
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">프로젝트 시작일</label>
      <div class="col-sm-3">
        <input type="date" id="studyStartDate" name="studyStartDate" class="form-control">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">프로젝트 마감일</label>
      <div class="col-sm-3">
        <input type="date" name="studyEndDate" id="studyEndDate" cols="50" rows="2" class="form-control">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">최대 참여 인원</label>
      <div class="col-sm-3">
        <input type="number" name="maxParticipant" id="maxParticipant" class="form-control">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">프로젝트 설명</label>
      <div class="col-sm-3">
            <textarea name="studyInfo" id="studyInfo" class="form-control" cols="30" rows="5"
                      placeholder="프로젝트 설명을 적어주세요"></textarea>
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2">관련 파일 업로드</label>
      <div class="col-sm-5">
        <input type="file" name="studyFileName" id="studyFileName" class="fileName">
      </div>
    </div>
    <div class="form-group row">
      <div class="col-sm-offset-2 col-sm-10">
        <input type="submit" class="btn btn-primary" value="프로젝트 생성하기">
      </div>
    </div>
  </form>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
