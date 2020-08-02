package loginpage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import userdata.com.Userinfo;

public class Login extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phno=request.getParameter("phno");
		String pass=request.getParameter("pas");
		Loginpage log=new Loginpage();
	Userinfo user=	log.checklog(phno, pass);
	 PrintWriter pw=response.getWriter();
	if(user!=null)
	{
		 
		request.setAttribute("data", user);
		 RequestDispatcher dd=request.getRequestDispatcher("home.jsp");
		 dd.forward(request, response);
		
	}
	else
	{
		request.setAttribute("data", user);
		request.setAttribute("register", "login failed ");
		 RequestDispatcher dd=request.getRequestDispatcher("index.jsp");
		 dd.forward(request, response);
	}
	}

}
