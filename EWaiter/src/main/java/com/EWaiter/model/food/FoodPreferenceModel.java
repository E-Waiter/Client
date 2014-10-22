package com.EWaiter.model.food;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="foodPreferenceModel")
@Table(name="FoodPreference")
public class FoodPreferenceModel 
{
	@Id
	@GeneratedValue
	private long id;
	private String name;
	private int type;
	public long getId() {
		return id;
	}
	public void setId(long id) 
	{
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
	public int getType() 
	{
		return type;
	}
	public void setType(int type) 
	{
		this.type = type;
	}
	
	
}
