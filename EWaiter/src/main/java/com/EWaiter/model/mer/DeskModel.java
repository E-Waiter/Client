package com.EWaiter.model.mer;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.IndexColumn;

@Table(name="Desk")
@Entity(name="deskModel")
public class DeskModel 
{

	@Id
	@GeneratedValue
	private long id;
	private int volume;
	private int type;
	private int status;
	
	@OneToOne(fetch = FetchType.EAGER)
	@Cascade(value = {CascadeType.SAVE_UPDATE})
	@JoinColumn(name = "roomID")
	private RoomModel roomModel;
	
	private String note;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public int getVolume() {
		return volume;
	}
	public void setVolume(int volume) {
		this.volume = volume;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public RoomModel getRoomModel() {
		return roomModel;
	}
	public void setRoomModel(RoomModel roomModel) {
		this.roomModel = roomModel;
	}
	

}
