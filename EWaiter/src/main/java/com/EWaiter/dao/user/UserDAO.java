package com.EWaiter.dao.user;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.EWaiter.dao.BaseDAO;
import com.EWaiter.model.food.FoodModel;
import com.EWaiter.model.user.UserModel;

@Repository("userDAO")
public class UserDAO extends BaseDAO
{
	public Long addUser(UserModel userModel)
	{
		Long id = (Long) getSessionFactory().getCurrentSession().save(userModel);
		return id;
	}
	
	public UserModel isExistPhone(String phone)
	{
		String hql = "from userModel u where u.phone=?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
		query.setString(0 , phone);
		
		List<UserModel> userModels = query.list();
		if (userModels == null  ||userModels.size() == 0) {
			return null;
		}
		return userModels.get(0);
		
	}
	public boolean UpdateUser(UserModel userModel)
	{
		String hql = "update userModel u set u.password=? ,u.userState=? where u.id =?";
		Query query = getSessionFactory().getCurrentSession().createQuery(hql);
//		query.setDate(0, date);
		query.setString(0, userModel.getPassword());
		query.setInteger(1, userModel.getUserState());
		query.setLong(2, userModel.getId());
		
		return (query.executeUpdate() > 0);
		
	}

}
