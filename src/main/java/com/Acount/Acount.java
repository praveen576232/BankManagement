package com.Acount;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.currentdata.Currentuserdata;

import userdata.com.Userinfo;

/**
 * Servlet implementation class Acount
 */
public class Acount extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ph=request.getParameter("ph");
		System.out.println("detailes "+ph);
	//	Acountdetaile a=new Acountdetaile();
	//	Account[] ac=a.Acdetaile(ph);
	//	if(ac!=null)
			
	//	{
			 Currentuserdata data1=new Currentuserdata();
			  Userinfo user=   data1.currentuser(ph);
			  request.setAttribute("data1", user);
			
			
			 request.setAttribute("data",ph);
			// System.out.println(" "+ac[1].getBalance()+"  "+ac[1].getBankname());
			RequestDispatcher res=request.getRequestDispatcher("accjsp.jsp");
		  	   res.forward(request, response);
	//	}
	}

}
