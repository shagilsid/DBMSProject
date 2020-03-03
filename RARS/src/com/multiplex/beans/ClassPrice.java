package com.multiplex.beans;

public class ClassPrice {
	
	private double normalPrice;
	private double executivePrice;
	private double premiumPrice;
	public double getNormalPrice() {
		return normalPrice;
	}
	public void setNormalPrice(double normalPrice) {
		this.normalPrice = normalPrice;
	}
	public double getExecutivePrice() {
		return executivePrice;
	}
	public void setExecutivePrice(double executivePrice) {
		this.executivePrice = executivePrice;
	}
	public double getPremiumPrice() {
		return premiumPrice;
	}
	public void setPremiumPrice(double premiumPrice) {
		this.premiumPrice = premiumPrice;
	}
	@Override
	public String toString() {
		return "ClassPrice [normalPrice=" + normalPrice + ", executivePrice=" + executivePrice + ", premiumPrice="
				+ premiumPrice + "]";
	}
	
	
	
}
