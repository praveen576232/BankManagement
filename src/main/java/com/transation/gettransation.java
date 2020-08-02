package com.transation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.Acount.Account;
import com.Acount.savetransformdata;
import com.transform.SaveTransform;

public class gettransation {
   public savetransformdata[] getdata(String phno)  
   {
	   int i=0;
	   boolean check=false;
	   try
	   {
	   	
	   	String url= "jdbc:mysql://localhost:3306/dbmsproject";
	   	String uname="root";
	   	String pass="praveed123";

	   	
	    Class.forName("com.mysql.cj.jdbc.Driver");
	   	Connection con=DriverManager.getConnection(url,uname,pass);
	   	
	   	Statement st=con.createStatement();
	   	ResultSet s =  st.executeQuery("select * from transform where  phno = '"+phno+"' ");
	   	savetransformdata[] ac2=new savetransformdata[20];
		Statement st1=con.createStatement();
	   	ResultSet s1 =  st1.executeQuery("select tdate from transdate where  phno = '"+phno+"' ");
	   	while(s.next())
	   	{
	   		String date=null;
	   		String number=s.getString("number");
	   		String amount =s.getString("amount");
	   				String banknumber =		s.getString("banknumber");
	   						String Baranch =	s.getString("Baranch");
	   								String ifsc =	s.getString("ifsc");
	   							if(s1.next())
	   							{
	   								 date=s1.getString("tdate");
	   							}
	   								savetransformdata ac1=new savetransformdata();	 
	   		  ac2[i]=ac1;
	   		 
	   	  ac2[i].setAmount(amount);
	   	  ac2[i].setBanknumber(banknumber);
	   	  ac2[i].setBaranch(Baranch);
	   	  ac2[i].setIfsc(ifsc);
	   	  ac2[i].setNumber(number);
	   	  ac2[i].setDate(date);
	   		i++;
	   		
	   		check=true;
	   	}
	   	if(check)
	   	{
	   		System.out.println("ac data "+ac2[0].getAmount());
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
