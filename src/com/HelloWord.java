package com;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloWord
 */
@WebServlet("/HelloWord")
public class HelloWord extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public HelloWord() {
    	
    }

	public void init(ServletConfig config) throws ServletException {
		System.out.println("Hello Word  .. init method execute");
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" Hello Word ... doGet method executed");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hello Word ... doPost method executed");
		response.sendRedirect("HelloWord.jsp");
	}
	
}
