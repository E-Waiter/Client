package com.EWaiter.dao.mer;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.EWaiter.dao.BaseDAO;
import com.EWaiter.model.mer.TableModel;



@Repository("tableDAO")
public class TableDAO extends BaseDAO
{

	public TableModel getTableByID(Long id)
	{
		String hql = "FROM tableModel t WHERE t.id=?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setLong(0, id);
		return (TableModel)query.uniqueResult();
	}
//	public List<DeskModel> geRooByMerID(int roomID)
//	{
//		String hql = "FROM deskModel d WHERE d.roomID=?";
//		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
//		query.setInteger(0, roomID);
//		return query.list();
//	}
//	public void addOrder(DeskModel deskModel) {
//		getSessionFactory().getCurrentSession().save(deskModel);
//	}
//	public boolean delDesk(int id)
//	{
//		String hql = "DELETE deskModel d WHERE d.id = ?";
//		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
//		query.setInteger(0, id);
//		return (query.executeUpdate() > 0);
//	}
//	public boolean updateDesk(DeskModel deskModel)
//	{
//		String hql = "UPDATE deskModel d SET d.volum=:volum，d.roomID=:roomID,d.status=:status WHERE d.id=:id";
//		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
//		query.setProperties(deskModel);
//		return (query.executeUpdate() > 0);
//		
//	}
}
