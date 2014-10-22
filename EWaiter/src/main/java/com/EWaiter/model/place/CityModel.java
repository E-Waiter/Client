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

@Table(name="City")
@Entity(name="cityModel")
public class CityModel
{
//	CREATE TABLE `City`(
//			`C_ID` int(5) NOT NULL AUTO_INCREMENT,
//			`C_Name` Varchar(30) NOT NULL,
//			`C_ProvinceID` int(5) NOT NULL, 
//		    PRIMARY KEY (`C_ID`), 
//			FOREIGN KEY(`C_ProvinceID`)REFERENCES Province(`C_ID`)
//		)ENGINE=MyISAM DEFAULT CHARSET=utf8;
//		insert into City(C_Name , C_ProvinceID) values("广州" ,1);
//		insert into City(C_Name , C_ProvinceID) values("深圳" ,1);
//		insert into City(C_Name , C_ProvinceID) values("佛山" ,1);
	@Id
	@GeneratedValue
	private long id;
	private String name;
//	@OneToMany(fetch = FetchType.EAGER)
//	@Cascade(CascadeType.SAVE_UPDATE)
//	@JoinColumn(name = "CityID")
//	private Set<AreaModel> areaModels = new HashSet<AreaModel>();
	
	
	@ManyToOne(fetch = FetchType.EAGER)
	@Cascade(CascadeType.SAVE_UPDATE)
	@JoinColumn(name="ProvinceID")
	private ProvinceModel provinceModel;
	
	
	
	

	public ProvinceModel getProvinceModel() {
		return provinceModel;
	}
	public void setProvinceModel(ProvinceModel provinceModel) {
		this.provinceModel = provinceModel;
	}
	//	public Set<AreaModel> getAreaModels() {
//		return areaModels;
//	}
//	public void setAreaModels(Set<AreaModel> areaModels) {
//		this.areaModels = areaModels;
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
	
	
	
}
