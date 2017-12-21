<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.DbConnection"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="bootstrap/bootstrap-3.3.7/dist/css/bootstrap.min.css">
  <script src="bootstrap/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
<title>Display data</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Java Servlet</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active" ><a href="#">Home</a></li>
      
    </ul>
    
  </div>
</nav>
  <div class="container">
<h1>Registration success</h1>
<%String email = (String)request.getAttribute("email"); %>
<%= email%>
         <h2>Your Details  </h2>
          <form action="OtpSend" method="post">
 
<table class="table table-bordered">
								<tr>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Age</th>
								<th>Gender</th>
								<th>Email</th>
								<th>Languages</th>
								<th>Contact</th>
								<th>Department</th>
								<th>Year</th>
								<th>Dob</th>
								<th>User Name</th>
								
								
								

								</tr>
								<% Connection con = DbConnection.getConnection();
                   
                        Statement st= con.createStatement();
                        ResultSet rs = st.executeQuery("select * from Eduction.Student WHERE Email='"+email+"';");
                   
                        while(rs.next()){
                        	
                        String fname=rs.getString("First_Name"); 
                        String lname=rs.getString("Last_Name");
                        String uemail=rs.getString("Age");
                        String mobileno=rs.getString("Gender");
                        String uname=rs.getString("Email");
                        String password=rs.getString("Languages");
                        String Contact_Number=rs.getString("Contact_Number");
                        String Department=rs.getString("Department");
                        String Year=rs.getString("Year");
                        String DOB=rs.getString("DOB");
                        String User_Name=rs.getString("User_Name");
                        
                        
                        %>
                        <tr class="tablerow" align="center">
								
								<td> <%= fname %></td>
								<td> <%= lname %></td>
								<td> <%= uemail %></td>
								<td> <%= mobileno %></td>
								<td> <%= uname %></td>
								<td> <%= password %></td>
								<td> <%= Contact_Number %></td>
								<td> <%= Department %></td>
								<td> <%= Year %></td>
								<td> <%= DOB %></td>
								<td> <%= User_Name %></td>
								
								
								
								
           
								
            
                        
                           </tr>
								
								<%
                        }
                    
                    %>
                    </table>
                    </form>

</body>
</html>