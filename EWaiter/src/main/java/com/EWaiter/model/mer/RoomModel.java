package com.EWaiter.model.mer;


import java.util.HashSet;
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
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.IndexColumn;

import com.EWaiter.model.user.BUserModel;

@Table(name="Room")
@Entity(name="roomModel")
public class RoomModel 
{

//	R_ID` int(5) NOT NULL AUTO_INCREMENT,
//	  `R_MID` int(5) NOT NULL,
//	  `R_Name` varchar(20) NOT NULL,
//	  `R_Volum` int,
//	  `R_DeskNum` int,
//	  `R_Size` int,
//	  `R_Statue` bit default 0,
//	  `R_ADMID` int(5) NOT NULL,
//		`R_Url` varchar(100),
//		`R_Des` text,
	@Id
	@GeneratedValue
	private long id;
	
	@ManyToOne(fetch= FetchType.LAZY)
	@Cascade(CascadeType.SAVE_UPDATE)
	@JoinColumn(name="merID")
	private MerModel merModel;
	
	private String name;
	private int volum;
	private int DeskNum;
	private int size;
	private int statue;
	
	@OneToOne
	@JoinColumn(name="bUser")
	private BUserModel bUserModel;
	
	@OneToMany(fetch = FetchType.LAZY)
	@Cascade(CascadeType.SAVE_UPDATE)
	@JoinColumn(name = "merImageID")
	@Fetch(FetchMode.SUBSELECT)
	private Set<MerImageModel> merImageModels = new HashSet<MerImageModel>();
	private String des;
	
	@OneToMany(fetch = FetchType.LAZY)
	@Cascade(CascadeType.SAVE_UPDATE)
	@JoinColumn(name = "roomID")
	@Fetch(FetchMode.SUBSELECT)
	private Set<DeskModel> deskModels = new HashSet<DeskModel>();
	public long getId() 
	{
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}

	public MerModel getMerModel() {
		return merModel;
	}
	public void setMerModel(MerModel merModel) {
		this.merModel = merModel;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getVolum() {
		return volum;
	}
	public void setVolum(int volum) {
		this.volum = volum;
	}
	public int getDeskNum() {
		return DeskNum;
	}
	public void setDeskNum(int deskNum) {
		DeskNum = deskNum;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getStatue() {
		return statue;
	}
	public void setStatue(int statue) {
		this.statue = statue;
	}
	public BUserModel getbUserModel() {
		return bUserModel;
	}
	public void setbUserModel(BUserModel bUserModel) {
		this.bUserModel = bUserModel;
	}
	
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public Set<MerImageModel> getMerImageModels() {
		return merImageModels;
	}
	public void setMerImageModels(Set<MerImageModel> merImageModels) {
		this.merImageModels = merImageModels;
	}
	public Set<DeskModel> getDeskModels() {
		return deskModels;
	}
	public void setDeskModels(Set<DeskModel> deskModels) {
		this.deskModels = deskModels;
	}
	
	
	
	
}
