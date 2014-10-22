package com.EWaiter.service.order;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.EWaiter.dao.order.OrderDAO;
import com.EWaiter.model.food.FoodModel;
import com.EWaiter.model.mer.DeskModel;
import com.EWaiter.model.mer.MerModel;
import com.EWaiter.model.order.OrderItemModel;
import com.EWaiter.model.order.OrderModel;
import com.EWaiter.model.user.UserModel;
import com.EWaiter.util.ErrorCode;

@Service("orderService")
@Transactional(value="transactionManager")
public class OrderService
{
	@Autowired
	@Qualifier("orderDAO")
	private OrderDAO orderDAO;
	
	public boolean addOrder(OrderModel orderModel)
	{
		long id = orderDAO.addOrder(orderModel);
		if(id >0)
		{
			return true;
		}
		return false;
	}
	
	public ErrorCode addOrder(String json)
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
		
		OrderModel orderModel = new OrderModel();
//		UserModel userModel = new UserModel();
//		userModel.setId(uID);
//		orderModel.setUserModel(userModel);
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
		
		orderModel.setOrderItemModels(orderDesModels);
		long id = orderDAO.addOrder(orderModel);
		if (id >=0) 
		{
			return ErrorCode.OK;
		}
		
		
//		"{'uID':'2','dID':'2','merID':'1','number':'5','method':'2','note':'老客户','phone':'13922151165','foods':[{'foodID':'1','number':'2','type':'大','des':'....'},{'foodID':'2','number':'1','type':'中','des':'不放糖'},{'foodID':'3','number':'1','type':'大','des':'....'}]}";
		return ErrorCode.EXECUTE_EXTERNAL_ERROR;
	}
	public List<OrderModel> getOrderByMerID(long merID)
	{
		List<OrderModel> orderModels = orderDAO.getOrderByMerID(merID, 0);
		return orderModels;
	}
	
	
}
