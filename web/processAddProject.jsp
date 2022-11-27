<%@ page import="java.util.Date" %>
<%@ page import="dto.Project" %>
<%@ page import="dao.ProjectRepository" %>
<%@ page import="java.util.SimpleTimeZone" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="org.apache.commons.lang3.RandomStringUtils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");

    String realFolder = "/Users/hwanghyeonjeong/IdeaProjects/project_flatform/web/recourses/fileupload";
    int maxSize = 5 * 1024 * 1024; //최대 업로드 크기(10M)
    String encType = "utf-8";  //인코딩 유형

    MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize,
            encType, new DefaultFileRenamePolicy());


    String projectId = null;
    String projectName = null;
    String projectCategory = null;
    String projectStartDate = null;
    String projectEndDate = null;
    int maxParticipant = 0;
    String userId = null;

    projectId = RandomStringUtils.random(6, true, true);
    projectName = multi.getParameter("projectName");
    projectCategory = multi.getParameter("projectCategory");
    projectStartDate = multi.getParameter("projectStartDate");
    projectEndDate = multi.getParameter("projectEndDate");
    maxParticipant = Integer.parseInt(multi.getParameter("maxParticipant"));

    Enumeration files = multi.getFileNames();
    String fname = (String) files.nextElement();
    String fileName = multi.getFilesystemName(fname);

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
    }else response.sendRedirect("./projects.jsp");
%>
</body>
</html>
