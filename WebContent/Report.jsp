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
      <li class="active" ><a href="index.jsp">Home</a></li>
      
    </ul>
    
  </div>
</nav>
  <div class="container">
<h1>Registration Report</h1>
          <form action="OtpSend" method="post">
 
<table class="table table-bordered">
								<tr>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Email</th>
								<th>Contact No.</th>
								<th>User Name</th>
								<th>Password</th>
								
								
								

								</tr>
								<% Connection con = DbConnection.getConnection();
                   
                        Statement st= con.createStatement();
                        ResultSet rs = st.executeQuery("select * from Eduction.Address;");
                   
                        while(rs.next()){
                        	
                        String fname=rs.getString("fname"); 
                        String lname=rs.getString("lname");
                        String uemail=rs.getString("email");
                        String mobileno=rs.getString("mobileno");
                        String uname=rs.getString("uname");
                        String password=rs.getString("password");
                        
                        
                        %>
                        <tr class="tablerow" align="center">
								
								<td> <%= fname %></td>
								<td> <%= lname %></td>
								<td> <%= uemail %></td>
								<td> <%= mobileno %></td>
								<td> <%= uname %></td>
								<td> <%= password %></td>
								
								
								
								
           
								
            
                        
                           </tr>
								
								<%
                        }
                    
                    %>
                    </table>
                    </form>

</body>
</html>