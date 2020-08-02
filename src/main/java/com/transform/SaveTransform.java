package com.transform;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class SaveTransform {
	public boolean SaveBank(String phno  ,int amount, String number , String name ,String Baranch , String ifsc,String banknumber)
	{
		int am=amount;
		int a=0;
		System.out.println("i save traform");
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
					
					if(number.equals(s.getString("phno")))
					{
						System.out.println("roo2");
						check=true;
						
						Statement st2=con.createStatement();
						ResultSet r2 =  st2.executeQuery("select balance from bank where phno= '"+phno+"'");
						System.out.println("roo2");
						if(r2.next())
						{
							System.out.println("r2");
							int balamt;
							String bal=r2.getString("balance");
							System.out.println("balance  "+bal);
							if(Integer.parseInt(bal)<=am)
							{
								
								st2.close();
								return false;
							}
							else
							{
								balamt=Integer.parseInt(bal)-amount;
								Statement st3=con.createStatement();
								st3.executeUpdate("update bank set balance='"+balamt+"' where phno= '"+phno+"'");
								Statement st1=con.createStatement();
								ResultSet re =  st1.executeQuery("select balance from bank where phno= '"+number+"' ");
								if(re.next())
								{
									
									String bal1=re.getString("balance");
									System.out.println("balance2  "+bal1);
									amount=amount+Integer.parseInt(bal1);
									Statement st4=con.createStatement();
									st4.executeUpdate("update bank set balance='"+amount+"' where phno= '"+number+"'");
									
								}
							}
						
						}
						
						break;
					}
					else
					{
						
						check=false;
						
					}
					
					
				}
				if(check)
				{
					String query="insert into transform values('"+phno+"','"+am+"','"+number+"','"+banknumber+"','"+Baranch+"','"+ifsc+"')";		
					System.out.println(query);
					Statement st1=con.createStatement();
					a= st1.executeUpdate(query);
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
