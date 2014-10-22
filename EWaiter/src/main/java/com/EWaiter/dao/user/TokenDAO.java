package com.EWaiter.dao.user;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.EWaiter.dao.BaseDAO;
import com.EWaiter.model.user.TokenModel;
import com.EWaiter.model.user.UserModel;
import com.EWaiter.util.EWaiterException;
import com.EWaiter.util.ErrorCode;



@Repository("tokenDAO")
public class TokenDAO extends BaseDAO{
	public  boolean exists(UserModel userModel) 
	{
		return getByUser(userModel) != null;
	}
	
	public  TokenModel getByUser(UserModel userModel) {
//		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
//		session.beginTransaction();
		
	
		Query query = getSessionFactory().getCurrentSession().createQuery("from TokenModel tokenModel where tokenModel.userModel = :userModel");
		query.setParameter("userModel", userModel);
		@SuppressWarnings("unchecked")
		List<TokenModel> result = query.list();
//		session.getTransaction().commit();
		if (result.size() == 0) {
			return null;
		} else {
			return result.get(0);
		}
	}
	
	public  void add(String token, UserModel userModel) throws EWaiterException {
		if (exists(userModel)) {
			throw new EWaiterException(ErrorCode.OBJECT_EXISTED);
		}
		TokenModel tp = new TokenModel();
		tp.setToken(token);
		tp.setUser(userModel);
		Calendar c = Calendar.getInstance();
		c.add(Calendar.MINUTE, 5);
		tp.setExpiration(c.getTime());
		
		Session session = getSessionFactory().getCurrentSession();
		session.save(tp);
		
	}
	
	public void update(TokenModel tokenModel) {
		Calendar c = Calendar.getInstance();
		c.add(Calendar.MINUTE, 5);
		tokenModel.setExpiration(c.getTime());
		Session session = getSessionFactory().getCurrentSession();
//		session.beginTransaction();
		session.update(tokenModel);
//		session.getTransaction().commit();
	}
	
	public ErrorCode authenticate(UserModel userModel, String token) {
		if (userModel == null) {
			 return ErrorCode.UNAUTHORIZED;
		}
		
		TokenModel tp = getByUser(userModel);
		if (tp == null) {
			 return ErrorCode.UNAUTHORIZED;
		}
		
		if (!tp.getToken().equals(token)) {
			return ErrorCode.BAD_TOKEN;
		}
		
		Date current = new Date();
		Date lastLogin = tp.getExpiration();
		if (current.getTime() > lastLogin.getTime()) {
			return ErrorCode.SESSION_EXPIRED;
		}
		
		return ErrorCode.OK;
	}
	
	public static void main(String[] args) throws EWaiterException {
//		User user = UserDao.getByEmployeeId("10001");
//		Token token = getByUser(user);
//		System.out.println(TokenDao.exists(user));
		//add(UUID.randomUUID().toString(), user);
		//authenticate(user, UUID.randomUUID().toString());
//		update(token);
	}
}

