<%@ page import="java.util.Date" %>
<%@ page import="dto.Project" %>
<%@ page import="dao.ProjectRepository" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="org.apache.commons.lang3.RandomStringUtils" %>
<%@ page import="dao.StudyRepository" %>
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

  String studyId = null;
  String studyName = null;
  String studyCategory = null;
  String studyStartDate = null;
  String studyEndDate = null;
  String studyInfo = null;
  int maxParticipant = 0;

  studyId = RandomStringUtils.random(6, true, true);
  studyName = multi.getParameter("studyName");
  studyCategory = multi.getParameter("studyCategory");
  studyStartDate = multi.getParameter("studyStartDate");
  studyEndDate = multi.getParameter("studyEndDate");
  maxParticipant = Integer.parseInt(multi.getParameter("maxParticipant"));
  studyInfo = multi.getParameter("studyInfo");

  Enumeration files = multi.getFileNames();
  String fname = (String) files.nextElement();
  String studyFileName = multi.getFilesystemName(fname);

  StudyRepository studyRepository = new StudyRepository();

  int result = studyRepository.addStudy(studyId, studyName, studyCategory, studyStartDate,
          studyEndDate, maxParticipant, studyFileName, studyInfo);

  if (result == 1) {
    response.sendRedirect("./studies.jsp");

  } else response.sendRedirect("./studies.jsp");
%>
</body>
</html>
