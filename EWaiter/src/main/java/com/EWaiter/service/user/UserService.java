package com.EWaiter.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.EWaiter.dao.user.UserDAO;
import com.EWaiter.model.user.UserModel;
import com.EWaiter.util.ErrorCode;



@Service("userService")
@Transactional(value="transactionManager")
public class UserService 
{
	@Autowired
	@Qualifier("userDAO")
	public UserDAO userDAO;
	
	public ErrorCode addUser(UserModel userModel ,String code )
	{
		if (!virification(userModel , code)) 
		{
			return ErrorCode.USER_VIRIFI_CODE_EXCEPTION;
		}
		UserModel user = userDAO.isExistPhone(userModel.getPhone());
		if (user != null ) 
		{
			if (user.getUserState() ==UserModel.USER_STATES_NEW) 
			{
				return ErrorCode.USER_EXISTED_EXCEPTION;
			}else
			{
				userModel.setId(user.getId());
				boolean result = userDAO.UpdateUser(userModel);
				if (!result)
				{
					return ErrorCode.INVALID_DATA;
				}else {
					return ErrorCode.OK;
				}
			}
			
		}
		
		if (userDAO.addUser(userModel) == 0) 
		{
			return ErrorCode.USER_REGISTER_EXCEPTION;
		};
		
		return ErrorCode.OK;
	}
	public boolean virification(UserModel userModel ,String code  )
	{
		
		
		
		return true;
	}
	
	public ErrorCode Login(UserModel userModel)
	{
		UserModel user = userDAO.isExistPhone(userModel.getPhone());
		if (user == null) 
		{
			return ErrorCode.USER_NOT_EXISTED;
		}
		if (!user.getPassword().equalsIgnoreCase(userModel.getPassword())) {
			return ErrorCode.INCORRECT_PASSWORD;
		}
		return  ErrorCode.OK;
	}

}
