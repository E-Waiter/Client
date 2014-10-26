package com.EWaiter.service.user;

import java.util.UUID;

import net.sf.json.JSONObject;

import org.junit.runners.Parameterized.Parameters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.EWaiter.dao.user.BUserDAO;
import com.EWaiter.dao.user.TokenDAO;
import com.EWaiter.model.user.BUserModel;
import com.EWaiter.model.user.TokenModel;
import com.EWaiter.util.EWaiterException;
import com.EWaiter.util.ErrorCode;
import com.EWaiter.util.Sha1;


@Service("bUserService")
@Transactional(value="transactionManager")
public class BUserService 
{
	@Autowired
	@Qualifier("bUserDAO")
	private BUserDAO bUserDAO;
	
	@Autowired
	@Qualifier("tokenDAO")
	private TokenDAO tokenDAO;
	
	
	
	public ErrorCode authBUser(String phone , String pw ,JSONObject jsonObject) 
	{
		BUserModel user = bUserDAO.getBUserByPhone(phone);
		if (user == null) {
			return ErrorCode.USER_NOT_EXISTED;
		}		
		if (!user.getPassword().equalsIgnoreCase(Sha1.encode(pw))) 
		{
			return ErrorCode.INCORRECT_PASSWORD;
		}
		
		String uuid = UUID.randomUUID().toString();
	
		if (tokenDAO.exists(user)) {
			TokenModel token = tokenDAO.getByUser(user);
			token.setToken(uuid);
			tokenDAO.update(token);
		} else {
			try {
				tokenDAO.add(uuid, user);
			} catch (EWaiterException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		jsonObject.put("name", user.getName());
//		data.put("role", user.getDbRole());
		jsonObject.put("token", uuid);

		return ErrorCode.OK;
	}
	
}
