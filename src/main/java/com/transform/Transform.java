package com.transform;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.currentdata.Currentuserdata;

import userdata.com.Userinfo;

/**
 * Servlet implementation class Transform
 */
public class Transform extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ph=request.getParameter("phno");
		
		String number=request.getParameter("number");
		String banknumber=request.getParameter("banknumber");
		String name=request.getParameter("name");
		String Baranch=request.getParameter("Baranch");
		String ifsc=request.getParameter("ifsc");
		int amount=Integer.parseInt( request.getParameter("amount"));
		SaveTransform sv=new SaveTransform();
		
		System.out.println("        "+ph+"," +amount+", "+number+","+ name+","+ Baranch+", "+ifsc+","+banknumber);
		boolean result=sv.SaveBank(ph, amount, number, name, Baranch, ifsc,banknumber);

		if(result)
		{
			 Currentuserdata data1=new Currentuserdata();
			  Userinfo user=   data1.currentuser(ph);
			  request.setAttribute("data", user);
			 request.setAttribute("check", "ok");
			 RequestDispatcher res=request.getRequestDispatcher("home.jsp");
		  	   res.forward(request, response);
		}
		else
		{
	
			 Currentuserdata data1=new Currentuserdata();
			  Userinfo user=   data1.currentuser(ph);
			  request.setAttribute("data", user);
			 request.setAttribute("check", "fail");
			 RequestDispatcher res=request.getRequestDispatcher("home.jsp");
		  	   res.forward(request, response);
		}
	}

}
