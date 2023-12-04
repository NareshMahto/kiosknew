package com.csc.kiosk.model;

import javax.persistence.*;


@Entity
@Table(name = "ADMIN_USER")
public class AdminUser {

	// column fields
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "USER_ID", length = 50)
	private String userId;
	
	@Column(name = "PASSWORD", length = 50)
	private String password;
	
	@Column(name = "NAME", length = 50)
	private String name;
	
	@Column(name = "MOBILE_NO", length = 50)
	private String mobileNo;
	
	@Column(name = "ROLE", length = 50)
	private String role;
	
	@Column(name = "STATE", length = 50)
	private String state;
	
	// getters setters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	// constructor no args
	public AdminUser() {
	}
	
	// constructor all args
	public AdminUser(int id, String userId, String password, String name, String mobileNo, String role, String state) {
		super();
		this.id = id;
		this.userId = userId;
		this.password = password;
		this.name = name;
		this.mobileNo = mobileNo;
		this.role = role;
		this.state = state;
	}
	
	
	

}
