package com.EWaiter.model.user;

import javax.persistence.Entity;
import javax.persistence.Table;

@Table(name="admin")
@Entity(name="adminModel")
public class AdminModel extends UserModel
{
	
	
//	 `ADM_ID` int(10) NOT NULL AUTO_INCREMENT,
//		
//	  `ADM_Email` varchar(45),
//		`ADM_Name` varchar(50),
//		`ADM_PassWord` varchar(32),
//		`ADM_Statue` Varchar(20),
//		`ADM_CreateTime` datetime,
//		`ADM_Number` varchar(15),
//		`ADM_Type` int(3),
	private String employeeId;
	private String department;
	
	
}
