package com.subscription.model;

public class User {
	public int userID;
	public String userName;
	public String password;
	public String confPass;
	public String userEmail;
	public long userPhno;
	public String userRole;

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfPass() {
		return confPass;
	}

	public void setConfPass(String confPass) {
		this.confPass = confPass;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public long getUserPhno() {
		return userPhno;
	}

	public void setUserPhno(long userPhno) {
		this.userPhno = userPhno;
	}

	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	@Override
	public String toString() {
		return "User [userID=" + userID + ", userName=" + userName + ", password=" + password + ", confPass=" + confPass
				+ ", userEmail=" + userEmail + ", userPhno=" + userPhno + ", userRole=" + userRole + "]";
	}
}