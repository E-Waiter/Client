package com.EWaiter.model.mer;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
@Entity(name= "merModel")
@Table(name="Mer")
public class MerModel
{

//	M_ID bigint(20) NOT NULL AUTO_INCREMENT,
//	M_NationID int(5) NOT NULL,
//	M_ProvinceID int(5)NOT NULL,
//	M_CityID int(5)NOT NULL,
//	M_AreaID int(5)NOT NULL,
//	M_BusinessCircle int(5) NOT NULL,
//	M_Name varchar(60),
//	M_Des text,
//	M_Type int NOT NULL,
//	M_Address varchar(50),
//	M_Lon double,
//	M_Lat double,
//	M_Phone varchar(11)
	@Id
	@GeneratedValue
	private long id;
	private int nationID;
	private int provinceID;
	private int cityID;
	private int AreaID;
	private int businessCircle;
	private String name;
	private String des;
//	@OneToOne(fetch= FetchType.LAZY)
//	@JoinColumn(name="merType")
//	private MerTypeModel merTypeModel;
	private String address;
	private double lon;
	private double lat;
	private String phone;
	
	@OneToOne
	@JoinColumn(name = "MerTypeID")
	private MerTypeModel merTypeModel;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public int getNationID() {
		return nationID;
	}
	public void setNationID(int nationID) {
		this.nationID = nationID;
	}
	public int getProvinceID() {
		return provinceID;
	}
	public void setProvinceID(int provinceID) {
		this.provinceID = provinceID;
	}
	public int getCityID() {
		return cityID;
	}
	public void setCityID(int cityID) {
		this.cityID = cityID;
	}
	public int getAreaID() {
		return AreaID;
	}
	public void setAreaID(int areaID) {
		AreaID = areaID;
	}
	public int getBusinessCircle() {
		return businessCircle;
	}
	public void setBusinessCircle(int businessCircle) {
		this.businessCircle = businessCircle;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}

	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public double getLon() {
		return lon;
	}
	public void setLon(double lon) {
		this.lon = lon;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	
	
	
	
	
	
	
	
}
