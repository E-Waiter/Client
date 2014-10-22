package com.EWaiter.dao;



import java.math.BigInteger;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.EWaiter.model.food.FoodModel;
import com.EWaiter.model.food.FoodTypeModel;

@Repository("foodTypeDAO")
public class FoodTypeDAO extends BaseDAO
{
	public FoodTypeModel getFoodTypeByID(long id)
	{
		
		String hql = "from foodType f where f.id=?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setLong(0, id);
		return (FoodTypeModel)query.uniqueResult();
	}



	
	public List<FoodTypeModel> getFoodTypes(long merID)
	{
		String hql = "from foodType f where f.merModel.id=?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setLong(0, merID);
		return query.list();	
	}
	public void addFoodType(FoodTypeModel foodTypeModel) 
	{
		getSessionFactory().getCurrentSession().save(foodTypeModel);
	}
	public boolean delFoodType(long id) 
	{
		String hql = "delete foodType f where f.id = ?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setLong(0, id);
		return (query.executeUpdate() > 0);
		
	}


	public boolean updateFoodType(FoodTypeModel foodTypeModel)
	{
		String hql = "update foodType f set f.merID=:merID,f.name=name,f.des=:des where f.id =:id";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setProperties(foodTypeModel);
		return (query.executeUpdate() > 0);
	}
	
}
