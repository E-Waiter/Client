package com.EWaiter.model.food;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

//菜品的子类（比如高点就分为大中小等子类）
@Entity(name="foodSortModel")
@Table(name="FoodSort")
public class FoodSortModel
{
	@Id
	@GeneratedValue
	private long id;
	//名字
	private String name;
	//价格
	private double price;
	//默认选项
	private boolean isDefault;
	//说明
	private String note;
	
	
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name) 
	{
		this.name = name;
	}
	public double getPrice()
	{
		return price;
	}
	public void setPrice(double price) 
	{
		this.price = price;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public boolean isDefault() {
		return isDefault;
	}
	public void setDefault(boolean isDefault) {
		this.isDefault = isDefault;
	}
	
	
	
}
