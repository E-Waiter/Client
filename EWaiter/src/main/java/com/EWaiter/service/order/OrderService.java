package com.EWaiter.service.order;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;







import com.EWaiter.dao.FoodDAO;
import com.EWaiter.dao.mer.MerDAO;
import com.EWaiter.dao.order.OrderDAO;
import com.EWaiter.dao.user.BUserDAO;
import com.EWaiter.dao.user.TokenDAO;
import com.EWaiter.model.food.FoodModel;
import com.EWaiter.model.mer.DeskModel;
import com.EWaiter.model.mer.MerModel;
import com.EWaiter.model.order.OrderItemModel;
import com.EWaiter.model.order.OrderModel;
import com.EWaiter.util.ErrorCode;
import com.EWaiter.util.JsonResponse;

@Service("orderService")
@Transactional(value="transactionManager")
public class OrderService
{
	@Autowired
	@Qualifier("orderDAO")
	private OrderDAO orderDAO;
	
	@Autowired
	@Qualifier("foodDAO")
	private FoodDAO foodDAO;
	
	@Autowired
	@Qualifier("merDAO")
	private MerDAO merDAO;
	
	
	private TokenDAO tokenDAO;
	
	public boolean addOrder(OrderModel orderModel)
	{
		long id = orderDAO.addOrder(orderModel);
		if(id >0)
		{
			return true;
		}
		return false;
	}
	
	public ErrorCode addOrder(String json, List<FoodModel> foodModels ,OrderModel orderModel)
	{
		
		
//		action:{"foods":[{"foodID":"2","number":2,"type":"?","des":"????"}],"des":"","phone":"13922151165","uID":2,"dID":2,"merID":1,"number":10,"menthod":2,"note":"???"}
		if (json == null)
		{
			return ErrorCode.NULL_POINTER;
		}
		JSONObject jObject = JSONObject.fromObject(json);
//		long uID = jObject.getLong("uID");
		int dID = jObject.getInt("dID");
		long merID = jObject.getLong("merID");
		int method = jObject.getInt("method");
		String note = jObject.getString("note");
		String phone = jObject.getString("phone");
		int number = jObject.getInt("number");
		

		DeskModel deskModel = new DeskModel();
		deskModel.setId(dID);
		orderModel.setDeskModel(deskModel);
		MerModel merModel = new MerModel();
		merModel.setId(merID);
		orderModel.setMerModel(merModel);
		orderModel.setMethod(method);
		orderModel.setNote(note);
		orderModel.setPhone(phone);
		orderModel.setNumber(number);
		orderModel.setTime(new Date());

		Set<OrderItemModel> orderDesModels  = new HashSet<OrderItemModel>();
		JSONArray jsonArray = jObject.getJSONArray("foods");
		int size = jsonArray.size();
		for (int i = 0; i < size; i++) 
		{
			JSONObject jsonObject = jsonArray.getJSONObject(i);
//			{'foodID':'1','number':'2','type':'大','des':'....'
			long foodID = jsonObject.getLong("foodID");
			int dNumber = jsonObject.getInt("number");
			String type = jsonObject.getString("type");
			String des = jsonObject.getString("des");
			
			OrderItemModel orderDesModel = new OrderItemModel();
			
			FoodModel foodModel = new FoodModel();
			foodModel.setId(foodID);
			orderDesModel.setFoodModel(foodModel);
			orderDesModel.setNumber(dNumber);
			orderDesModel.setType(type);
			orderDesModel.setDes(des);
			orderDesModels.add(orderDesModel);
		}
		
		List<FoodModel> foodModels2 = isSellOut(orderDesModels);
		if (foodModels2 != null && foodModels2.size() !=0) 
		{
			foodModels.addAll(foodModels2);
			return ErrorCode.SELL_OUT;
		}
		
		
		orderModel.setOrderItemModels(orderDesModels);
		long id = orderDAO.addOrder(orderModel);
	
		if (id >=0) 
		{
			orderModel.setId(id);
			return ErrorCode.OK;
		}
		
		
//		"{'uID':'2','dID':'2','merID':'1','number':'5','method':'2','note':'老客户','phone':'13922151165','foods':[{'foodID':'1','number':'2','type':'大','des':'....'},{'foodID':'2','number':'1','type':'中','des':'不放糖'},{'foodID':'3','number':'1','type':'大','des':'....'}]}";
		return ErrorCode.EXECUTE_EXTERNAL_ERROR;
	}
	public List<OrderModel> getOrderByMerID(long merID ,int status)
	{
		List<OrderModel> orderModels = orderDAO.getOrderByMerID(merID, 0);
		return orderModels;
	}
	
	public List<FoodModel> isSellOut(Set<OrderItemModel> orderDesModels)
	{
		List<FoodModel> foodModels = new ArrayList<FoodModel>();
		
		for (OrderItemModel orderItemModel: orderDesModels)
		{
		
			FoodModel foodModel = foodDAO.getFoodByID(orderItemModel.getFoodModel().getId());
			if (foodModel.getStatus() == 1)
			{
				foodModels.add(foodModel);
			}
		}
		return foodModels;
		
	}
	private ErrorCode checkUpdate(long  merID,Date lastUpdate ,ArrayList<OrderModel> orderModels)
	{
		MerModel merModel = merDAO.getMerByID(merID);
		Date lastedDate = merModel.getLastedUpdate();
		
		if (lastedDate != null && lastUpdate != null)
		{
			
			
		
			if (lastedDate.getTime() -lastUpdate.getTime() >0) 
			{
				List<OrderModel> itemModels = orderDAO.getOrderByMerID(merID, OrderModel.CONFIRM);
				orderModels.addAll(itemModels);
				System.out.println("lasted:"+ lastedDate.getTime() +" last:" + lastUpdate.getTime());
				return ErrorCode.OK;
			}else 
			{	System.out.println("lasted:"+ lastedDate.getTime() +" last:" + lastUpdate.getTime());
				return ErrorCode.ALREADY_LASTED;
			}
			
		}else {
			
			List<OrderModel> itemModels = orderDAO.getOrderByMerID(merID, OrderModel.CONFIRM);
			orderModels.addAll(itemModels);
			return ErrorCode.OK;
					
		}
		
	}
	public JsonResponse syncOrder(long  merID,Date lastUpdate )
	{
		ArrayList<OrderModel> orderModels = new ArrayList<OrderModel>();
		
		ErrorCode errorCode = checkUpdate(merID, lastUpdate, orderModels);
	
		
		if(errorCode == ErrorCode.OK)
		{
			
//			JSONArray jsonArray = JSONArray.fromObject(orderModels);
//			JSONObject jsonObject = new JSONObject();
//			jsonObject.put("orders", jsonArray);
			JsonResponse jsonResponse = new JsonResponse(errorCode, errorCode.getDetail(), formatOrder(orderModels));
			Date date = new Date();
			if (merDAO.updateData(merID, date)) {
				
			}
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String dateStr = format.format(date);
			jsonResponse.addElement("updateDate", dateStr);
			jsonResponse.addElement("merID", ""+merID);
			
			return jsonResponse;
		}
		return new JsonResponse(errorCode, errorCode.getDetail(), null);
	}
	public ErrorCode getOrderDesByID(long id , JSONObject data)
	{
		if (data == null)
		{
			return ErrorCode.NULL_POINTER;
		}
		OrderModel orderModel = orderDAO.getOrderByID(id );
//		Set<OrderItemModel> orderItemModels = orderModel.getOrderItemModels();
		data.put("orderID", orderModel.getId());
		data.put("phone", orderModel.getPhone());
		data.put("total", orderModel.getTotle());
		data.put("number", orderModel.getNumber());
		data.put("roomID", orderModel.getDeskModel().getRoomModel().getId());
		data.put("room", orderModel.getDeskModel().getRoomModel().getName());
		data.put("deskID", orderModel.getDeskModel().getId());
		
		Date date = orderModel.getTime();
		if (date != null) {
			data.put("time", orderModel.getTime().toString());
		}
		data.put("time", "");
		
		data.put("desk", orderModel.getDeskModel().getName());
		
		
		data.put("status", orderModel.getStatus());
		data.put("foodNumber", orderModel.getOrderItemModels().size());
		data.put("note", orderModel.getNote());
		
		JSONArray foodsJSON = new JSONArray();
		Set< OrderItemModel> orderItemModels =orderModel.getOrderItemModels();
		for(OrderItemModel orderItemModel:orderItemModels)
		{
			FoodModel foodModel = orderItemModel.getFoodModel();
			JSONObject foodJSON = new JSONObject();
			foodJSON.put("foodID", foodModel.getId());
			foodJSON.put("name", foodModel.getName());
			foodJSON.put("nubmer", orderItemModel.getNumber());
			foodJSON.put("price", foodModel.getPrice());
			foodJSON.put("code", foodModel.getCode());
			if (foodModel.getUnitModel() != null)
			{
				foodJSON.put("unit", foodModel.getUnitModel().getName());
			}else {
				foodJSON.put("unit", "");
			}
			
			foodJSON.put("foodTypeID", foodModel.getFoodTypeModel().getId());
			foodJSON.put("foodType", foodModel.getFoodTypeModel().getName());
			foodJSON.put("des", orderItemModel.getDes());
			foodsJSON.add(foodJSON);
//
		}
		data.put("foods", foodsJSON);
		
		return ErrorCode.OK;
	}
	private JSONObject formatOrder(ArrayList<OrderModel> orderModels)
	{
		JSONObject jsonObject = new JSONObject();
		JSONArray ordersJSON = new JSONArray();
		for (OrderModel orderModel:orderModels) 
		{
			JSONObject orderJsonObject = new JSONObject();
			orderJsonObject.put("orderID", orderModel.getId());
			orderJsonObject.put("phone", orderModel.getPhone());
			orderJsonObject.put("total", orderModel.getTotle());
			orderJsonObject.put("number", orderModel.getNumber());
			orderJsonObject.put("roomID", orderModel.getDeskModel().getRoomModel().getId());
			orderJsonObject.put("room", orderModel.getDeskModel().getRoomModel().getName());
			orderJsonObject.put("deskID", orderModel.getDeskModel().getId());
			
			Date date = orderModel.getTime();
			if (date != null) {
				orderJsonObject.put("time", orderModel.getTime().toString());
			}
			orderJsonObject.put("time", "");
			
			orderJsonObject.put("desk", orderModel.getDeskModel().getName());
			
			
			orderJsonObject.put("status", orderModel.getStatus());
			orderJsonObject.put("foodNumber", orderModel.getOrderItemModels().size());
			orderJsonObject.put("note", orderModel.getNote());
			
			ordersJSON.add(orderJsonObject);
			
		}
		jsonObject.put("orders", ordersJSON);
		
		
		return jsonObject;
		
	}
}
