<%@page import="com.google.scrum.Handler"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="java.util.List" %>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="/stylesheets/main.css"/>
    <title>Hello Leaderboard</title>
</head>

<body style="margin: 0">

<%
  Object responseModel = new Handler().handle(request);
%>

<h1 style="width:100%; color: #fff; background-color: #000; text-align: center; margin: 0; padding: 15px">Leaderboard!</h1>
  <div style="background-color: #fafafa; border-top: 1px solid #e3e3e3; border-left: 1px solid #e3e3e3; border-right: 2px solid #e3e3e3; border-bottom: 2px solid #e3e3e3; margin: 80px auto 0 auto; width:75%;">
  <div style="background-color: #03A9F4; color: #fff; padding: 5px; border-top: 2px solid #4285F4; font-size: 1.3em; margin: 0 -2px 10px -1px">Top Scores Leaderboard</div>
  <table cellpadding="4" style="padding: 10px" width="100%">
    <tr>
      <td style="border: 1px solid #e3e3e3; background-color: #fff; min-width: 60px; font-weight: bold">Game</td>
      <td style="border: 1px solid #e3e3e3; background-color: #fff; min-width: 60px; font-weight: bold">User</td>
      <td style="border: 1px solid #e3e3e3; background-color: #fff; min-width: 60px; font-weight: bold">Score</td>
    </tr>
    <tr>
      <td style="border: 1px solid #e3e3e3; background-color: #fff; min-width: 60px;">Any Game</td>
      <td style="border: 1px solid #e3e3e3; background-color: #fff; min-width: 60px;">Martyn</td>
      <td style="border: 1px solid #e3e3e3; background-color: #fff; min-width: 60px;">100000</td>
    </tr>
    <tr>
      <td style="border: 1px solid #e3e3e3; background-color: #fff; min-width: 60px;">Any Game</td>
      <td style="border: 1px solid #e3e3e3; background-color: #fff; min-width: 60px;">Luca</td>
      <td style="border: 1px solid #e3e3e3; background-color: #fff; min-width: 60px;">1</td>
    </tr>
  </table>
</div>

</body>
</html>