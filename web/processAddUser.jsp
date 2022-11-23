<%@ page import="dao.UserRepository" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String id = null;
    String password = null;
    String name = null;
    String email = null;
    String phonenumber = null;

    id = (String) request.getParameter("id");
    password = (String) request.getParameter("password");
    name = (String) request.getParameter("name");
    email = (String) request.getParameter("email");
    phonenumber = (String) request.getParameter("phonenumber");

    UserRepository userRepository = new UserRepository();
    int result = userRepository.join(id, password, name, email, phonenumber);
    if (result == 1){
        out.println("<div class='alert alert-danger'>");
        out.println("데이터 전송 성공");
        out.println("</div>");
    }else response.sendRedirect("./index.jsp");
%>
</body>
</html>
