package com.subscription.model;

public class Products {
	public int prodID;
	public String prodName;
	public int prodMonthlyPrice;
	public int prodQuarterlyPrice;
	public int prodYearlyPrice;

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

	public int getProdMonthlyPrice() {
		return prodMonthlyPrice;
	}

	public void setProdMonthlyPrice(int prodMonthlyPrice) {
		this.prodMonthlyPrice = prodMonthlyPrice;
	}

	public int getProdQuarterlyPrice() {
		return prodQuarterlyPrice;
	}

	public void setProdQuarterlyPrice(int prodQuarterlyPrice) {
		this.prodQuarterlyPrice = prodQuarterlyPrice;
	}

	public int getProdYearlyPrice() {
		return prodYearlyPrice;
	}

	public void setProdYearlyPrice(int prodYearlyPrice) {
		this.prodYearlyPrice = prodYearlyPrice;
	}

	@Override
	public String toString() {
		return "Products [prodID=" + prodID + ", prodName=" + prodName + ", prodMonthlyPrice=" + prodMonthlyPrice
				+ ", prodQuarterlyPrice=" + prodQuarterlyPrice + ", prodYearlyPrice=" + prodYearlyPrice + "]";
	}
}