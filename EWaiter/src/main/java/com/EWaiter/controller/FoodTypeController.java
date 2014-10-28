package com.EWaiter.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.EWaiter.service.FoodTypeService;
import com.EWaiter.service.mer.MerService;



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
	
	@RequestMapping(value = "/getFoodTypesByMerID" ,method=RequestMethod.GET)
	public String getFoodTypes(Long merID , Long deskID,HttpServletRequest request)
	{
	
		String menu = foodTypeService.getMenuByMerID(merID, deskID);
		System.out.println("menu:" + menu);
		request.setAttribute("menu", menu);
		return "takeout3";
	}
	@RequestMapping(value = "/")
    public String home() {
        System.out.println("HomeController: Passing through...");
        return "WEB-INF/views/menu.jsp";
    }
}
