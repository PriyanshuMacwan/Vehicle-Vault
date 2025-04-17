package com.grownited.entity;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity // table name
@Table(name="reviews")

public class ReviewEntity {
    
	@Id  // primary
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer reviewId; // primary key 
    Integer carId;
    Integer userId;
    Integer rating;
    Date reviewDate;
    String reviewText;
    String anyExtraComment;
    
    
    // getter of reviewId
    public Integer getReviewId() {
    	return reviewId;
    }
    // setter of reviewId
    public void setReviewId(Integer reviewId) {
    	this.reviewId = reviewId ;
    }
    

    // getter of carId
    public Integer getCarId() {
    	return carId;
    }
    // setter of carId
    public void setCarId(Integer carId) {
    	this.carId =  carId;
    }
    
    // getter of userId
    public Integer getUserId() {
    	return userId;
    }
    
    // setter of userId
    public void setUserId(Integer userId) {
    	this.userId = userId;
    }

   
    

    // getter of rating
    public Integer getRating() {
    	return rating;
    }
    // setter of rating
    public void setRating(Integer rating) {
    	this.rating = rating;
    }
    
    

    // getter of reviewDate
    public Date getReviewDate() {
    	return reviewDate;
    }
    // setter of reviewDate
    public void setReviewDate(Date reviewDate) {
    	this.reviewDate = reviewDate;
    }
    
    

    // getter of reviewText
    public String getReviewText() {
    	return reviewText;
    }
    // setter of reviewText
    public void setReviewText(String reviewText) {
    	this.reviewText = reviewText ;
    }
    
    

    // getter of anyExtraComment
    public String getAnyExtraComment() {
    	return anyExtraComment;
    }
     
    // setter of anyExtraComment
    public void setAnyExtraComment(String anyExtraComment) {
    	this.anyExtraComment = anyExtraComment ;
    }
    

    
}
