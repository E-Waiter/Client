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

@Table(name="Province")
@Entity(name="provinceModel")
public class ProvinceModel {

//	DROP TABLE IF EXISTS `Province`;
//	CREATE TABLE `Province` (
//	  `P_ID` int(5) NOT NULL AUTO_INCREMENT,
//	  `P_Name` varchar(30) NOT NULL,
//	  `P_NationID` int(5) NOT NULL,
//	  PRIMARY KEY (`P_ID`),
//	  FOREIGN KEY(`P_NationID`)REFERENCES Nation(`N_ID`) 
//	) ENGINE=MyISAM DEFAULT CHARSET=utf8;
//	insert into Province(P_Name , P_NationID) values("广东" ,1);
//	insert into Province(P_Name , P_NationID) values("湖南" ,1);
//	insert into Province(P_Name , P_NationID) values("上海" ,1);
	@Id
	@GeneratedValue
	private long id;
	private String name;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@Cascade(CascadeType.SAVE_UPDATE)
	@JoinColumn(name="NationID")
	private NationModel NationModel;
	
	
//	@OneToMany(fetch = FetchType.EAGER)
//	@Cascade(CascadeType.SAVE_UPDATE)
//	@JoinColumn(name = "ProvinceID")
//	private Set<CityModel> cityModels = new HashSet<CityModel>();
//	
//	
//	public Set<CityModel> getCityModels() {
//		return cityModels;
//	}
//	public void setCityModels(Set<CityModel> cityModels) {
//		this.cityModels = cityModels;
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
	public NationModel getNationModel() {
		return NationModel;
	}
	public void setNationModel(NationModel nationModel) {
		NationModel = nationModel;
	}
	
	
	
	
}
