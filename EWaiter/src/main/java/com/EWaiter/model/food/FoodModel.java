package com.EWaiter.model.food;



import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;


//菜
@Entity(name = "food")
@Table(name = "Food")
public class FoodModel 
{

	@Id
	@GeneratedValue
	private long id;
	//菜名
	private String name;
	//图片地址
	private String url;
	//菜价格
	private float price;
	//折扣价
	private float dPrice;
	//是否支持外卖
	private int isTakeOut;
	//是否是特色菜
	private int isChara;
	//菜状态（正常,售完,锁定）
	private int status;
	//短码
	private String code;
	
	
	@OneToOne
	@JoinColumn(name="unitID")
	private UnitModel UnitModel;

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="foodTypeID")
	private FoodTypeModel foodTypeModel;
//	

//	@OneToOne
//	@JoinColumn(name="sortGroupID")
//	private SortGroupsModel sortGroupsModel;
	
	@OneToMany(fetch = FetchType.EAGER)
	@JoinColumn(name = "preferenceID")
	private Set<FoodPreferenceModel> preferenceModels;
	
	
	
	
	public FoodTypeModel getFoodTypeModel() {
		return foodTypeModel;
	}
	public void setFoodTypeModel(FoodTypeModel foodTypeModel) {
		this.foodTypeModel = foodTypeModel;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public UnitModel getUnitModel() {
		return UnitModel;
	}
	public void setUnitModel(UnitModel unitModel) {
		UnitModel = unitModel;
	}
	public Set<FoodPreferenceModel> getPreferenceModels() {
		return preferenceModels;
	}
	public void setPreferenceModels(Set<FoodPreferenceModel> preferenceModels) {
		this.preferenceModels = preferenceModels;
	}
//	public SortGroupsModel getSortGroupsModel() {
//		return sortGroupsModel;
//	}
//	public void setSortGroupsModel(SortGroupsModel sortGroupsModel) {
//		this.sortGroupsModel = sortGroupsModel;
//	}

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public float getdPrice() {
		return dPrice;
	}
	public void setdPrice(float dPrice) {
		this.dPrice = dPrice;
	}
	public int getIsTakeOut() {
		return isTakeOut;
	}
	public void setIsTakeOut(int isTakeOut) {
		this.isTakeOut = isTakeOut;
	}
	public int getIsChara() {
		return isChara;
	}
	public void setIsChara(int isChara) {
		this.isChara = isChara;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}

}
