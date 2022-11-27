<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/28
  Time: 3:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String userId = "";
  String userName = "";
  String userEmail = "";
  Cookie[] cookies = request.getCookies();
  if(cookies != null){
    for(int i =0;i< cookies.length;i++){
      Cookie thisCookie = cookies[i];
      String n = thisCookie.getName();
      if (n.equals("userId")){
        userId = URLDecoder.decode((thisCookie.getValue()),"utf-8");
      }
      if (n.equals("userName")){
        userName = URLDecoder.decode((thisCookie.getValue()),"utf-8");
      }
      if (n.equals("userEmail")){
        userEmail = URLDecoder.decode((thisCookie.getValue()),"utf-8");      }
    }
  }
%>
</body>
</html>
