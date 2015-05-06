<%@ page import="com.google.scrum.AddScoreResponse" %>
<%@ page import="com.google.scrum.AddScoreHandler" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="java.util.List" %>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="/stylesheets/main.css"/>
</head>

<body>

<%
  AddScoreResponse responseModel = new AddScoreHandler().handle(request);
%>
Success!
</body>
</html>