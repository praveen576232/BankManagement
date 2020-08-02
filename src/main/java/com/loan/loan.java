package com.loan;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.currentdata.Currentuserdata;

import userdata.com.Userinfo;

/**
 * Servlet implementation class loan
 */
public class loan extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String t1=request.getParameter("t1");
		String date=request.getParameter("date");
		String ph=request.getParameter("ph");
		
		String Address=request.getParameter("Address");
		String passport=request.getParameter("passport");
		String aadhar=request.getParameter("aadhar");
		String amt=request.getParameter("amt");
		String loan=request.getParameter("loan");
		String period=request.getParameter("period");
		saveloan sv=new saveloan();
	boolean result=	sv.saveloandata(name, t1, date, ph, Address, passport, aadhar, amt, loan, period);
		
	System.out.println(" result is "+result);
	if(result)
	{
		 request.setAttribute("check", "ok");
		 
		 Currentuserdata data=new Currentuserdata();
		  Userinfo user=   data.currentuser(ph);
		  request.setAttribute("data", user);
		  
		 RequestDispatcher res=request.getRequestDispatcher("home.jsp");
	  	   res.forward(request, response);
	}
	else
	{
		
		 Currentuserdata data=new Currentuserdata();
		  Userinfo user=   data.currentuser(ph);
		  request.setAttribute("data", user);
		 request.setAttribute("check", "fail");
		
		 RequestDispatcher res=request.getRequestDispatcher("home.jsp");
	  	   res.forward(request, response);
	}
	}

}
