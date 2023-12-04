package com.csc.kiosk.model;

import javax.persistence.*;

@Entity
@Table(name = "TBL_DISTRICT")
public class TBLDistrict {

	// column fields
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "STATE_CODE", length = 50)
	private String stateCode;
	
	@Column(name = "DISTRICT_CODE", length = 50)
	private String districtCode;
	
	@Column(name = "DISTRICT_NAME", length = 50)
	private String districtName;

	// getters and setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStateCode() {
		return stateCode;
	}

	public void setStateCode(String stateCode) {
		this.stateCode = stateCode;
	}

	public String getDistrictCode() {
		return districtCode;
	}

	public void setDistrictCode(String districtCode) {
		this.districtCode = districtCode;
	}

	public String getDistrictName() {
		return districtName;
	}

	public void setDistrictName(String districtName) {
		this.districtName = districtName;
	}
	
}
