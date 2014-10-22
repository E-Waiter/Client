package com.EWaiter.dao.mer;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.EWaiter.dao.BaseDAO;
import com.EWaiter.model.mer.MerModel;

@Repository("merDAO")
public class MerDAO extends BaseDAO
{
	public MerModel getMerByID(long id)
	{
		String hql = "FROM merModel m WHERE m.id=?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setLong(0, id);
		return (MerModel)query.uniqueResult();
	}
	
}
