package com.card;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Card
 */
public class Card extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ph=request.getParameter("phno");
		String card=request.getParameter("card");
		String cardname=request.getParameter("cardname");
		String date=request.getParameter("date");
		String cvv=request.getParameter("cvv");
		System.out.println("   " +card+"  "+cardname+"  "+ date+"  "+ cvv+"  "+ ph);
		Cardsave cs=new Cardsave();
		boolean result=cs.Carddata(card, cardname, date, cvv, ph);

		if(result)
		{
		
			 RequestDispatcher res=request.getRequestDispatcher("profile.jsp");
		  	   res.forward(request, response);
	}
		else
		{
	
			 RequestDispatcher res=request.getRequestDispatcher("profile.jsp");
		  	   res.forward(request, response);
		}
	}

}
