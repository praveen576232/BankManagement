package com.bank;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Bankdata {
public boolean SaveBank(String phno  ,String Bank, String number , String name ,String Baranch , String ifsc)
{
	 try
	 {
		 String url= "jdbc:mysql://localhost:3306/dbmsproject";
			String uname="root";
			String pass="praveed123";
		
			
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
					check=true;
					break;
				}
				else
				{
					
					check=false;
					
				}
				
				
			}
			if(check)
			{
				String query="insert into bank values('"+phno+"','"+Bank+"','"+number+"','"+Baranch+"','"+ifsc+"','1000')";		
				System.out.println(query);
				Statement st1=con.createStatement();
				int a= st1.executeUpdate(query);
				if(a<0)
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
