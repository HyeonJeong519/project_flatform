<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="./processAddProject.jsp" method="post">
    <p><input type="text" name="projectId" id="projectId"></p>
    <p><input type="text" name="projectName" id="projectName"></p>
    <p><input type="text" name="projectCategory" id="projectCategory"></p>
    <p><input type="date" name="projectStartDate" id="projectStartDate"></p>
    <p><input type="date" name="projectEndDate" id="projectEndDate"></p>
    <p><input type="number" name="maxParticipant" id="maxParticipant"></p>
    <p><input type="text" name="userId" id="userId"></p>
    <p><input type="text" name="fileName" id="fileName"></p>
    <p><input type="submit" value="등록"></p>
</form>
</body>
</html>
