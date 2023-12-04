package com.csc.kiosk.model;

import javax.persistence.*;

@Entity
@Table(name = "CSP_SUGGESTION")
public class CSPSuggestion {

	// column fields
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "CSC_ID", length = 50)
	private String cscid;

	@Column(name = "VLE_NAME", length = 50)
	private String vleName;

	@Column(name = "MOBILE_NO", length = 50)
	private String mobileNo;

	@Column(name = "EMAIL", length = 50)
	private String email;

	@Column(name = "STATE", length = 50)
	private String state;

	@Column(name = "DISTRICT", length = 50)
	private String district;

	@Column(name = "VILLAGE", length = 50)
	private String village;

	@Column(name = "SITE_ID", length = 50)
	private String siteId;

	@Column(name = "CSP_UNIQUE_ID", length = 50)
	private String cspUniqueId;

	// getters and setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCscid() {
		return cscid;
	}

	public void setCscid(String cscid) {
		this.cscid = cscid;
	}

	public String getVleName() {
		return vleName;
	}

	public void setVleName(String vleName) {
		this.vleName = vleName;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getVillage() {
		return village;
	}

	public void setVillage(String village) {
		this.village = village;
	}

	public String getSiteId() {
		return siteId;
	}

	public void setSiteId(String siteId) {
		this.siteId = siteId;
	}

	public String getCspUniqueId() {
		return cspUniqueId;
	}

	public void setCspUniqueId(String cspUniqueId) {
		this.cspUniqueId = cspUniqueId;
	}

}
