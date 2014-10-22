package com.EWaiter.model.food;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity(name="SortGropsModel")

//分类组，在给food设置子分类时用到
public class SortGroupsModel 
{
	@Id
	@GeneratedValue
	private long id;
	//名字
	private String name;
	
	//子分类集合
	@OneToMany(fetch = FetchType.EAGER)
	@JoinColumn(name="groupID")
	private Set<FoodSortModel> foodSortModels;
	
	public long getId()
	{
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
	public Set<FoodSortModel> getFoodSortModels()
	{
		return foodSortModels;
	}
	public void setFoodSortModels(Set<FoodSortModel> foodSortModels)
	{
		this.foodSortModels = foodSortModels;
	}
	
	
}
