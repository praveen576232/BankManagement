package com.Updatedata;


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.currentdata.Currentuserdata;

import userdata.com.Userinfo;

public class Update extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String phone=request.getParameter("phone");
         String name=request.getParameter("name");
         String lname=request.getParameter("lname");
         String email=request.getParameter("email");
         String ph=request.getParameter("ph");
         System.out.println("ph :"+ph);
         String us[]=ph.split(",");
        if(phone=="")
        	phone=us[0];
        if(name=="")
        	name=us[1];
        if(lname=="")
        	lname=us[2];
        if(email=="")
        	email=us[3];
         Updating u=new Updating();
        Currentuserdata data=new Currentuserdata();
        System.out.println(""+phone+", "+name+","+ lname+", "+email+","+ph);
       boolean check=  u.Update(phone, name, lname, email,ph);
       if(check)
       {
    	   System.out.println("user "+check);
    	   Userinfo user=   data.currentuser(ph);
    			   System.out.println(user);
    	   request.setAttribute("phone",user.getPhno() );
   		request.setAttribute("name", user.getName());
   		request.setAttribute("lname", user.getLname());
   		request.setAttribute("email", user.getEmail());
   		request.setAttribute("user", ph);
   		System.out.println("sussses");
   	   request.setAttribute("data", user);
        	 request.setAttribute("check", "ok");
        	 
    	   RequestDispatcher res=request.getRequestDispatcher("profile.jsp");
    	   res.forward(request, response);
       }
       else
       {
    	   System.out.println("user "+ph);
    	   Userinfo user=   data.currentuser(phone);
    	   System.out.println(user);
    	    if(user!=null)
    	    {
    	    	 request.setAttribute("phone",user.getPhno() );
    	    		request.setAttribute("name", user.getName());
    	    		request.setAttribute("lname", user.getLname());
    	    		request.setAttribute("email", user.getEmail());
    	    		request.setAttribute("user", ph);
    	    		request.setAttribute("check", "ok");
    	    		request.setAttribute("user", ph);
    	       		System.out.println("sussses");
    	       	   request.setAttribute("data", user);
    	      	       RequestDispatcher res=request.getRequestDispatcher("profile.jsp");
    	  	           res.forward(request, response);
    	    }
    	    else
    	    {
    	    	System.out.println("ot updated");
    	    
    	    	request.setAttribute("user", ph);
    	   		System.out.println("sussses");
    	   	   request.setAttribute("data", user);
    	       request.setAttribute("check", "fail");
    	      
      	       RequestDispatcher res=request.getRequestDispatcher("profile.jsp");
  	           res.forward(request, response);
    	    }
       }
	        
	}

}
