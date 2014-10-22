package com.EWaiter.model.user;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Table(name="Token")
@Entity(name="tokenModel")
public class TokenModel implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5750342206591257702L;
	
	@Id
	@OneToOne
	@JoinColumn(name = "UserID")
	private UserModel user;
	private Date expiration;
	private String token;

	
	public String getToken() {
		return token;
	}
	public void setToken(String token) 
	{
		this.token = token;
	}
	
	
	
	public UserModel getUser() {
		return user;
	}
	public void setUser(UserModel user) {
		this.user = user;
	}
	public Date getExpiration() {
		return expiration;
	}
	public void setExpiration(Date expiration) {
		this.expiration = expiration;
	}
	
	@Override
	public boolean equals(Object obj) {
		return super.equals(obj);
	}
	
	@Override
	public int hashCode() {
		return super.hashCode();
	}
	
}
