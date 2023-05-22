package com.subscription.model;

public class SubscriptionType {

	public int subTypeID;
	public String subTypeName;

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

	@Override
	public String toString() {
		return "SubscriptionType [subTypeID=" + subTypeID + ", subTypeName=" + subTypeName + "]";
	}
}