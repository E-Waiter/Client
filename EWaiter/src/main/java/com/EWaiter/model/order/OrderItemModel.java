package com.EWaiter.model.order;


import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.EWaiter.model.food.FoodModel;

@Entity(name = "orderItemsModel")
@Table(name ="OrderItems")
public class OrderItemModel
{
	@Id
	@GeneratedValue
	private long id;
	
	@OneToOne
	@JoinColumn(name ="foodID")
	private FoodModel foodModel;

	private long number;
	private String type;
	private String des;
	
	
	
	
	public FoodModel getFoodModel() {
		return foodModel;
	}
	public void setFoodModel(FoodModel foodModel) {
		this.foodModel = foodModel;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	

	public long getNumber() {
		return number;
	}
	public void setNumber(long number)
	{
		this.number = number;
	}
	public String getDes() 
	{
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	
	
	
}
