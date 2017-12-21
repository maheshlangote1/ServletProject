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
<h2 align="center">Registration Form</h2>
<form action="BootstrapRegistration" method="post">
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
      <tr>
      <th>Language</th>
  			 <td><input type="checkbox" name="lang" value="English"/>English<br>
   
  	 		<input type="checkbox" name="lang" value="Hindi"/>Hindi<br>
  
  			 <input type="checkbox" name="lang" value="Marathi"/>Marathi</td>
  			 <th>Gender</th><td>
  			 <input type = "radio" name = "gender"  value="Male">Male<br>
				<input type = "radio" name = "gender"  value="Female">Female</td>
  		</tr>
  		<tr>
  		<th>Department</th>
  		<td><select name="department" size="1" id="department">
                <option value="Computer" selected>Computer</option>
                <option value="IT">IT</option>
                <option value="ETC">ETC</option>
                <option value="Mechanical">Mechanical</option>
                <option value="Electrical">Electrical</option>
              </select></td>
  		<th>Year</th>
  		<td><select name="year" size="1" id="year">
                <option value="1st" selected>1St Year</option>
                <option value="2nd">2nd Year</option>
                <option value="3rd">3rd Year</option>
                <option value="4th">4th Year</option>
                
              </select></td>
              </tr>
              <th>Age</th>
  			 <td><input type="number" name="age" value="age"/>
  			 <th>Date of Birth</th><td>
  			 <input type = "date" name = "dob"  value="dob">
				</td>
  		</tr>
        
    </tbody>
  </table>
  <p align="center">
  <input class="btn btn-success" type="submit" name="submit" value="SUBMIT">
  </p>
  </div>
</form>
</body>
</html>