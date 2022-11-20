<%@ page import="dao.UserRepository" %>
<%@ page import="dto.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>동아리 회원 목록</h3>
<%
    UserRepository dao = UserRepository.getInstance();
    ArrayList<User> listOfUsers = dao.getAllUsers();
%>
<%
    for (int i = 0; i < listOfUsers.size(); i++) {
        User user = listOfUsers.get(i);
%>
<p><%=user.getName() + " | "  + user.getPhoneNumber() + " | " + user.getEmail()%></p>
<%
    }
%>
<jsp:include page="footer.jsp"/>
</body>
</html>
