
# 동아리 프로젝트 관리 플랫폼 <br>(Project Flatform)


## Description

> 2022.11.20 - 2022.12.01

### Contests

📌 2022 지능웹설계 강의 프로젝트


### Summary



* 웹 페이지
  * 회원가입/로그인/로그아웃
  * 프로젝트 생성 / 프로젝트 삭제 / 프로젝트 리스트 확인 기능
  * 스터디 생성 / 스터디 삭제 / 스터디 리스트 확인 가능



## About Project



### ⚙️ 개발 환경(Development Environment)

| 분류 | 개발환경 | 
|---|---|
| 운영체제 | Mac OS |
| 개발도구 | IntelliJ IDEA |
| 데이터베이스 | MySQL |
| 버전 관리 | Github |
| 오픈소스 및 외부 라이브러리 | Bootstrap, MySQL-Connector-j-8.0 |



### 🖥 Web

* 회원가입
  * 유효성 검사 사용
    * 아이디는 학번(숫자 9자리)으로 하며 비밀번호는 5자리 이상 11자리 미만으로 함
    * 이름, 이메일, 전화번호를 반드시 입력해야함
* 로그인
  * confirmLogin을 통해 아이디, 비밀번호 확인 후 리턴
  * 세션을 활용하여 아이디 전송
* 전체유저목록
  * 시큐리티 기능 사용
  * master 계정으로 로그인해야만 확인 가능함 (ID:master PW:master1234)
  * 이름, 아이디, 이메일을 확인할 수 있음
* 스터디
  * 스터디 전체 목록 DB에서 불러오기
  * 스터디 상세보기 버튼 누르면 상세보기 가능
  * 업로드된 파일 다운로드 가능
  * 스터디 생성 기능으로 DB에 정보 Insert 및 파일 업로드 기능
* 프로젝트
  * 프로젝트 전체 목록 DB에서 불러오기
  * 스터디 상세보기 버튼 누르면 상세보기 가능
  * 업로드된 파일 다운로드 가능
  * 프로젝트 생성 기능으로 DB에 정보 Insert 및 파일 업로드 기능
