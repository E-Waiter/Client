package com.EWaiter.dao.order;

import java.util.Date;





import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.EWaiter.dao.BaseDAO;
import com.EWaiter.model.food.FoodModel;
import com.EWaiter.model.order.OrderModel;


@Repository("orderDAO")
public class OrderDAO extends BaseDAO 
{
	public OrderModel getOrderByID(int id)
	{
		String hql = "from orderModer o where o.id=?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setInteger(0, id);
		return (OrderModel)query.uniqueResult();
	}
	
	
	public List<OrderModel> getOrderByMerID(long merID , int status)
	{
		String hql = "FROM orderModel o WHERE o.merModel.id=? and o.status=?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setLong(0, merID);
		query.setInteger(1, status);
		return query.list();
	}
	
	
	public long addOrder(OrderModel orderModel) {
		Long id = (Long)getSessionFactory().getCurrentSession().save(orderModel);
		return id;
	}
	
	public boolean delOrder(long id)
	{
		String hql = "DELETE orderModer o WHERE o.id = ?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setLong(0, id);
		return (query.executeUpdate() > 0);
	}
	public boolean updateOrder(OrderModel orderModel)
	{
		String hql = "UPDATE orderModel o SET o.method=:method,o.merID=:merID,o.userID=:userID,o.deskID=:deskID,o.time=:time,o.status=:status,o.phone=:phone,o.foodsID=:foodsID,o.totle=:totle,o.dis=:dis,o.note=:note WHERE o.id=:id";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setProperties(orderModel);
		return (query.executeUpdate() > 0);
		
	}
	
	
}	
