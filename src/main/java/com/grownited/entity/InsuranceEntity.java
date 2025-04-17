package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity  // create table
@Table(name="insurances")  // table name 

public class InsuranceEntity {
       @Id
       @GeneratedValue(strategy = GenerationType.IDENTITY)
       
	  Integer insuranceId; //Primary key
      String insuranceType;
      
      // getter
      public Integer getInsuranceId() {
    	  return insuranceId;
      }
      
      
      //setter 
      public void setInsuranceId(Integer insuranceId) {
    	  this.insuranceId=insuranceId;
      }
      
      
      // getter 
       public String getInsuranceType() {
    	   return insuranceType;
       }
       
      //setter 
       public void setInsuranceType(String insuranceType) {
    	   this.insuranceType=insuranceType;
       }
}
