package com.feedbackdata;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class Save {
public boolean savedata(String name ,String email, String country ,String subject)
{
	 try
	 {
		 int i=0;
		 String url= "jdbc:mysql://localhost:3306/dbmsproject";
			String uname="root";
			String pass="praveed123";
			String query="insert into feedback values('"+name+"','"+email+"','"+country+"','"+subject+"')";
			
		 Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,uname,pass);
			
			Statement st=con.createStatement();
			System.out.println(query);
			 i=st.executeUpdate(query);
		
			if(i>0)
			{
				return true;
			}
			else
			{
				return false;		
				}

	
	 }catch(Exception ee) {
		 return false; }
	
}
}
