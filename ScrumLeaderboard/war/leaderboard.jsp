<%@ page import="com.google.scrum.AddScoreResponse" %>
<%@ page import="com.google.scrum.AddScoreHandler" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="java.util.List" %>


<html lang="en">
  <head>
    <title>Hello Leaderboard</title>
    <style>
      h1 {
        width:100%;
        color: #fff;
        background-color:#060;
        text-align: center;
        margin: 0;
        padding: 15px;
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
      table {
        padding: 10px;
        width: 100%;
      }
      .cell_header {
        border: 1px solid #e3e3e3;
        background-color: #fff;
        min-width: 60px;
        font-weight: bold;
      }
      .cell {
        border: 1px solid #e3e3e3;
        background-color: #fff;
        min-width: 60px;
      }
      #new_score {
        background-color: #f50;
        border: 1px solid #d40;
        border-radius: 10px;
        margin: 20px auto 0 auto;
        padding: 6px;
        text-align: center;
        width: 200px;
      }
      #new_score a {
        color: #fff;
        text-decoration: none;
      }
    </style>
  </head>
  <body style="margin: 0">
  <h1>Leaderboard!</h1>
  <div id="card">
  <div id="header">Top Scores Leaderboard</div>
  <table>
    <tr>
      <td class="cell_header">Game</td>
      <td class="cell_header">User</td>
      <td class="cell_header">Score</td>
    </tr>
    <tr>
      <td class="cell">Any Game</td>
      <td class="cell">Martyn</td>
      <td class="cell">100000</td>
    </tr>
    <tr>
      <td class="cell">Any Game</td>
      <td class="cell">Luca</td>
      <td class="cell">1</td>
    </tr>
  </table>
  
</div>
<div id="new_score">
   <a href="/addScoreForm.jsp">Add a new score</a>
 </div>
</body>
</html>
