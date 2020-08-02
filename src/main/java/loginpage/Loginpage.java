package loginpage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import userdata.com.Userinfo;

public class Loginpage {
public Userinfo checklog(String phno,String password)
{
	String username="";
	String userbal="your not add a bank";
	Userinfo userdetail=new Userinfo();
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
			
			if(phno.equals(s.getString("phno")))
			{
				System.out.println("check "+phno);
				check=true;
				
				break;
			}
			
		}
		if(check)
		{
			Statement st2=con.createStatement();
			ResultSet ss =  st2.executeQuery("select pass from register where phno= "+phno);
			if(ss.next())
			{
				String pas=ss.getString("pass");
				
				if(pas.equals(password))
				{
					Statement st3=con.createStatement();
					ResultSet sss =  st2.executeQuery("select * from register where phno= "+phno);
					if(sss.next())
					{
						username=sss.getString("name");
						String email=sss.getString("email");
						System.out.println(email);
						userdetail.setName(username);
						userdetail.setEmail(email);
						userdetail.setLname(sss.getString("lname"));
						userdetail.setPhno(sss.getString("phno"));
						System.out.println(username);
						   String name123=userdetail.getName();
						   Statement st4=con.createStatement();
							ResultSet s1 =  st4.executeQuery("select balance from bank where phno= '"+phno+"'");
							if(s1.next())
							{
								userbal=s1.getString("balance");
								userdetail.setBalance(userbal);
								st4.close();
								s1.close();
							}
						return userdetail;
					}
				}
				else
				{
					return null;
				}
			}
		}
		else
		{
			return null;
		}
		
	}catch(Exception e) {
		System.out.println(e);
		return null;}
	return userdetail;
}
}
