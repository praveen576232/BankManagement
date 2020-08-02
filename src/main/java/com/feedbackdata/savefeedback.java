package com.feedbackdata;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.currentdata.Currentuserdata;

import userdata.com.Userinfo;

/**
 * Servlet implementation class savefeedback
 * savefeedback
 */
public class savefeedback extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String country=request.getParameter("country");
		String subject=request.getParameter("subject");
		
		Save s=new Save();
		
		System.out.println(name);
		System.out.println(email);
		System.out.println(country);
		System.out.println(subject);
		boolean check=s.savedata(name, email, country, subject);
		if(check)
		{
		  RequestDispatcher res=request.getRequestDispatcher("feedback.jsp");
	  	   res.forward(request, response);
		}
		else
		{
			
			  RequestDispatcher res=request.getRequestDispatcher("feedback.jsp");
		  	   res.forward(request, response);
		}
		
	}

}
