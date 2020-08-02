package com.Acount;

public class savetransformdata {
	

	
		 private int i;
		 public int getI() {
			return i;
		}

		public void setI(int i) {
			this.i = i;
		}

		private String amount;
		 private String number;
		 private String banknumber;
		 private String Baranch;
		 private String ifsc;
		 private String date;
		public String getAmount() {
			return amount;
		}
		
		public void setAmount(String amount) {
			this.amount = amount;
		}
		public String getNumber() {
			return number;
		}
		public void setNumber(String number) {
			this.number = number;
		}
		public String getBanknumber() {
			return banknumber;
		}
		public void setBanknumber(String banknumber) {
			this.banknumber = banknumber;
		}
		public String getBaranch() {
			return Baranch;
		}
		public void setBaranch(String baranch) {
			Baranch = baranch;
		}
		public String getIfsc() {
			return ifsc;
		}
		public void setIfsc(String ifsc) {
			this.ifsc = ifsc;
		}

		public String getDate() {
			return date;
		}

		public void setDate(String date) {
			this.date = date;
		}

		@Override
		public String toString() {
			return "savetransformdata [i=" + i + ", amount=" + amount + ", number=" + number + ", banknumber="
					+ banknumber + ", Baranch=" + Baranch + ", ifsc=" + ifsc + ", date=" + date + "]";
		}

		
		
	
}


