<%@ page import="com.google.scrum.AddScoreResponse" %>
<%@ page import="com.google.scrum.AddScoreHandler" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="java.util.List" %>

<html>
<head>
    <meta http-equiv="refresh" content="4;URL=./leaderboard.jsp">
    <style>
	  h1 {
	    background-color:#060;
	    color: #fff;
	    margin: 0;
	    padding: 15px;
	    text-align: center;
	    width:100%;
	  }
      h2 {
        width:100%;
        color: #000;
        text-align: center;
        margin: 0;
        padding: 15px;
      }
      p {
        padding: 10px;
      }
      #card {
        background-color: #fafafa;
        border-top: 1px solid #e3e3e3;
        border-left: 1px solid #e3e3e3;
        border-right: 2px solid #e3e3e3;
        border-bottom: 2px solid #e3e3e3;
        margin: 80px auto 0 auto;
        width:75%;
      }
      #header {
        background-color: #00B800;
        color: #fff;
        padding: 5px;
        border-top: 2px solid #339933;
        font-size: 1.3em;
        margin: 0 -2px 10px -1px;
      }
    </style>
</head>

<body style="margin: 0">
<h1>Leaderboard!</h1>

<%
  AddScoreResponse responseModel = new AddScoreHandler().handle(request);
%>

<div id="card">
<div id="header">Top Scores Leaderboard</div>
<h2>Successfully added score: <%= responseModel.getScore() %></h2>

<p>Redirecting to the leaderboard in 4 seconds. <a href="./leaderboard.jsp">Click here</a> if you are not redirected.
</div>
</body>
</html>