<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
</style>
</head>
<body>
<nav >
  <div >
    <div>
      <a href="#">Java Servlet</a>
    </div>
    <ul >
      <li class="active"><a href="index.jsp">Home</a></li>
    </ul>
  </div>
</nav>
<h1>Registration Form Without Bootstrap</h1>
<form action="UserRegistration" method="post">
<table style="width:100%">
  <tr>
    <th>First Name</th>
    <td><input type="text"  name="fname"></td> 
    <th>Last Name</th>
    <td><input type="text"  name="lname"></td>
  </tr>
  <tr>
    <th>Email</th>
    <td><input type="text"  name="email"></td> 
    <th>Mobile Number</th>
    <td><input type="text"  name="mobileno"></td>
  </tr>
  <tr>
    <th>User Name</th>
    <td><input type="text"  name="uname"></td> 
    <th>Password</th>
    <td><input type="password"  name="password"></td>
  </tr>
</table><br>
<br>
<p align="center">
<input type="submit" name="submit" value="SUBMIT">
</p>
</form>
</body>
</html>