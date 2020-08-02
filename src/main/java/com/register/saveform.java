package com.register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class saveform {
 public boolean registration(String name,String lname,String email,String phno, String password)
 {
	
	 try
	 {
		 String url= "jdbc:mysql://localhost:3306/dbmsproject";
			String uname="root";
			String pass="praveed123";
			String query="insert into register values('"+name+"','"+lname+"','"+email+"','"+phno+"','"+password+"')";
			System.out.println(query);
		 Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,uname,pass);
			
			Statement st=con.createStatement();
			ResultSet s =  st.executeQuery("select phno from register");
			boolean check=false;
			while(s.next())
			{
				System.out.println(s.getString("phno"));
				if(phno.equals(s.getString("phno")))
				{
					
					check=false;
					break;
				}
				else
				{
					
					check=true;
					
				}
				
				
			}
			if(check)
			{
				
				Statement st1=con.createStatement();
				int a= st1.executeUpdate(query);
				if(a>0)
				{
					System.out.println(a);
					return true;
				}
				else {
					st1.close();
					st.close();
					con.close();
					return false;
					}
			}else 
			{
				
				st.close();
				con.close();
				return false;
				
			
			}
	
	 }catch(Exception ee) {
		 return false; }
	
 }
}
