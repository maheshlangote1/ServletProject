package com;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HelloUser")
public class HelloUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    String fname,lname;
    public HelloUser() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		fname = request.getParameter("fname");
   		lname = request.getParameter("lname");
   		System.out.println("your first name is ="+fname);
   		System.out.println("your last name is ="+lname);
   		request.setAttribute("myName",fname);
   		request.setAttribute("myLastName",lname);
   		
   		request.getRequestDispatcher("HelloUserSuccess.jsp").forward(request, response);
	}

}
