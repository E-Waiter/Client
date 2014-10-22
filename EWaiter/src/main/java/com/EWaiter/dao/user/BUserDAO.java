package com.EWaiter.dao.user;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;












import com.EWaiter.dao.BaseDAO;
import com.EWaiter.model.user.BUserModel;


@Repository("bUserDAO")
public class BUserDAO extends BaseDAO
{
	public BUserModel getBUserByPhone(String phone)
	{
		String hql = "from bUserModel b where b.phone=?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setString(0, phone);
		
		List<BUserModel> bUserModels = query.list();
		if (bUserModels == null || bUserModels.size() == 0)
		{
			return null;
		}
		return bUserModels.get(0);
	}
	
	
	
}
