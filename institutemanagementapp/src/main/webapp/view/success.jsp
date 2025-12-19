<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Institute Management System Data</title>

<style>
    body{
        font-family: Arial, sans-serif;
        background-color: #f3f3f3;
        margin: 0;
        padding: 20px;
    }

    h4{
        text-align: center;
        color: #333;
        font-size: 22px;
        margin-bottom: 20px;
    }

    table{
        width: 90%;
        margin: auto;
        border-collapse: collapse;
        background: white;
        box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
    }

    th{
        background-color: #4CAF50;
        color: white;
        padding: 10px;
        text-align: center;
        font-size: 16px;
    }

    td{
        padding: 10px;
        text-align: center;
        font-size: 15px;
        border-bottom: 1px solid #ddd;
    }

    tr:hover{
        background-color: #f1f1f1;
        cursor: pointer;
    }

    a{
        color: red;
        font-weight: bold;
        text-decoration: none;
    }

    a:hover{
        text-decoration: underline;
    }
</style>

</head>

<body>

<h4>Institute Data</h4>

<table border="2">
      <thead>
            <tr>
               <th>ID</th>
               <th>Name</th>
               <th>City</th>
               <th>Fees</th>
               <th>Username</th>
               <th>Password</th>
               <th>ACTION</th>
            </tr>
      </thead>
      <tbody>
            <c:forEach items="${data}" var="i">
               <tr>
                  <td>${i.id}</td>
                  <td>${i.iname}</td>
                  <td>${i.icity}</td>
                  <td>${i.ifess}</td>
                  <td>${i.username}</td>
                  <td>${i.password}</td>
                  <td><a href="delete?id=${i.id}">DELETE</a> || <a href="edit?id=${i.id}">EDIT</a></td>
               </tr>
            </c:forEach>
      </tbody>
</table>

</body>
</html>
