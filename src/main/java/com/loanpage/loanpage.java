package com.loanpage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.currentdata.Currentuserdata;

import userdata.com.Userinfo;

/**
 * Servlet implementation class loanpage
 */
public class loanpage extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 Currentuserdata data=new Currentuserdata();
		 String pp=request.getParameter("phh");
	
		 Userinfo user=   data.currentuser(pp);
		  request.setAttribute("data", user);
		  System.out.println("user   "+user);
		RequestDispatcher dd=request.getRequestDispatcher("loan.jsp");
		 dd.forward(request, response);
	}

}
