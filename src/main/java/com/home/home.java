package com.home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.currentdata.Currentuserdata;

import userdata.com.Userinfo;

/**
 * Servlet implementation class home
 */
public class home extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String ph=request.getParameter("p1");  
	
		Currentuserdata data1=new Currentuserdata();
		  Userinfo user=   data1.currentuser(ph);
		  request.setAttribute("data", user);
		  
		  RequestDispatcher res=request.getRequestDispatcher("home.jsp");
	  	   res.forward(request, response);
	}

}
