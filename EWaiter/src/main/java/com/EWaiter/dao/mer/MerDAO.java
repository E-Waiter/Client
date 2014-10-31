package com.EWaiter.dao.mer;

import java.util.Date;

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
	public boolean updateData(long id , Date date)
	{
		String hql = "update merModel m set m.lastedUpdate=? where m.id =?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
//		query.setDate(0, date);
		query.setTimestamp(0, date);
		
		query.setLong(1, id);
		return (query.executeUpdate() > 0);
	}
}
