package com.EWaiter.dao.mer;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.EWaiter.dao.BaseDAO;
import com.EWaiter.model.mer.MerModel;
import com.EWaiter.model.mer.RoomModel;

@Repository("roomDAO")
public class RoomDAO extends BaseDAO
{
	public List<RoomModel> getRoomModelsByMer(MerModel merModel)
	{
		String hql = "FROM roomModel r WHERE r.merModel.id=?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setLong(0, merModel.getId());
		return query.list();
	}
}
