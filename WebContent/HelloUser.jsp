<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="bootstrap/bootstrap-3.3.7/dist/css/bootstrap.min.css">
  <script src="bootstrap/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
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
<div class="container">
<h1>Hello</h1>
<form action="HelloUser" method="post">
	<input type="text" placeholder="First Name" name="fname" required> Enter the your First Name<br><br><br>
	<input type="text" placeholder="Last Name" name="lname" required>Eneter the your Last Name<br>
	<br><br>
	<input type="submit" value="SUBMIT">
</form>
</div>
</body>
</html>