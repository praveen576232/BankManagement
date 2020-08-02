package com.loan;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class saveloan {
  public boolean saveloandata(String name,String gender,String dob ,String phno, String Address ,String passport ,String aadhar, String amt ,String loan,String period)

  {
	  int a=0;
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
				System.out.println("check"
						+ check);
			//	String query="insert into loandata values(?,?,?,?,?,?,?,?,?,?,?)";
			
				String query="insert into loandata values('"+phno+"','"+name+"','"+gender+"','"+dob+"','"+Address+"','"+passport+"','"+aadhar+"',"+amt+",'"+loan+"','"+period+"')";
				System.out.println("query :"+query);
			
				
				Statement st1=con.createStatement();
				 a= st1.executeUpdate(query);
				System.out.println(a);
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
				System.out.println("check"+check);
				st.close();
				con.close();
			
				return false;
			
			}
	  
	  }
	  catch(Exception e)
	  {
		  return false;
	  }
	  
  }
}
