package com.spring.dao;

public class Car {
	
	private int id;
	private String manufacturer;
	private String model;
	private int yearOfProduction;
	private double pricePerDay;
	
	
	public Car(){
	}
	
	
	
	public Car(String manufacturer, String model, int yearOfProduction, double pricePerDay) {
		this.manufacturer = manufacturer;
		this.model = model;
		this.yearOfProduction = yearOfProduction;
		this.pricePerDay = pricePerDay;
	}
	
	public Car(int id, String manufacturer, String model, int yearOfProduction, double pricePerDay) {
		this.id = id;
		this.manufacturer = manufacturer;
		this.model = model;
		this.yearOfProduction = yearOfProduction;
		this.pricePerDay = pricePerDay;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public int getYearOfProduction() {
		return yearOfProduction;
	}
	public void setYearOfProduction(int yearOfProduction) {
		this.yearOfProduction = yearOfProduction;
	}
	public double getPricePerDay() {
		return pricePerDay;
	}
	public void setPricePerDay(double pricePerDay) {
		this.pricePerDay = pricePerDay;
	}
	
	
	@Override
	public String toString() {
		return "Car [id=" + id + ", manufacturer=" + manufacturer + ", model=" + model + ", YearOfProduction="
				+ yearOfProduction + ", pricePerDay=" + pricePerDay + "]\n";
	}
	
	
	
	

}
