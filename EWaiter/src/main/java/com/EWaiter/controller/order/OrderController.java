package com.EWaiter.controller.order;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.ErrorCoded;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.EWaiter.model.order.OrderModel;
import com.EWaiter.service.FoodTypeService;
import com.EWaiter.service.order.OrderService;
import com.EWaiter.util.ErrorCode;
import com.EWaiter.util.JsonResponse;

@Controller
@RequestMapping("/order")
public class OrderController 
{
	@Autowired(required = true)
	@Qualifier("orderService")
	private OrderService orderService;
	
//	order/
	@RequestMapping(value = "/commitOrder",method=RequestMethod.POST ,produces = "application/json; charset=utf-8")
	public @ResponseBody String  addOrder(@RequestParam("orderInfo")String order,HttpServletRequest request)
	{
		System.out.println("action:" + order);
		System.out.println("-------------------------");
		ErrorCode errorCode = orderService.addOrder(order);

//		request.setAttribute("result", errorCode.getId());
		return ""+errorCode.getId();
		
	}
	@RequestMapping(value = "/syncOrder",method=RequestMethod.POST ,produces = "application/json; charset=utf-8")
	public  @ResponseBody String  syncOrder(@RequestParam("merID") Long merID,@RequestParam("bUserID") Long user,@RequestParam("token") String token ,HttpServletRequest request)
	{

		List<OrderModel> orderModels = orderService.getOrderByMerID(merID);
		JsonResponse jsonResponse = null;
		if (orderModels == null|| orderModels.size() == 0)
		{
			 jsonResponse = new JsonResponse(ErrorCode.NULL_POINTER, "orders is null");
		}else {
			
		}
		JSONArray jsonArray = JSONArray.fromObject(orderModels);
		JSONObject jsonObject = JSONObject.fromObject(jsonArray);
		jsonResponse = new JsonResponse(ErrorCode.OK, "ok", jsonObject);
		
		return jsonResponse.generate();
		
	}
}
