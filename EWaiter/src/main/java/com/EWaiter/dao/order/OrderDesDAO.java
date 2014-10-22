package com.EWaiter.dao.order;

import org.springframework.stereotype.Repository;

import com.EWaiter.dao.BaseDAO;
import com.EWaiter.model.order.OrderItemModel;


@Repository("orderDesDAO")
public class OrderDesDAO extends BaseDAO
{
	public void addOrderDes(OrderItemModel orderDesModel) 
	{
		getSessionFactory().getCurrentSession().save(orderDesModel);
	}
	
}
