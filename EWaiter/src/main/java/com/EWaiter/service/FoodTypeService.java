package com.EWaiter.service;

import java.math.BigInteger;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.EWaiter.dao.FoodTypeDAO;
import com.EWaiter.dao.mer.MerDAO;
import com.EWaiter.model.food.FoodTypeModel;
import com.EWaiter.model.mer.MerModel;

@Service("foodTypeService")
@Transactional(value="transactionManager")
public class FoodTypeService 
{
	@Autowired
	@Qualifier("foodTypeDAO")
	private FoodTypeDAO foodTypeDAO;
	
	@Autowired
	@Qualifier("merDAO")
	private MerDAO merDAO;
	
	
	public FoodTypeModel getFoodTypeByID(long id)
	{
		return foodTypeDAO.getFoodTypeByID(id);
	}
	public List<FoodTypeModel> getFoodTypesByMerID(long id)
	{
		
		
		return foodTypeDAO.getFoodTypes(id);
	}
	public String getMenuByMerID(long merID , long deskID)
	{
//		int errorCode = 0;
		List<FoodTypeModel> foodTypeModels = foodTypeDAO.getFoodTypes(merID);
		MerModel merModel = merDAO.getMerByID(merID);
		JSONObject merjson = new JSONObject();
		merjson.put("id", merID);
		merjson.put("deskID", deskID);
		if(foodTypeModels == null ||foodTypeModels.size() ==0)
		{
			merjson.put("errorCode", "1");
			merjson.put("errorMsg", "数据为空");
			return null;
		}
		if (merModel == null ) {
			merjson.put("errorCode", "1");
			merjson.put("errorMsg", "数据为空");
			return null;
		}
		merjson.put("name", merModel.getName());
		merjson.put("errorCode", "0");
		JSONArray jsonArray = JSONArray.fromObject(foodTypeModels);
		merjson.put("foodTypeList", jsonArray.toString());
		
		return merjson.toString();
		
		
	}
	public void addFoodType()
	{
		
		FoodTypeModel foodTypeModel = new FoodTypeModel();
		
		foodTypeModel.setName("包点");
		foodTypeModel.setDes("早茶。。。。");
		
		foodTypeDAO.addFoodType(foodTypeModel);
	}
	
}
