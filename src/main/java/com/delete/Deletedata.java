package com.delete;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class Deletedata {
public boolean deletebank(String bank)
{
	try
	{
		System.out.println("update car");
		 String url= "jdbc:mysql://localhost:3306/dbmsproject";
			String uname="root";
			String pass="praveed123";
			
			
		 Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,uname,pass);
			
		
			int a=0;
			Statement st=con.createStatement();
			System.out.println("ak umer :"+bank);
			a=st.executeUpdate("delete from bank where number='"+bank+"'");
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
