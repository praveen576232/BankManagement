package com.bank;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.currentdata.Currentuserdata;

import userdata.com.Userinfo;

/**
 * Servlet implementation class Bank
 */
public class Bank extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ph=request.getParameter("phno");
		String Bank=request.getParameter("Bank");
		String number=request.getParameter("number");
		String name=request.getParameter("name");
		String Baranch=request.getParameter("Baranch");
		String ifsc=request.getParameter("ifsc");
		Bankdata data= new Bankdata();
		boolean result=data.SaveBank(ph, Bank, number, name, Baranch, ifsc);
		if(result)
		{
			 request.setAttribute("check", "ok");
			 Currentuserdata data1=new Currentuserdata();
			 System.out.println("ph   ph :  "+ph );
			
			  Userinfo user=   data1.currentuser(ph);
			  System.out.println("iuser tale : "+user);
			  request.setAttribute("data", user);
			 RequestDispatcher res=request.getRequestDispatcher("home.jsp");
		  	   res.forward(request, response);
	}
		else
		{
			request.setAttribute("check", "fail");
			 Currentuserdata data1=new Currentuserdata();
			  Userinfo user=   data1.currentuser(ph);
			  request.setAttribute("data", user);
			 RequestDispatcher res=request.getRequestDispatcher("home.jsp");
		  	   res.forward(request, response);
		}
	}

}
