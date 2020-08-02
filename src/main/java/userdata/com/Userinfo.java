package userdata.com;

public class Userinfo {
	private String phno;
		private	String name;
		private	String lname;
		private String email;
		private String balance;
		public String getBalance() {
			return balance;
		}
		public void setBalance(String balance) {
			this.balance = balance;
		}
		public String getPhno() {
			return phno;
		}
		public void setPhno(String phno) {
			this.phno = phno;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getLname() {
			return lname;
		}
		public void setLname(String lname) {
			this.lname = lname;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		@Override
		public String toString() {
			return "Userinfo [phno=" + phno + ", name=" + name + ", lname=" + lname + ", email=" + email + ", balance="
					+ balance + "]";
		}
		
		
		
	
}
