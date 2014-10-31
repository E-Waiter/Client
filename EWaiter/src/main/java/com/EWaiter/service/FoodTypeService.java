package com.EWaiter.service;

import java.math.BigInteger;
import java.util.List;
import java.util.Set;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.EWaiter.dao.FoodTypeDAO;
import com.EWaiter.dao.mer.MerDAO;
import com.EWaiter.model.food.FoodModel;
import com.EWaiter.model.food.FoodTypeModel;
import com.EWaiter.model.food.UnitModel;
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
		merjson.put("merID", merID);
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
		
		
		
		
//		JSONArray jsonArray = JSONArray.fromObject(foodTypeModels);
		merjson.put("foodTypeList", foodTypesFormat(foodTypeModels));
		
		return merjson.toString();
		
		
	}
	public void addFoodType()
	{
		
		FoodTypeModel foodTypeModel = new FoodTypeModel();
		
		foodTypeModel.setName("包点");
		foodTypeModel.setDes("早茶。。。。");
		
		foodTypeDAO.addFoodType(foodTypeModel);
	}
	
	private JSONArray foodTypesFormat(List<FoodTypeModel> foodTypeModels)
	{
		JSONArray foodTypes = new JSONArray();
		for (FoodTypeModel foodTypeModel : foodTypeModels) 
		{
			if (foodTypeModel.getFoodModels() == null|| foodTypeModel.getFoodModels().size() == 0)
			{
				continue;
			}
			JSONObject foodTypeJSON = new JSONObject();
			foodTypeJSON.put("id", foodTypeModel.getId());
			foodTypeJSON.put("name", foodTypeModel.getName());
			foodTypeJSON.put("des", foodTypeModel.getDes());
			
			Set<FoodModel> foodModels = foodTypeModel.getFoodModels();
			JSONArray foodjJsonArray = new JSONArray();
			for (FoodModel foodModel : foodModels)
			{
				JSONObject jsonObject = new JSONObject();
				jsonObject.put("id", foodModel.getId());
				jsonObject.put("name", foodModel.getName());
				jsonObject.put("url", foodModel.getUrl());
				jsonObject.put("price", foodModel.getPrice());
				jsonObject.put("dPrice", foodModel.getdPrice());
				jsonObject.put("isTakeOut", foodModel.getIsTakeOut());
				jsonObject.put("isChara", foodModel.getIsChara());
				jsonObject.put("status", foodModel.getStatus());
				jsonObject.put("code", foodModel.getCode());
				UnitModel unitModel = foodModel.getUnitModel();
				if (unitModel != null) 
				{
					jsonObject.put("unit", unitModel.getName());
				}else 
				{
					jsonObject.put("unit", "");
				}
				foodjJsonArray.add(jsonObject);
			}
			foodTypeJSON.put("foodModels", foodjJsonArray);
			foodTypes.add(foodTypeJSON);
		}
		return foodTypes;
	}
	
}
