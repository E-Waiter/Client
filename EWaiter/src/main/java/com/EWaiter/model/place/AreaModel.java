package com.EWaiter.model.place;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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
import org.hibernate.annotations.CascadeType;

@Entity(name="areaModel")
@Table(name="Area")
public class AreaModel 
{
//	DROP TABLE IF EXISTS `Area`;
//	CREATE TABLE `Area`(
//		`A_Name` Varchar(30) NOT NULL,
//		`A_CityID` int(5) NOT NULL,
//		PRIMARY KEY (`A_ID`),
//		FOREIGN KEY(`A_CityID`)REFERENCES City(`C_ID`)	
//	)ENGINE=MyISAM DEFAULT CHARSET=utf8;
//	insert into Area(A_Name , A_CityID) values("番禺" ,1);
//	insert into Area(A_Name , A_CityID) values("天河" ,1);
//	insert into Area(A_Name , A_CityID) values("海珠" ,1);
//	insert into Area(A_Name , A_CityID) values("白云" ,1);
	@Id
	@GeneratedValue
	private long id;
	private String name;
	
//	@OneToMany(fetch = FetchType.EAGER)
//	@Cascade(CascadeType.SAVE_UPDATE)
//	@JoinColumn(name = "AreaID")
//	private Set<BusinessCircleModel> businessCircleModels = new HashSet<BusinessCircleModel>();
//	
//	
//	public Set<BusinessCircleModel> getBusinessCircleModels() {
//		return businessCircleModels;
//	}
//	public void setBusinessCircleModels(
//			Set<BusinessCircleModel> businessCircleModels) {
//		this.businessCircleModels = businessCircleModels;
//	}
	
	@ManyToOne(fetch = FetchType.EAGER)
	@Cascade(CascadeType.SAVE_UPDATE)
	@JoinColumn(name="CityID")
	private CityModel cityModel;
	
	
	public CityModel getCityModel() {
		return cityModel;
	}
	public void setCityModel(CityModel cityModel) {
		this.cityModel = cityModel;
	}
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
	
	
	
	
	
	
	
	
}