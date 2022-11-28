<%@ page import="dao.UserRepository" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");

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
        response.sendRedirect("./welcome.jsp");
    }else response.sendRedirect("./index.jsp");
%>
</body>
</html>
