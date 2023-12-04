package com.csc.kiosk.model;

import javax.persistence.*;

@Entity
@Table(name = "TBL_STATE")
public class TBLState {
	
	// column fields
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "STATE_ID", length = 50)
	private String stateId;
	
	@Column(name = "STATE_NAME", length = 50)
	private String stateName;
	
	@Column(name = "STATE_CODE", length = 50)
	private String stateCode;
	
	@Column(name = "STATE_UT_OR_NOT", length = 50)
	private String stateUtOrNot;

	// getters and setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStateId() {
		return stateId;
	}

	public void setStateId(String stateId) {
		this.stateId = stateId;
	}

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public String getStateCode() {
		return stateCode;
	}

	public void setStateCode(String stateCode) {
		this.stateCode = stateCode;
	}

	public String getStateUtOrNot() {
		return stateUtOrNot;
	}

	public void setStateUtOrNot(String stateUtOrNot) {
		this.stateUtOrNot = stateUtOrNot;
	}
	
}
