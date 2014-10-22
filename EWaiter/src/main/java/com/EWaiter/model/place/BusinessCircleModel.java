package com.EWaiter.model.place;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;



@Table(name="BusinessCircle")
@Entity(name="businessCircleModel")
public class BusinessCircleModel 
{
//	DROP TABLE IF EXISTS `BusinessCircle`;
//	CREATE TABLE `BusinessCircle`
//	(
//		`BC_ID` int(5) NOT NULL AUTO_INCREMENT,
//		`BC_NationID` int(5) NOT NULL,
//		`BC_ProvinceID` int(5) NOT NULL,
//		`BC_CityID` int(5) NOT NULL,
//		`BC_AreaID` int(5) NOT NULL,
//		`BC_Lon` double,
//		`BC_Lat` double,
//		`BC_Name` Varchar(30) NOT NULL,
//		`BC_Des` Varchar(120) DEFAULT NULL, 	
//		FOREIGN KEY(`BC_NationID`)REFERENCES Nation(`N_ID`),
//		FOREIGN KEY(`BC_ProvinceID`)REFERENCES Province(`P_ID`),
//		FOREIGN KEY(`BC_CityID`)REFERENCES City(`C_ID`),
//		FOREIGN KEY(`BC_AreaID`)REFERENCES Area(`A_ID`),
//		PRIMARY KEY (`BC_ID`)
	@Id
	@GeneratedValue
	private long id;
	
	

	private double lon;
	private double lat;
	private String name;
	private String des;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@Cascade(CascadeType.SAVE_UPDATE)
	@JoinColumn(name="AreaID")
	private AreaModel areaModel;
	
	
	
	public AreaModel getAreaModel() {
		return areaModel;
	}
	public void setAreaModel(AreaModel areaModel) {
		this.areaModel = areaModel;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
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
	
	
	

}
