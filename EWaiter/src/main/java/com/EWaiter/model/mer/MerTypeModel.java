package com.EWaiter.model.mer;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="merTypeModel")
@Table(name="MerType")
public class MerTypeModel 
{
//	CREATE TABLE `MerType`(
//			MT_ID int(5) NOT NULL AUTO_INCREMENT,
//			MT_Name varchar(30) NOT NULL,
//			MT_Des varchar(120)DEFAULT NULL,
//			PRIMARY KEY (`MT_ID`) 	
//		)ENGINE=MyISAM DEFAULT CHARSET=utf8;
//		insert into MerType(MT_Name , MT_Des) values("茶餐厅" ,"早晚茶");
	@Id
	@GeneratedValue
	private int id;
	private String name;
	private String des;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
