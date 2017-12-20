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
<ul>
	<form action="HelloWord" method="post">
	<li><input type="submit" value="Hello Word"> Hello Word</a></li>
	</form><br>
	<form action="HelloUser.jsp" method="post">
	<li><input type="submit" value="Hello User"> Hello User</a></li>
	</form><br>
	<form action="Registration.jsp" method="post">
	<li><input type="submit" value="Registration Form"> Simple Registration Form</a></li>
	</form><br>
	<form action="Report.jsp" method="post">
	<li><input type="submit" value="Report"> Report</a></li>
	</form><br>
	<form action="BootstrapRegistration.jsp" method="post">
	<li><input type="submit" value="Bootstrap Form"> BootStrap Registration form</a></li>
	</form>
	
</ul>
</body>
</html>