package com.grownited.entity;

import java.math.BigInteger;
import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity //create table
@Table(name = "users") // table name
public class UserEntity {
     
	@Id //primary key
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer userId;
	private String firstName;
	private String lastName;
	private String email;
	private String password;
	private String gender;
	private String contactNum;
	private String role;
	private Date createdAt;
	private String status;
	private String profilePicturePath;

	// Getter of Id
    public Integer getUserId() {
    	return userId;
    }
    
    //Setter of Id
    public void setUserId(Integer userId) {
    	this.userId=userId;
    }
    
 // Getter of firstName
    public String getFirstName() {
    	return firstName;
    }
    
  //Setter of firstName
    public void setFirstName(String firstName) {
    	this.firstName=firstName;
    }
    
    

 // Getter of lastName
    public String getLastName() {
    	return lastName;
    }
    
  //Setter of lastName
    public void setLastName(String lastName) {
    	this.lastName=lastName;
    }

 // Getter of email
    public String getEmail() {
    	return email;
    }
    
  //Setter of email
    public void setEmail(String email) {
    	this.email=email;
    }

 // Getter of password
    public String getPassword() {
    	return password;
    }
    
  //Setter of password
    public void setPassword(String password) {
    	this.password=password;
    }

 // Getter of gender
    public String getGender() {
    	return gender;
    }
    
  //Setter of gender
    public void setGender(String gender) {
    	this.gender=gender;
    }

 // Getter of contactNum
    public String getContactNum() {
    	return contactNum;
    }
    
  //Setter of contactNum
    public void setContactNum(String contactNum) {
    	this.contactNum=contactNum;
    }

 // Getter of role
    public String getRole() {
    	return role;
    }
    
  //Setter of role
    public void setRole(String role) {
    	this.role=role;
    }

 // Getter of createdAt
    public Date getCreatedAt() {
    	return createdAt;
    }
    
  //Setter of createdAt
    public void setCreatedAt(Date createdAt) {
    	this.createdAt=createdAt;
    }

 // Getter of status
    public String getStatus() {
    	return status;
    }
    
  //Setter of status
    public void setStatus(String status) {
    	this.status=status;
    }
    
    
  // Profile Picture Path Getter
     public String getProfilePicturePath () {
    	 return profilePicturePath;
     }
     
     
     // Profile Picture Path Setter
     public void setProfilePicturePath(String profilePicturePath) {
    	 this.profilePicturePath = profilePicturePath;
     }

}
