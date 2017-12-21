package com;

import java.util.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Arrays;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BootstrapRegistration
 */
@WebServlet("/BootstrapRegistration")
public class BootstrapRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    Connection con ;
	PreparedStatement ps;
	ResultSet rs;
	
       String First_Name, Last_Name,Email,User_Name,Password,Gender,
       Age,Department,Year,DOB,Language,Contact_Number;
      
       
       public BootstrapRegistration() {
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
		First_Name = request.getParameter("fname");
   		Last_Name = request.getParameter("lname");
   		User_Name = request.getParameter("uname");
   		Password = request.getParameter("password");
   		Email = request.getParameter("email");
   		Contact_Number = request.getParameter("mobileno");
   		String[] lang = request.getParameterValues("lang");
   	  List Languages =  Arrays.asList(lang); 
   	  Gender = request.getParameter("gender");
     Department=request.getParameter("department");
    	 Age=request.getParameter("age");
    	 DOB=request.getParameter("dob");
   	  Year=request.getParameter("year");
   	 System.out.println("Your age is ="+Age);
   	 System.out.println("your dob is ="+DOB);
   	 System.out.println("department is ="+Department);
   	 System.out.println("Year is ="+Year);
   	 System.out.println("Gender is ="+Gender);
   	  System.out.println("check box value is ="+ Languages);
   		System.out.println("get data");
		con = DbConnection.getConnection();
		Statement statement = con.createStatement(); 
	   // statement.executeUpdate("insert into Address values('"+fname+"','"+lname+"','"+email+"','"+mobileno+"','"+uname+"','"+password+"')");
		statement.executeUpdate("insert into Student values('"+First_Name+"','"+Last_Name+"','"+Age+"','"+Gender+"','"+Email+"','"+Languages+"','"+Contact_Number+"','"+Department+"','"+Year+"','"+DOB+"','"+User_Name+"','"+Password+"')");
		
		System.out.println("connection is " + con);
		System.out.print("connection class close");
		
   		//System.out.println(fname+""+lname+""+uname+""+password+""+email+""+mobileno);
   		request.setAttribute("email",Email);
   		request.getRequestDispatcher("BootstrapHome.jsp").forward(request, response);
   		//response.sendRedirect("Home.jsp");
	} catch (Exception e) {
			System.out.println("Exception is " + e);
		}
	}


}