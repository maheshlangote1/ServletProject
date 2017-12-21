package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DbConnection;
/**
 * Servlet implementation class UserRegistration
 */
@WebServlet("/UserRegistration")
public class UserRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con ;
	PreparedStatement ps;
	ResultSet rs;
	
       String fname, lname,email,uname,password,address,gender,skills,country;
       String mobileno,dob,age;
       
    
    public UserRegistration() {
        super();
        
    }
    
    public void init(ServletConfig config) throws ServletException {
		try {
			System.out.print("connection class");

		} catch (Exception e1) {
			e1.printStackTrace();
		}

	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.print("doGet");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			System.out.println("DoPost");
		fname = request.getParameter("fname");
   		lname = request.getParameter("lname");
   		uname = request.getParameter("uname");
   		password = request.getParameter("password");
   		email = request.getParameter("email");
   		mobileno = request.getParameter("mobileno");
   		System.out.println("get data");
		con = DbConnection.getConnection();
		Statement statement = con.createStatement(); 
	    statement.executeUpdate("insert into Address values('"+fname+"','"+lname+"','"+email+"','"+mobileno+"','"+uname+"','"+password+"')");

		
		System.out.println("connection is " + con);
		System.out.print("connection class close");
		
   		System.out.println(fname+""+lname+""+uname+""+password+""+email+""+mobileno);
   		request.setAttribute("email",email);
   		request.getRequestDispatcher("Home.jsp").forward(request, response);
   		//response.sendRedirect("Home.jsp");
	} catch (Exception e) {
			System.out.println("Exception is " + e);
		}
	}


}
