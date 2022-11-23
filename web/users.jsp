<%@ page import="dao.UserRepository" %>
<%@ page import="dto.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>동아리 회원 목록</h3>
<%
    Class.forName("com.mysql.jdbc.Driver");

    Connection connection = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try
    {
        String jdbcDriver = "jdbc:mysql://localhost:3306/JSP?useSSL=false&serverTimezone=UTC";
        String dbUser = "root";
        String dbPass = "root1234";

        String query = "select * from USER order by id";

        // 2. 데이터베이스 커넥션 생성
        connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

        // 3. Statement 생성
        pstmt = connection.prepareStatement(query);

        // 4. 쿼리 실행
        rs = pstmt.executeQuery();

        // 5. 쿼리 실행 결과 출력
        while(rs.next())
        {
%>
<tr>
    <td><%= rs.getString("id") %></td>
    <td><%= rs.getString("name") %></td>
</tr>
<%
        }
    }catch(SQLException ex){
        out.println(ex.getMessage());
        ex.printStackTrace();
    }finally{
        // 6. 사용한 Statement 종료
        if(rs != null) try { rs.close(); } catch(SQLException ex) {}
        if(pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}

        // 7. 커넥션 종료
        if(connection != null) try { connection.close(); } catch(SQLException ex) {}
    }
%>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>
