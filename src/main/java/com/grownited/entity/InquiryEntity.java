package com.grownited.entity;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity  // create table
@Table(name="inquiries") 

 
public class InquiryEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer inquiryId; //primary key
    private Integer carId;    // foreign key
    private Integer userId;   // foreign key
    private Date inquiryDate;
    private String status;
    private String message;
    
    
    public Integer getInquiryId() {
    	  return inquiryId;
    }
    
    public void setInquiryId(Integer inquiryId) {
    	 this.inquiryId = inquiryId;
    }
    
	public Integer getCarId() {
		return carId;
	}
	public void setCarId(Integer carId) {
		this.carId = carId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Date getInquiryDate() {
		return inquiryDate;
	}
	public void setInquiryDate(Date inquiryDate) {
		this.inquiryDate = inquiryDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

	
	
    
}
