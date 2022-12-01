<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body style="background-color: #FBEAEB">
  <jsp:include page="header.jsp"/>
  <div class="jumbotron" style="background-color: #2E3C7E; color: #FBEAEB">
    <div class="container">
      <h1>InQ</h1>
      <p>2021년 3월에 창설된 경기대학교 AI 컴퓨터공학부 학과 동아리입니다.</p>
      <p><a class="btn btn-primary btn-lg" href="./aboutInq.jsp" role="button" style="background-color: #FBEAEB; color: #2E3C7E">ABOUT InQ &raquo;</a></p>
    </div>
  </div>
  <div class="container" style="background-color: #FBEAEB">
    <div class="row">
      <div class="col-md-4" style="color: #2E3C7E">
        <h2>프로젝트 활동</h2>
        <p>연간 4회(방중 2회, 학기중 2회) 동아리내 자유주제로 프로젝트를 진행하고 있습니다. 이전 프로젝트와 현재 인원을 모집중인 프로젝트를 보시려면 아래 버튼을 눌러주세요.</p>
        <p><a class="btn btn-default" href="./aboutProject.jsp" role="button" style="background-color: #FBEAEB; color: #2E3C7E">Projects &raquo;</a></p>
      </div>
      <div class="col-md-4" style="color: #2E3C7E">
        <h2>스터디 활동</h2>
        <p>다양한 주제로 스터디를 진행하고 있습니다. 현재 진행중인 스터디와 시작 예정인 스터디를 보시려면 아래 버튼을 눌려주세요.</p>
        <p><a class="btn btn-default" href="./aboutStudy.jsp" role="button" style="background-color: #FBEAEB; color: #2E3C7E">Studies &raquo;</a></p>
      </div>
      <div class="col-md-4" style="color: #2E3C7E">
        <h2>즐거운 회식</h2>
        <p>저희 동아리는 회식을 해도 사람들이 오지않아요 흑흑 나만 회식 좋아해</p>
        <p><a class="btn btn-default" href="#" role="button" style="background-color: #FBEAEB;color : #2E3C7E">사진 보기 &raquo;</a></p>
      </div>
    </div>
    <hr style="background: #2E3C7E;height: 1px;border: 0" >
  <jsp:include page="footer.jsp"/>
  </body>
</html>
