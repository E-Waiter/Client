package com.EWaiter.controller.order;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.EWaiter.service.FoodTypeService;
import com.EWaiter.service.order.OrderService;
import com.EWaiter.util.ErrorCode;

@Controller
@RequestMapping("/order")
public class OrderController 
{
	@Autowired(required = true)
	@Qualifier("orderService")
	private OrderService orderService;
	
//	order/
	@RequestMapping(value = "/commitOrder",method=RequestMethod.POST ,produces = "application/json; charset=utf-8")
	public String addOrder(@RequestParam("orderInfo")String order,HttpServletRequest request)
	{
		System.out.println("action:" + order);
		
		ErrorCode errorCode = orderService.addOrder(order);
		request.setAttribute("result", errorCode.getId());
		return "json";
		
	}
	@RequestMapping(value = "/syncOrder",method=RequestMethod.POST ,produces = "application/json; charset=utf-8")
	public void syncOrder(@RequestParam("action") String action,HttpServletRequest request)
	{
//		"[{'foodID':'1','number':'2','note':'大','des':'....'},{'foodID':'2','number':'1','note':'中','des':'不放糖'},{'foodID':'3','number':'1','note':'大','des':'....'}]";
//		String jsonString =(String)request.getParameter("order");
		System.out.println("action:" + action);
		
//		System.out.println("order_json:"+ jsonString);
//		orderService.addOrder(jsonString);
		
//		return "json";
		
	}
}
