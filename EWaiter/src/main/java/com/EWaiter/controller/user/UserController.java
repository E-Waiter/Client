package com.EWaiter.controller.user;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.EWaiter.model.user.UserModel;
import com.EWaiter.service.user.UserService;
import com.EWaiter.util.CommonUtil;
import com.EWaiter.util.ErrorCode;
import com.EWaiter.util.JsonResponse;
import com.EWaiter.util.Sha1;

@Controller
@RequestMapping("/User")
public class UserController 
{
	@Autowired
	@Qualifier("userService")
	public UserService userService;
	
	@RequestMapping(value = "/registerUser", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	public String addUser(@RequestParam("phone") String phone , @RequestParam("pw") String pw , @RequestParam("code") String code,HttpServletRequest request)
	{
		if (phone == null || phone.equals("") ||pw == null ||pw.equals("") ||code == null||code.equals(""))
		{
			return new JsonResponse(ErrorCode.INVALID_DATA).generate();
		}
		if (!CommonUtil.isMobile(phone)) 
		{
			return new JsonResponse(ErrorCode.INVALID_DATA).generate();	
			
		}
		String security = Sha1.encode(pw);
		UserModel userModel = new UserModel();
		userModel.setPhone(phone);
		userModel.setPassword(security);
		userModel.setUserState(UserModel.USER_STATES_NEW);
		ErrorCode  result = userService.addUser(userModel, code);
		
		return new JsonResponse(result).generate();
	}
		
	@RequestMapping(value = "/login", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	public String login(@RequestParam("user") String user , @RequestParam("pw") String pw ,HttpServletRequest request)
	{
		if (user == null || user.equals("") ||pw == null ||pw.equals("") )
		{
			return new JsonResponse(ErrorCode.INVALID_DATA).generate();
		}
		UserModel userModel = new UserModel();
		userModel.setPhone(user);
		userModel.setPassword(Sha1.encode(pw));
		ErrorCode errorCode = userService.Login(userModel);
		
		return new JsonResponse(errorCode).generate();
	
	}
	
}
