<%--
  Created by IntelliJ IDEA.
  User: William O'Leary
  Date: 12/07/2016
  Time: 15:47

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>

    <style>
      h1 {
        display: block;
        font-size: 2em;
        font-weight: bold;
      }
      table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
        height: auto;
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

    <title>Beer-o-matic</title>
  </head>
  <body>
    <div align="center">
      <h1>Welcome to the random beer generator!</h1>

      <form method="GET" action="/">
        <input class="btn btn-default" type="submit" formmethod="get" value="Gimmie a beer">
      </form>

      <table>
        <tr><td>Beer name: ${name}</td></tr>
        <tr><td>
          <div style="height: 500px; max-width: 80vw" align="center">
            <img src="/images/${image}" style="max-height:100%; max-width: 100%"  />
          </div>
        </td></tr>
        <tr><td>Alcohol content: ${alccontent}% ABV</td></tr>
        <tr><td>Description: ${description}</td></tr>
        <tr><td>Brewery address: ${location}</td></tr>
      </table>
      Here be dragons
    </div>

  </body>
</html>
