<%@ page import="java.util.Date" %>
<%@ page import="dto.Project" %>
<%@ page import="dao.ProjectRepository" %>
<%@ page import="java.util.SimpleTimeZone" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: hwanghyeonjeong
  Date: 2022/11/23
  Time: 8:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");

    String projectId = null;
    String projectName = null;
    String projectCategory = null;
    String projectStartDate = null;
    String projectEndDate = null;
    int maxParticipant = 0;
    String userId = null;
    String fileName = null;

    projectId = (String) request.getParameter("projectId");
    projectName = (String) request.getParameter("projectName");
    projectCategory = (String) request.getParameter("projectCategory");
    projectStartDate = (String)request.getParameter("projectStartDate");
    projectEndDate = (String) request.getParameter("projectEndDate");
    maxParticipant = Integer.parseInt(request.getParameter("maxParticipant"));
    userId = (String) request.getParameter("userId");
    fileName = (String) request.getParameter("fileName");

    ProjectRepository projectRepository = new ProjectRepository();
    int result = projectRepository.addProject(projectId, projectName, projectCategory, projectStartDate,
            projectEndDate, maxParticipant, userId, fileName);

    if (result == 1) {
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('프로젝트가 등록되었습니다.')");
        script.println("location.href='addProject.jsp';");
        script.println("</script>");
        script.close();
        return;
    }else response.sendRedirect("./index.jsp");
%>
</body>
</html>
