package com.register;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Register extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String phno=request.getParameter("phno");
		String pass=request.getParameter("pass");
		saveform ss=new saveform();
		boolean check= ss.registration(name, lname, email, phno, pass);
		if(check)
		{
            RequestDispatcher dd=request.getRequestDispatcher("index.jsp");
			 dd.forward(request, response);
		}
		else
		{
			RequestDispatcher dd=request.getRequestDispatcher("index.jsp");
			 dd.forward(request, response);
		}
		
	}

}
