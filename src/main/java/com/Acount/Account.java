package com.Acount;

import java.util.Arrays;

public class Account {
 private String bankname;
 private String banknumber;
 private String branch;
 private String balance;
 private String ifsc;
public String getBankname() {
	return bankname;
}
public void setBankname(String bankname) {
	this.bankname = bankname;
}
public String getBanknumber() {
	return banknumber;
}
public void setBanknumber(String banknumber) {
	this.banknumber = banknumber;
}
public String getBranch() {
	return branch;
}
public void setBranch(String branch) {
	this.branch = branch;
}
public String getBalance() {
	return balance;
}
public void setBalance(String balance) {
	this.balance = balance;
}
public String getIfsc() {
	return ifsc;
}
public void setIfsc(String ifsc) {
	this.ifsc = ifsc;
}
@Override
public String toString() {
	return "Account [bankname=" + bankname + ", banknumber=" + banknumber + ", branch=" + branch + ", balance="
			+ balance + ", ifsc=" + ifsc + "]";
}

 
}
