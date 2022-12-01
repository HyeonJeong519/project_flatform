<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<html>
<head>
    <title>Title</title>
</head>
<body style="background-color: #FBEAEB">
<%
    String studyId = (String) session.getAttribute("studyId");
%>
<jsp:include page="header2.jsp"></jsp:include>
<div class="container" style="background-color: #FBEAEB;color: #2E3C7E">
    <div class="row">
        <%
            Class.forName("com.mysql.jdbc.Driver");

            Connection connection = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;

            try {
                String jdbcDriver = "jdbc:mysql://localhost:3306/JSP?useSSL=false&serverTimezone=UTC";
                String dbUser = "root";
                String dbPass = "root1234";

                String query = "select * from STUDY where studyId = '"+studyId+"'";
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
            String fileName = rs.getString("studyFileName");
            session.setAttribute("fileName", fileName);
        %>
        <div class="jumbotron" style="background-color: #2E3C7E; color: #FBEAEB">
            <div class="container">
                <h2 class="display-3"><%=rs.getString("studyName")%> / <%=rs.getString("studyId")%>
                </h2>
            </div>
        </div>
        <div class="col-md-6">
            <h4>카테고리 : <%=rs.getString("studyCategory")%>
            </h4>
            <br>
            <p>프로젝트 시작일 : <%=rs.getString("studyStartDate")%>
            </p>
            <br>
            <p>프로젝트 종료일 : <%=rs.getString("studyEndDate")%>
            </p>
            <br>
            <p>최대 인원 : <%=rs.getInt("maxParticipant")%>명</p>
            <br>
            <p>프로젝트 설명 : <%=rs.getString("studyInfo")%></p>
            <p>파일 다운 : <a href="./fileDown.jsp?file_name=<%=rs.getString("studyFileName")%>"><%=rs.getString("studyFileName")%>
            </a></p>
        </div>
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
</body>
</html>
