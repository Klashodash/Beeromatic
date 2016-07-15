<%--
  Created by IntelliJ IDEA.
  User: bilbo
  Date: 12/07/2016
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>

    <style>
      h1 {
        display: block;
        font-size: 2em;
        margin-top: 0.67em;
        margin-bottom: 0.67em;
        margin-left: 0;
        margin-right: 0;
        font-weight: bold;
        align: center;
      }
      table {

      }
      table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
      }
      th, td {
        padding: 5px;
        text-align: left;
      }
      tr:nth-child(even) {
        background-color: white;
      }
      tr:nth-child(odd) {
        background-color: black;
        color: white;
      }
      th {
        background-color: black;
        color: white;
      }
    </style>
    <h1>Welcome to the random beer generator!</h1>
      <title>Beer-o-matic</title>
  </head>
  <body>

    <form method="GET" action="/">
      <input class="btn btn-default" type="submit" formmethod="get" value="Gimmie a beer">
    </form>

    <table>
      <tr><td>Beer name: ${name}</td></tr>
      <tr><td>The beer image goes here ${image}</td></tr>
      <tr><td>Alcohol content: ${alccontent}%</td></tr>
      <tr><td>Description: ${description}</td></tr>
      <tr><td>Brewery address: ${location}</td></tr>
    </table>
  Here be dragons

  </body>
</html>
