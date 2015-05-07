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
    <meta http-equiv="refresh" content="3;URL=./leaderboard.jsp">
</head>

<body>

<%
  AddScoreResponse responseModel = new AddScoreHandler().handle(request);
%>

<p>Successfully added score: <%= responseModel.getScore() %>

<p>Redirecting to the leaderboard in 3 seconds. <a href="./leaderboard.jsp">Click here</a> if you are not redirected.
</body>
</html>