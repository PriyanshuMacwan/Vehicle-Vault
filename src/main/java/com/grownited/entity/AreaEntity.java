package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="areas")
public class AreaEntity {
	@Id //primary key
	@GeneratedValue(strategy=GenerationType.IDENTITY)
   private Integer areaId;  // primary key
   private String areaName;
   private Integer cityId;  // foreign key
   
   // getter of areaId
    public Integer getAreaId() {
    	 return areaId; 
    }
    
    // setter of areaId
     public void setAreaId(Integer areaId) {
    	 this.areaId = areaId;
     }
    
    // getter of areaName
    public  String getAreaName() {
    	 return areaName; 
    }
    
 // setter of areaName
    public void setAreaName(String areaName) {
   	     this.areaName = areaName;
    }
   
    
    
    // getter of cityId
    public  Integer getCityId() {
    	 return cityId; 
    }
    
 // setter of cityId
    public void setCityId(Integer cityId) {
   	   this.cityId=cityId;
    }
   
    
    
}
