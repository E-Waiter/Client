package com.EWaiter.model.user;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.EWaiter.model.place.AreaModel;
import com.EWaiter.model.place.CityModel;
import com.EWaiter.model.place.NationModel;
import com.EWaiter.model.place.ProvinceModel;

@Table(name="Customer")
@Entity(name="customerModel")
public class CustomerModel extends UserModel {
//	`U_ID` bigint(20) NOT NULL AUTO_INCREMENT,
//	`U_LoginID` varchar(20) NOT NULL,
//	`U_NickName` varchar(20),
//	`U_PassWord` varchar(20) NOT NULL,
//	`U_SignaTure` varchar(150),
//	`U_Sex` bit DEFAULT 0,
//	`U_Birthday` datetime,
//	`U_Name` varchar(30),
//	`U_Email` varchar(50),
//	`U_Ientity` varchar(20),
//	`U_Intro` varchar(300),
//	`U_HeadPortrait` varchar(100),
//	`U_Age` int(3),
//	`U_NationID` int(5),
//	`U_ProvinceID` int(5),
//	`U_CityID` int(5),
//	`U_AreaID` int(5),
//	`U_Lon` double,
//	`U_Lat` double,
//	`U_Rank` tinyint,
//	`U_Score` int,
//	`U_RegisterTime` datetime,
//	`U_LoginTime` datetime,
//	`U_LoginIP`varchar(30),
	private String signaTure;
	private String sex;
	private Date birthday;
	private String ientity;
	private String intro;
	private String headPortrait;
	private int age;
	@OneToOne
	@JoinColumn(name="nation")
	private NationModel nationModel;
	@OneToOne
	@JoinColumn(name="province")
	private ProvinceModel provinceModel;
	@OneToOne
	@JoinColumn(name="city")
	private CityModel cityModel;
	
	@OneToOne
	@JoinColumn(name="area")
	private AreaModel areaModel;
	private String address;
	private int score;
	private Date registerDate;
	private Date loginTime;
	private String loginIP;
	public String getSignaTure() {
		return signaTure;
	}
	public void setSignaTure(String signaTure) {
		this.signaTure = signaTure;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getIentity() {
		return ientity;
	}
	public void setIentity(String ientity) {
		this.ientity = ientity;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getHeadPortrait() {
		return headPortrait;
	}
	public void setHeadPortrait(String headPortrait) {
		this.headPortrait = headPortrait;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public NationModel getNationModel() {
		return nationModel;
	}
	public void setNationModel(NationModel nationModel) {
		this.nationModel = nationModel;
	}
	public ProvinceModel getProvinceModel() {
		return provinceModel;
	}
	public void setProvinceModel(ProvinceModel provinceModel) {
		this.provinceModel = provinceModel;
	}
	public CityModel getCityModel() {
		return cityModel;
	}
	public void setCityModel(CityModel cityModel) {
		this.cityModel = cityModel;
	}
	public AreaModel getAreaModel() {
		return areaModel;
	}
	public void setAreaModel(AreaModel areaModel) {
		this.areaModel = areaModel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public Date getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
	public Date getLoginTime() {
		return loginTime;
	}
	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}
	public String getLoginIP() {
		return loginIP;
	}
	public void setLoginIP(String loginIP) {
		this.loginIP = loginIP;
	}
	
	
	
	

}
