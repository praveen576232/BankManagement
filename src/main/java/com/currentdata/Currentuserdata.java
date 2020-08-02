package com.currentdata;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import userdata.com.Userinfo;

public class Currentuserdata {
public Userinfo currentuser(String phno) {
	Userinfo user=new Userinfo();
	try
	{
		String url= "jdbc:mysql://localhost:3306/dbmsproject";
		String uname="root";
		String pass="praveed123";
		
		
	 Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		
		Statement st=con.createStatement();
		ResultSet s =  st.executeQuery("select * from register where phno= "+phno);
		if(s.next())
		{
			
	
			user.setName(s.getString("name"));
			user.setEmail(s.getString("email"));
			user.setLname(s.getString("lname"));
			user.setPhno(s.getString("phno"));
			Statement st1=con.createStatement();
			ResultSet s1=  st1.executeQuery("select balance from bank where phno= '"+phno+"'");
			while(s1.next())
			{
			user.setBalance(s1.getString("balance"));
			
			}
					st.close();
			con.close();
			 return user;
			
		}
		else
		{
			st.close();
			con.close();
			return null;
		}
	}
	catch(Exception e)
	{
		return null;
	}
}
}
