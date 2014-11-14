package com.EWaiter.controller.order;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.omg.CORBA.DATA_CONVERSION;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.ErrorCoded;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.EWaiter.model.food.FoodModel;
import com.EWaiter.model.order.OrderItemModel;
import com.EWaiter.model.order.OrderModel;
import com.EWaiter.service.FoodTypeService;
import com.EWaiter.service.order.OrderService;
import com.EWaiter.service.user.BUserService;
import com.EWaiter.util.ErrorCode;
import com.EWaiter.util.JsonResponse;

@Controller
@RequestMapping("/order")
public class OrderController 
{
	@Autowired(required = true)
	@Qualifier("orderService")
	private OrderService orderService;
	
	@Autowired(required = true)
	@Qualifier("bUserService")
	private BUserService bUserService;
	
	
	
//	order/
	@RequestMapping(value = "/commitOrder",method=RequestMethod.POST ,produces = "application/json; charset=utf-8")
	public @ResponseBody String addOrder(@RequestParam("orderInfo")String order,HttpServletRequest request)
	{
		System.out.println("action:" + order);
		System.out.println("-------------------------");
		List<FoodModel> foodModels = new ArrayList<FoodModel>();
		OrderModel orderModel = new OrderModel();
		
		ErrorCode errorCode = orderService.addOrder(order ,foodModels , orderModel);		
		if (ErrorCode.OK == errorCode)
		{
			JsonResponse jsonResponse = new JsonResponse(errorCode, errorCode.getDetail(), new JSONObject());
			jsonResponse.addElement("orderID", ""+orderModel.getId());
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String date = format.format(orderModel.getTime());
			
			jsonResponse.addElement("time", date);
//			request.setAttribute("result", errorCode.getId());
			String result = jsonResponse.generate();
			System.out.println("result:" +result);
			return result;
		
		}else if(ErrorCode.SELL_OUT == errorCode)
		{
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("foods", JSONArray.fromObject(foodModels));
			JsonResponse jsonResponse = new JsonResponse(errorCode, errorCode.getDetail(), jsonObject );
			String result = jsonResponse.generate();
			System.out.println("result:" +result);
			return result;
		}
		JsonResponse jsonResponse = new JsonResponse(errorCode, errorCode.getDetail(), new JSONObject());
		String result = jsonResponse.generate();
		System.out.println("result:" +result);
		return result;
		
	}
	@RequestMapping(value = "/syncOrder",method=RequestMethod.POST ,produces = "application/json; charset=utf-8")
	public  @ResponseBody String  syncOrder(@RequestParam("merID") Long merID,@RequestParam("bUserID") Long user,@RequestParam("token") String token ,@RequestParam("lastUpdate") String lastUpdate,HttpServletRequest request)
	{
		
//		ErrorCode code = bUserService.authenticate(user, token);
//		if (code != ErrorCode.OK) 
//		{	
//			return new JsonResponse(code).generate();
//		}
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = null;
		if (lastUpdate != null && !lastUpdate.equals(""))
		{
			try {
				date = format.parse(lastUpdate);
			} catch (ParseException e) 
			{
				// TODO Auto-generated catch bloc
				e.printStackTrace();
			}
		}
		JsonResponse jsonResponse = orderService.syncOrder(merID, date);
		
		return jsonResponse.generate();
	}
	@RequestMapping(value = "/obtainOrderDes",method=RequestMethod.POST ,produces = "application/json; charset=utf-8")
	public @ResponseBody String syncFoodsByOrderID(@RequestParam("bUserID") Long user,@RequestParam("token") String token,@RequestParam("orderID") Long orderID)
	{
		ErrorCode code = null;
//		 code = bUserService.authenticate(user, token);
//		if (code != ErrorCode.OK)
//		{	
//			return new JsonResponse(code).generate();
//		}
		JSONObject data = new JSONObject();
		code = orderService.getOrderDesByID(orderID, data);
		if ( code== ErrorCode.OK)
		{
			String str = new JsonResponse(code, data).generate();
			System.out.println(str);
			return str;
		}else
		{
			return new JsonResponse(code).generate();
		}
	}
	@RequestMapping(value = "/confirmOrder",method=RequestMethod.POST ,produces = "application/json; charset=utf-8")
	public @ResponseBody String confirmOrder(@RequestParam("bUserID") Long user,@RequestParam("token") String token,@RequestParam("orderID") Long orderID)
	{
		//orderID ,status ,
		
		ErrorCode code = null;
//		 code = bUserService.authenticate(user, token);
//		if (code != ErrorCode.OK)
//		{	
//			return new JsonResponse(code).generate();
//		}
		boolean result =  orderService.updateStatus(orderID, OrderModel.CONFIRMED);
		if (result)
		{
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("orderID", orderID);
			jsonObject.put("status", OrderModel.CONFIRMED);
			JsonResponse jsonResponse = new JsonResponse(ErrorCode.OK, jsonObject);
			return jsonResponse.generate();
					
		}else {
			return new JsonResponse(ErrorCode.BAD_COMMAND).generate();
		}
	}
	@RequestMapping(value = "/closeOrder",method=RequestMethod.POST ,produces = "application/json; charset=utf-8")
	public @ResponseBody String delOrder(@RequestParam("bUserID") Long user,@RequestParam("token") String token,@RequestParam("orderID") Long orderID)
	{
		//orderID ,status ,
		
		ErrorCode code = null;
//		 code = bUserService.authenticate(user, token);
//		if (code != ErrorCode.OK)
//		{	
//			return new JsonResponse(code).generate();
//		}
		boolean result =  orderService.updateStatus(orderID, OrderModel.B_CLOSE);
		if (result)
		{
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("orderID", orderID);
			jsonObject.put("status", OrderModel.B_CLOSE);
			JsonResponse jsonResponse = new JsonResponse(ErrorCode.OK, jsonObject);
			return jsonResponse.generate();
					
		}else {
			return new JsonResponse(ErrorCode.BAD_COMMAND).generate();
		}
	}
	@RequestMapping(value = "/finishOrder",method=RequestMethod.POST ,produces = "application/json; charset=utf-8")
	public @ResponseBody String finishOrder(@RequestParam("bUserID") Long user,@RequestParam("token") String token,@RequestParam("orderID") Long orderID)
	{
		//orderID ,status ,
		
		ErrorCode code = null;
//		 code = bUserService.authenticate(user, token);
//		if (code != ErrorCode.OK)
//		{	
//			return new JsonResponse(code).generate();
//		}
		boolean result =  orderService.updateStatus(orderID, OrderModel.END);
		if (result)
		{
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("orderID", orderID);
			jsonObject.put("status", OrderModel.B_CLOSE);
			JsonResponse jsonResponse = new JsonResponse(ErrorCode.OK, jsonObject);
			return jsonResponse.generate();
					
		}else {
			return new JsonResponse(ErrorCode.BAD_COMMAND).generate();
		}
	}
	@RequestMapping(value = "/obtainOrdersByUserID",method=RequestMethod.POST ,produces = "application/json; charset=utf-8")
	public @ResponseBody String obtainOrdersByUserID(@RequestParam("userID") Long user,@RequestParam("token") String token)
	{
		
		return "";
	}
	
}
