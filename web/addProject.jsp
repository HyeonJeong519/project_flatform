<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
    <script type="text/javascript" src="./resources/js/validation.js"></script>
    <title>Title</title>
</head>
<body>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">프로젝트 생성</h1>
    </div>
</div>
    <form name="newProject" action="./processAddProject.jsp" class="form-horizontal" method="post"
          enctype="multipart/form-data">
        <div class="form-group row">
            <label class="col-sm-2">프로젝트명</label>
            <div class="col-sm-3">
                <input type="text" id="projectName" name="projectName" class="form-control">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2">프로젝트 카테고리</label>
            <div class="col-sm-3">
                <input type="text" id="projectCategory" name="projectCategory" class="form-control">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2">프로젝트 시작일</label>
            <div class="col-sm-3">
                <input type="date" id="projectStartDate" name="projectStartDate" class="form-control">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2">프로젝트 마감일</label>
            <div class="col-sm-3">
                <input type="date" name="projectEndDate" id="projectEndDate" cols="50" rows="2" class="form-control">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2">최대 참여 인원</label>
            <div class="col-sm-3">
                <input type="text" name="maxParticipant" id="maxParticipant" class="form-control">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2">프로젝트 설명</label>
            <div class="col-sm-3">
                <input type="text" name="projectInfo" id="projectInfo"
                       col="50" rows="2" class="form-control">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2">관련 파일 업로드</label>
            <div class="col-sm-5">
                <input type="file" name="fileName" id="fileName" class="fileName">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" class="btn btn-primary" value="프로젝트 생성하기">
            </div>
        </div>
    </form>
</div>
</body>
</html>
