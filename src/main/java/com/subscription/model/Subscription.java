package com.subscription.model;

import java.time.LocalDate;

public class Subscription {

	public int subID;
	private int userID;
	private int prodID;
	private String prodName;
	private int subTypeID;
	private String subTypeName;
	private int price;
	private LocalDate subDate;
	private boolean status;

	public Subscription() {
		super();
	}

	public Subscription(int userID, int prodID, String prodName, int subTypeID, String subTypeName, int price,
			LocalDate subDate, boolean status) {
		super();

		this.userID = userID;
		this.prodID = prodID;
		this.prodName = prodName;
		this.subTypeID = subTypeID;
		this.subTypeName = subTypeName;
		this.price = price;
		this.subDate = subDate;
		this.status = status;
	}

	public int getSubID() {
		return subID;
	}

	public void setSubID(int subID) {
		this.subID = subID;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public int getProdID() {
		return prodID;
	}

	public void setProdID(int prodID) {
		this.prodID = prodID;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public int getSubTypeID() {
		return subTypeID;
	}

	public void setSubTypeID(int subTypeID) {
		this.subTypeID = subTypeID;
	}

	public String getSubTypeName() {
		return subTypeName;
	}

	public void setSubTypeName(String subTypeName) {
		this.subTypeName = subTypeName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public LocalDate getSubDate() {
		return subDate;
	}

	public void setSubDate(LocalDate subDate) {
		this.subDate = subDate;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Subscription [subID=" + subID + ", userID=" + userID + ", prodID=" + prodID + ", prodName=" + prodName
				+ ", subTypeID=" + subTypeID + ", subTypeName=" + subTypeName + ", price=" + price + ", subDate="
				+ subDate + ", status=" + status + "]";
	}
}