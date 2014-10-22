package com.EWaiter.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.EWaiter.model.food.FoodModel;


@Repository("foodDAO")
public class FoodDAO extends BaseDAO
{

	public FoodModel getFoodByID(long id) {
		
		String hql = "from food f where f.id=?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setLong(0, id);
		
		return (FoodModel)query.uniqueResult();
	}

	
	public List<FoodModel> getFoods(long merID , long foodtypeID)
	{
		
		String hql = "from food f where f.merID=? and f.foodTypeID=?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setLong(0, merID);
		query.setLong(1, foodtypeID);
		return query.list();
	}

	
	public void addFood(FoodModel foodModel) {
		getSessionFactory().getCurrentSession().save(foodModel);
	}


	public boolean delFood(long id) {
		String hql = "delete food f where f.id = ?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setLong(0, id);
		return (query.executeUpdate() > 0);
	}


	public boolean updateFood(FoodModel foodModel) {
		
		String hql = "update food f set f.foodTypeID =:foodTypeID,f.merID=:merID,f.name=:name,f.url=:url,f.price=:price,f.dPrice=:dPrice,f.isTakeOut=:isTakeOut,f.isChara=:isChara,f.status=:status where f.id=:id";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setProperties(foodModel);
		
		return (query.executeUpdate() > 0);
	}
}
