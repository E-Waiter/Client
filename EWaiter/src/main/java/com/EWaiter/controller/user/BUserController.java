package com.EWaiter.controller.user;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.EWaiter.service.user.BUserService;
import com.EWaiter.util.ErrorCode;
import com.EWaiter.util.JsonResponse;


@Controller
@RequestMapping("/bUser")
public class BUserController 
{
	@Autowired
	@Qualifier("bUserService")
	private BUserService bUserService;
	
	@RequestMapping(value = "/mobile/auth", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	public @ResponseBody String authenticate( @RequestParam("phone") String phone,
			@RequestParam("password") String password, HttpServletRequest request) 
	{
//		if (Action.valueOf(Action.class, action) != Action.MobileAuthenticate) 
//		{
//			return new JsonResponse(ErrorCode.BAD_REQUEST_CODE).generate();
//		}
		JSONObject data = new JSONObject();
		ErrorCode code = bUserService.authBUser(phone, password ,data);
		if (!code.isOK()) {
			return new JsonResponse(code).generate();
		}	
		return new JsonResponse(code, data).generate();
	}
	
	
}
