package com.EWaiter.model.order;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javassist.expr.NewArray;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

import com.EWaiter.model.food.FoodPreferenceModel;
import com.EWaiter.model.mer.DeskModel;
import com.EWaiter.model.mer.MerModel;
import com.EWaiter.model.user.UserModel;

@Entity(name="orderModel")
@Table(name="Orders")
public class OrderModel 
{
	public static final int New  = 1;
	public static final int WaitingConfirm  = 2;
	public static final int Loading  = 3;
	public static final int Paying  = 4;
	public static final int End  = 5;
	
	@Id
	@GeneratedValue
	private long id;
	private int method;
	
	

//	private long merID;
	@OneToOne
	@JoinColumn(name="merID")
	private MerModel merModel;
	
	
//	private long userID;
	@OneToOne
	@JoinColumn(name="userID")
	private UserModel userModel;
	
//	private int deskID;
	@OneToOne
	@JoinColumn(name="deskID")
	private DeskModel deskModel;
	
	private Date time;
	private int status;
	private String phone;
	private float totle;
	private float dis;
	private String note;
	private int number;
	
	@OneToMany(fetch = FetchType.EAGER)
	@Cascade(CascadeType.SAVE_UPDATE)
	@JoinColumn(name = "orderID")
	private Set<OrderItemModel> orderItemModels = new HashSet<OrderItemModel>();
	
	@OneToMany(fetch = FetchType.EAGER)
	@JoinColumn(name = "preferenceID")
	private Set<OrderPreferenceModel> preferenceModels;
	
	
	
	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}	
	public Set<OrderPreferenceModel> getPreferenceModels() {
		return preferenceModels;
	}

	public void setPreferenceModels(Set<OrderPreferenceModel> preferenceModels) {
		this.preferenceModels = preferenceModels;
	}

	public Set<OrderItemModel> getOrderItemModels() {
		return orderItemModels;
	}

	public void setOrderItemModels(Set<OrderItemModel> orderItemModels) {
		this.orderItemModels = orderItemModels;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	public int getMethod() {
		return method;
	}
	public void setMethod(int method) {
		this.method = method;
	}
	
	public MerModel getMerModel() {
		return merModel;
	}

	public void setMerModel(MerModel merModel) {
		this.merModel = merModel;
	}

	public UserModel getUserModel() {
		return userModel;
	}

	public void setUserModel(UserModel userModel) {
		this.userModel = userModel;
	}

	public DeskModel getDeskModel() {
		return deskModel;
	}

	public void setDeskModel(DeskModel deskModel) {
		this.deskModel = deskModel;
	}

	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone)
	{
		this.phone = phone;
	}
	public float getTotle() 
	{
		return totle;
	}
	public void setTotle(float totle) 
	{
		this.totle = totle;
	}
	public float getDis()
	{
		return dis;
	}
	public void setDis(float dis)
	{
		this.dis = dis;
	}
	public String getNote() 
	{
		return note;
	}
	public void setNote(String note) 
	{
		this.note = note;
	}
	
}
