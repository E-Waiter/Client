package com.EWaiter.model.user;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.EWaiter.model.mer.MerModel;

@Table(name="BUser")
@Entity(name="bUserModel")
public class BUserModel extends UserModel
{
	
	private String employeeId;
	private String department;
	@OneToOne
	@JoinColumn(name="merID")
	private MerModel merModel;
	
	public String getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	
	
	
	
}
