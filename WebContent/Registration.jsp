<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Java Servlet</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
    </ul>
  </div>
</nav>
<h2 align="center">Registration Form</h2>
<form action="UserRegistration" method="post">
<div class="container">
<table class="table table-bordered">
    <thead>
      <tr>
        <th>First Name</th>
        <td><input type="text" placeholder="First name" name="fname" required></td>
        <th>Last Name</th>
        <td><input type="text" placeholder="Last Name" name="lname" required></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th>Email</th>
        <td><input type="text" placeholder="Email" name="email" required></td>
        <th>Mobile</th>
        <td><input type="text" placeholder="Mobile Number" name="mobileno" required></td>
      </tr>
      <tr>
        <th>User Name</th>
        <td><input type="text" placeholder="user name" name="uname" required></td>
        <th>Password</th>
        <td><input type="password" placeholder="Password" name="password" required></td>
      </tr>
        
    </tbody>
  </table>
  <input  type="submit" name="submit" value="SUBMIT">
  </div>
</form>
</body>
</html>