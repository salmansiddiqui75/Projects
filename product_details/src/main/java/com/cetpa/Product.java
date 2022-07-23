package com.cetpa;
import javax.persistence.*;
@Entity 
@Table(name="Product_details")
public class Product
{
	@Id
	@GeneratedValue
	private int pid;
	private String name;
	private String brand;
	private int price;
	private int quantity;
	public Product() {}
	public Product(String name, String brand, int quantity, int price) 
	{
		this.name = name;
		this.brand = brand;
		this.quantity = quantity;
		this.price = price;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String toString() {
		return "Product [pid=" + pid + ", name=" + name + ", brand=" + brand + ", quantity="
				+ quantity + ", price=" + price + "]";
	}
	
	
	
}
