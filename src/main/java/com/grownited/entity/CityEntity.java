package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity // create table
@Table(name = "cities") // table name

public class CityEntity {
	 @Id //Primary key
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
      private Integer cityId;
      private String cityName;
      private Integer stateId;
      
      
      // getter of cityId
      public Integer getCityId() {
    	  return cityId;
      }
      
      
   // setter of cityId 
      public  void setCityId(Integer cityId) {
    	  this.cityId = cityId;
      }
      
      // getter of cityName
      public String getCityName(){
    	  return cityName;
      }
      
   // setter of cityName
      public  void setCityName(String cityName) {
    	  this.cityName = cityName;
      }
      
      
      // getter of stateId
      public Integer getStateId() {
    	  return stateId;
      }
      
   // setter of stateId
      public  void setStateId(Integer stateId) {
    	  this.stateId=stateId;
      }
      
      
      
}
