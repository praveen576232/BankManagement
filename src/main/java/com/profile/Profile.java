package com.profile;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.currentdata.Currentuserdata;

import userdata.com.Userinfo;

/**
 * Servlet implementation class Profile
 */
public class Profile extends HttpServlet {
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s=request.getParameter("pp");
		String ss[]=s.split(" ");
		String p[]=ss[1].split("=");
		String ph[]=p[1].split(",");
		String pp=ph[0];
		String name[]=ss[2].split(",");
		String lname []=ss[3].split(",");
		String email[]=ss[4].split(",");
		String nn1[]=name[0].split("=");
		String nn2[]=lname[0].split("=");
		String ee[]=email[0].split("=");
		
		System.out.println("profile");
		request.setAttribute("phone", pp);
		request.setAttribute("name", nn1[1]);
		request.setAttribute("lname", nn2[1]);
		request.setAttribute("email", ee[1]);
		request.setAttribute("user", ""+pp+","+nn1[1]+","+nn2[1]+","+ee[1]+"");
		  Currentuserdata data=new Currentuserdata();
		  Userinfo user=   data.currentuser(pp);
		  request.setAttribute("data", user);
		 RequestDispatcher dd=request.getRequestDispatcher("profile.jsp");
		 dd.forward(request, response);
	}

}
