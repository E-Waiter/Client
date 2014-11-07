package com.EWaiter.controller;


import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.EWaiter.service.FoodTypeService;
import com.EWaiter.service.mer.MerService;
import com.EWaiter.util.ErrorCode;
import com.EWaiter.util.JsonResponse;



@Controller
@RequestMapping("/foodType")
public class FoodTypeController
{
	@Autowired(required = true)
	@Qualifier("foodTypeService")
	private FoodTypeService foodTypeService;
	@Autowired(required = true)
	@Qualifier("merService")
	private MerService merServicd;
	
	@RequestMapping(value = "/obtainMenu" ,method=RequestMethod.GET)
	public @ResponseBody String getFoodTypes(@RequestParam("merID")Long merID , @RequestParam("tableID")Long tableID,HttpServletRequest request)
	{
		ErrorCode errorCode = foodTypeService.authMerInfo(merID, tableID);
		JsonResponse jsonResponse = null;
		if (errorCode != ErrorCode.OK) {
			jsonResponse = new JsonResponse(errorCode);
		}else {
			String menu = foodTypeService.getMenuByMerID(merID, tableID);
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("menu", menu);
			jsonResponse= new JsonResponse(errorCode, jsonObject);
		}
		return jsonResponse.generate();
	}
	@RequestMapping(value = "/init" ,method=RequestMethod.GET)
	public String init(Long merID , Long tableID,HttpServletRequest request)
	{
		ErrorCode errorCode = foodTypeService.authMerInfo(merID, tableID);
		JsonResponse jsonResponse = null;
		if (errorCode != ErrorCode.OK) {
			jsonResponse = new JsonResponse(errorCode);
		}else {
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("merID", merID);
			jsonObject.put("tableID", tableID);
			jsonResponse= new JsonResponse(errorCode, jsonObject);
		}
		
		request.setAttribute("initInfo",jsonResponse.generate());
		
		return "index";
	}
	@RequestMapping(value = "/")
    public String home() {
        System.out.println("HomeController: Passing through...");
        return "WEB-INF/views/menu.jsp";
    }
}
