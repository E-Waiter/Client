package com.EWaiter.dao.place;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.EWaiter.dao.BaseDAO;
import com.EWaiter.model.place.NationModel;

@Repository("nationDAO")
public class NationDAO extends BaseDAO 
{
	public NationModel getNationByID(int id)
	{
		String hql = "from nationModel o where o.id=?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setInteger(0, id);
		return (NationModel)query.uniqueResult();
	}
	
	
	
	
	public long addNation(NationModel nationModel) {
		Long id = (Long)getSessionFactory().getCurrentSession().save(nationModel);
		return id;
	}
	
	public boolean delNation(long id)
	{
		String hql = "DELETE nationModel o WHERE o.id = ?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setLong(0, id);
		return (query.executeUpdate() > 0);
	}

	
	
}	
