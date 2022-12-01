<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<html>
<head>
    <title>Title</title>
</head>
<body>
<fmt:setLocale value='<%=request.getParameter("language")%>'></fmt:setLocale>
<fmt:bundle basename="bundle.message">
<nav class="navbar navbar-default" style="background-color: #2E3C7E; color: #FBEAEB">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar" style="background-color :#2E3C7E; color: #FBEAEB">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="./index.jsp" style="color: #FBEAEB">InQ</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse" style="color: #FBEAEB">
            <ul class="nav navbar-nav" style="color: #FBEAEB">
                <li style="color: #FBEAEB"><a href="./addUser.jsp" style="color: #FBEAEB"><fmt:message key="join"/></a></li>
                <li style="color: #FBEAEB"><a href="./studies.jsp" style="color: #FBEAEB"><fmt:message key="study"/></a></li>
                <li style="color: #FBEAEB"><a href="./projects.jsp" style="color: #FBEAEB"><fmt:message key="project"/></a></li>
            </ul>
            </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="?language=ko" style="color: #FBEAEB">Korean</a></li>
                <li><a href="?language=en" style="color: #FBEAEB">English</a></li>
                <li><a href="./login.jsp" style="color: #FBEAEB"><fmt:message key="login"/><span class="sr-only">(current)</span></a></li>
                <li><a href="users.jsp" style="color: #FBEAEB"><fmt:message key="masterLogin"/></a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
</fmt:bundle>
</body>
</html>