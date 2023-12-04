package com.csc.kiosk.model;

import javax.persistence.*;

@Entity
@Table(name = "CSP_SITE")
public class CSPSite {

	// column fields
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "BATCH_ID", length = 50)
	private String batchId;
	
	@Column(name = "STATE", length = 50)
	private String state;
	
	@Column(name = "DISTRICT", length = 50)
	private String district;
	
	@Column(name = "VILLAGE", length = 50)
	private String village;
	
	@Column(name = "BRANCH_CODE", length = 50)
	private String branchCode;
	
	@Column(name = "BRANCH_NAME", length = 50)
	private String branchName;
	
	@Column(name = "STATUS", length = 50)
	private String status;
	
	@Column(name = "CSP_ALLOTED_ID", length = 50)
	private String cspAllotedId;

	// getters and setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBatchId() {
		return batchId;
	}

	public void setBatchId(String batchId) {
		this.batchId = batchId;
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

	public String getBranchCode() {
		return branchCode;
	}

	public void setBranchCode(String branchCode) {
		this.branchCode = branchCode;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCspAllotedId() {
		return cspAllotedId;
	}

	public void setCspAllotedId(String cspAllotedId) {
		this.cspAllotedId = cspAllotedId;
	}
	
}
