package com.delete;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Acount.Account;
import com.Acount.Acountdetaile;
import com.currentdata.Currentuserdata;

import userdata.com.Userinfo;

/**
 * Servlet implementation class delete
 */
public class delete extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s=request.getParameter("phdelete");
		String p=s.substring(0, 10);
		String d=s.substring(10);
		Deletedata dd=new Deletedata();
		boolean check= dd.deletebank(d);
		//Acountdetaile a=new Acountdetaile();
 		//Account[] ac=a.Acdetaile(p);
 		
	     if(check)
	       {
	    	 
	 	//	if(ac!=null)
	 			
	 	//	{
	 			 Currentuserdata data1=new Currentuserdata();
	 			  Userinfo user=   data1.currentuser(p);
	 			  request.setAttribute("data1", user);
	 		
	 			 request.setAttribute("data",p);
	 			RequestDispatcher res=request.getRequestDispatcher("accjsp.jsp");
	 		  	   res.forward(request, response);
	 		//}
	       }
	       else
	       {
	    	   Currentuserdata data1=new Currentuserdata();
	 			  Userinfo user=   data1.currentuser(p);
	 			  request.setAttribute("data1", user);
	 			 request.setAttribute("data",p);
	 		//	System.out.println("le "+ac);
	 		//	 System.out.println(" "+ac[1].getBalance()+"  "+ac[1].getBankname());
	 			RequestDispatcher res=request.getRequestDispatcher("accjsp.jsp");
	 		  	   res.forward(request, response);
	    	    }
	}

}
