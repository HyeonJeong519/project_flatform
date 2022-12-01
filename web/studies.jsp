<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

<html>
<head>
    <title>Title</title>
</head>
<body style="background-color: #FBEAEB">
<jsp:include page="header2.jsp"/>
<div class="jumbotron" style="background-color: #2E3C7E; color: #FBEAEB">
    <div class="container">
        <h1 class="display-3" >스터디 내역</h1>
    </div>
</div>
<div class="container" style="background-color: #FBEAEB;color: #2E3C7E">
    <div align="right">
        <input type="button" value="스터디 생성" onclick="location.href='./addStudy.jsp'"></input>
    </div>
    <div class="row" align="center">
        <%
            Class.forName("com.mysql.jdbc.Driver");

            Connection connection = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;

            try {
                String jdbcDriver = "jdbc:mysql://localhost:3306/JSP?useSSL=false&serverTimezone=UTC";
                String dbUser = "root";
                String dbPass = "root1234";

                String query = "select * from STUDY order by studyId";

                // 2. 데이터베이스 커넥션 생성
                connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

                // 3. Statement 생성
                pstmt = connection.prepareStatement(query);

                // 4. 쿼리 실행
                rs = pstmt.executeQuery();

                // 5. 쿼리 실행 결과 출력
                while (rs.next()) {
        %>
        <%
            String studyId = rs.getString("studyId");
            session.setAttribute("studyId", studyId);
        %>
        <div class="col-md-4">
            <h3><%=rs.getString("studyName")%> / <%=rs.getString("studyId")%></h3>
            <h4><%=rs.getString("studyCategory")%></h4>
            <p>스터디 시작일 : <%=rs.getString("studyStartDate")%></p>
            <p>스터디 종료일 : <%=rs.getString("studyEndDate")%></p>
            <p>최대 인원 : <%=rs.getInt("maxParticipant")%>명</p>
            <p><a href="./study.jsp?studyId=<%=rs.getString("studyId")%>" class="btn btn-secondary" role="button">상세 정보 &raquo;</a></p>
            <hr>
        </div>
        <%
                }
            } catch (SQLException ex) {
                out.println(ex.getMessage());
                ex.printStackTrace();
            } finally {
                // 6. 사용한 Statement 종료
                if (rs != null) try {
                    rs.close();
                } catch (SQLException ex) {
                }
                if (pstmt != null) try {
                    pstmt.close();
                } catch (SQLException ex) {
                }
                // 7. 커넥션 종료
                if (connection != null) try {
                    connection.close();
                } catch (SQLException ex) {
                }
            }
        %>
    </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
