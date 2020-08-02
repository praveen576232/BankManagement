package com.transation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Acount.savetransformdata;
import com.currentdata.Currentuserdata;

import userdata.com.Userinfo;

/**
 * Servlet implementation class transation
 */
public class transation extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ph=request.getParameter("phno");
		
			 request.setAttribute("data",ph);
			 Currentuserdata data1=new Currentuserdata();
			  Userinfo user=   data1.currentuser(ph);
			  request.setAttribute("data1", user);
			RequestDispatcher res=request.getRequestDispatcher("tars.jsp");
		  	   res.forward(request, response);
	
	}

}
