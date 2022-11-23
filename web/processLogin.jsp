<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="dao.UserRepository" %>
<%@ page import="dto.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");

    String id = request.getParameter("id");
    String password = request.getParameter("password");
    UserRepository userRepository = UserRepository.getInstance();
    int result = userRepository.confirmLogin(id, password);
    if (result == userRepository.USER_NONEXISTENT) {
%>
<script>
    alert("존재하지 않는 아이디 입니다.")
    history.back();
</script>
<%
} else if (result == UserRepository.USER_LOGIN_FAIL) {
%>
<script>
    alert("비밀번호가 틀립니다.")
    history.back();
</script>
<%
} else {
    User user = userRepository.getUserById(id);
    if (user == null) {
%>
<script>
    alert("존재하지 않는 회원 입니다.")
    history.back();
</script>
<%
        }
        session.setAttribute("name", user.getName());
        session.setAttribute("id", user.getId());
        session.setAttribute("isLogin", true);
        response.sendRedirect("./index.jsp");
    }
%>
</body>
</html>
