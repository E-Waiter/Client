package com.EWaiter.model.order;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="orderPreferenceModel")
@Table(name="OrderPreference")
public class OrderPreferenceModel 
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
	public int getType() {
		return type;
	}
	public void setType(int type) 
	{
		this.type = type;
	}
	
	
}
