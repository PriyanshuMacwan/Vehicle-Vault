package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "states")

public class StateEntity {

	@Id //primary key
	@GeneratedValue(strategy = GenerationType.IDENTITY)  // Generates Primary Key
 private Integer stateId;
  private String stateName;

  // getter for stateId
  public Integer getStateId() {
	  return stateId;
  }
  
  // setter for stateId
  public void setStateId(Integer stateId) {
	  this.stateId=stateId;
  }
  
  // getter for stateName
  public String getStateName() {
	  return stateName;
  }
  
  // setter for stateName
  public void setStateName(String stateName) {
	   this.stateName = stateName;
  }
}


