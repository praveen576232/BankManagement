package com.Acount;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Acountdetaile {
    Account[] ac=new Account[20];
  
   
    int i=0;
  boolean check=false;
    public Account[] Acdetaile(String phno)
    {
try
{
	
	String url= "jdbc:mysql://localhost:3306/dbmsproject";
	String uname="root";
	String pass="praveed123";

	
 Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,uname,pass);
	
	Statement st=con.createStatement();
	ResultSet s =  st.executeQuery("select * from bank where  phno = '"+phno+"' ");
	 Account[] ac2=new Account[20];
	while(s.next())
	{
		
		
		Account ac1=new Account();	 
		  ac2[i]=ac1;
		  
		ac2[i].setBankname(s.getString("name"));
		ac2[i].setBanknumber(s.getString("number"));
		ac2[i].setBalance(s.getString("balance"));
		ac2[i].setBranch(s.getString("branch"));
		ac2[i].setIfsc(s.getString("ifsc"));
	
		System.out.println("ac  "+ac2[i].getBankname());
		i++;
		
		check=true;
	}
	if(check)
	{
		System.out.println("ac data "+ac2[0].getBankname());
		return ac2;
	}
	else
	{
		return null;
	}
}catch(Exception e)
{
	return null ;
}

    }
}
