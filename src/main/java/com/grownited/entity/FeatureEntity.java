package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity  // create table 
@Table(name="features")  // Gives name to table 

public class FeatureEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
     Integer featureId;
     String featureName;
     
     
     // getter of featureId
      public Integer getFeatureId() {
    	  return featureId;
      }
     
     // setter of featureId
    public void setFeatureId(Integer featureId) {
    	this.featureId= featureId;
    }
    
    
     // getter of featureName
    public String getFeatureName() {
    	return featureName;
    }
    
     // setter of featureName
    public void setFeatureName(String featureName) {
    	this.featureName = featureName;
    }
}
