package com.Updatedata;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class Updating {
  public boolean Update( String phone,String name ,String lname,String email,String ph) {
	try
	{
		System.out.println("update car");
		 String url= "jdbc:mysql://localhost:3306/dbmsproject";
			String uname="root";
			String pass="praveed123";
			String query="update register set name=?,lname=?,email=?,phno=? where phno= ?";
			
		 Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,uname,pass);
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, lname);
			ps.setString(3, email);
			ps.setString(4, phone);
			ps.setString(5, phone);
			
			ps.executeUpdate();
			int a=0;
			Statement st=con.createStatement();
			System.out.println("update register set name='"+name+"',lname='"+lname+"',email='"+email+"',phno='"+phone+"' where phno= '"+ph+"'");
			a=st.executeUpdate("update register set name='"+name+"',lname='"+lname+"',email='"+email+"',phno='"+phone+"' where phno= '"+ph+"'");
			System.out.println("a is "+a);
			if(a<0)
			{
				System.out.println(a);
				return true;
				
			}
			else {
				return false;

			}
			
			
	}
	
	catch (Exception e) {
		// TODO: handle exception
		return false;
	}
} 
}
