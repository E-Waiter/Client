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
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Table(name="Nation")
@Entity(name="nationModel")
public class NationModel 
{
//	CREATE TABLE `Nation` (
//			  `N_ID` int(5) NOT NULL AUTO_INCREMENT,
//			  `N_Name` varchar(30) NOT NULL,
//			  `N_NUMBER` int(5),
//			  PRIMARY KEY (`N_ID`)
//			) ENGINE=MyISAM DEFAULT CHARSET=utf8;
//			insert into Nation(N_Name , N_NUMBER) values("中国" ,86);
	@Id
	@GeneratedValue
	private long id;
	private String name;
	private int code;
//	@OneToMany(fetch = FetchType.EAGER)
//	@Cascade(CascadeType.SAVE_UPDATE)
//	@JoinColumn(name = "NationID")
//	private Set<ProvinceModel> provinceModels = new HashSet<ProvinceModel>();

//	public Set<ProvinceModel> getProvinceModels() {
//		return provinceModels;
//	}
//	public void setProvinceModels(Set<ProvinceModel> provinceModels) {
//		this.provinceModels = provinceModels;
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
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	
	
	
	
	
	
	
}
