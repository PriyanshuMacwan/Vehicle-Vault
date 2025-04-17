package com.grownited.dto;

import java.math.BigDecimal;
import java.util.Date;

public class NewCarDto {

	Integer carId;     // Primary key 
	String make;
	String model;
	Integer year;
	String variant;
	Double mileage;
	String fuelType;
	String transmissionType;
	BigDecimal price;
	String color;
	String description;
	String status;
	Date listingDate;
	Integer userId;  // foreign key
	Integer cityId;  // foreign key
	Integer areaId;  // foreign key
	Integer stateId; // foreign key
	Integer registrationYear;
	String insurance;
	Integer seats;
	String engineDisplacement;
	Integer NoOfAirBags;
	
	// getter of carId
		  public Integer getCarId() {
			  return carId;
		  }
		
		// setter of carId 
		 public void setCarId(Integer carId) {
			 this.carId = carId;
		 }
		
		// getter of make
		 public String getMake() {
			 return make;
		 }
		 
		 
		// setter of make
		public void setMake(String make) {
			this.make = make;
		}
		
		
		// getter of model
		public String getModel() {
			return model;
		}
		
		// setter of model 
		public void setModel(String model) {
			this.model = model;
		}
		
		
		// getter of year
		public Integer getYear() {
			return year;
		}
		// setter of year
		public void setYear(Integer year) {
			this.year = year;
		}
		
		// getter of variant 
		public String getVariant() {
			return variant;
		}
		
		// setter of variant
		public void setVariant(String variant) {
			this.variant = variant;
		}
		
		// getter of mileage
		public Double getMileage() {
			return mileage;
		}
		// setter of mileage
		public void setMileage(Double mileage) {
			this.mileage = mileage;
		}
		
		// getter of fuelType
		public String getFuelType() {
			return fuelType;
		}
		// setter of fuelType
		public void setFuelType(String fuelType) {
			this.fuelType = fuelType;
		}
		
		// getter of transmissionType
		 public String getTransmissionType() {
			 return transmissionType;
		 }
		 
		// setter of transmissionType
		 public void setTransmissionType(String transmissionType) {
			 this.transmissionType = transmissionType;
		 }
		
		// getter of price
		 public BigDecimal getPrice() {
			 return price;
		 }
		// setter of price
		 public void setPrice(BigDecimal price) {
			 this.price = price;
		 }
		
		// getter of color
		 public String getColor() {
			 return color;
		 }
		 
		// setter of color
		 public void setColor(String color) {
			 this.color = color;
		 }
		
		// getter of description
		 public String getDescription() {
			 return description;
		 }
		 
		// setter of description
		 public void setDescription(String description) {
			  this.description = description;
		 }
		
		// getter of status 
		 public String getStatus() {
			 return status;
		 }
		 
		// setter of status
		 public void setStatus(String status) {
			 this.status = status;
		 }
		
		// getter of listingDate 
		 public Date getListingDate() {
			 return listingDate;
		 }
		 
		// setter of listingDate
		 public void setListingDate(Date listingDate) {
			 this.listingDate = listingDate;
		 }
		
		// getter of userId 
		 public Integer getUserId() {
			 return userId;
		 }
		 
		// setter of userId
		 public void setUserId(Integer userId) {
			 this.userId = userId;
		 }
		
		// getter of cityId
		 public Integer getCityId() {
			 return cityId;
		 }
		// setter of cityId
		 public void setCityId(Integer cityId) {
			 this.cityId = cityId;
		 }
		
		// getter of areaId 
		 public Integer getAreaId() {
			 return areaId;
		 }
		 
		// setter of areaId
		 public void setAreaId(Integer areaId) {
			 this.areaId = areaId;
		 }
		
		// getter of stateId 
		 public Integer getStateId() {
			 return stateId;
		 }
		 
		// setter of stateId
		 public void setStateId(Integer stateId) {
			 this.stateId = stateId;
		 }
		
		// getter of registrationYear
		  public Integer getRegistrationYear() {
			  return registrationYear;
		  }
		  
		// setter of registrationYear
		 public void setRegistrationYear(Integer registrationYear) {
			 this.registrationYear = registrationYear;
		 }
		  
		// getter of insurance
		 public String getInsurance() {
			 return insurance;
		 }
		 
		// setter of insurance
		 public void setInsurance(String insurance) {
			 this.insurance = insurance;
		 }
		 
		// getter of seats
		 public Integer getSeats() {
			 return seats;
		 }
		 
		// setter of seats
		 public void setSeats(Integer seats) {
			 this.seats = seats;
		 }
		
		
		// getter of engineDisplacement 
		 public String getEngineDisplacement() {
			 return engineDisplacement;
		 }
		 
		 
		// setter of enginerDisplacement
	   public void setEngineDisplacement(String engineDisplacement) {
		   this.engineDisplacement = engineDisplacement;
	   }
		// getter of NoOfAirBags 
	   public Integer getNoOfAirBags() {
		   return NoOfAirBags;
	   }
	   
		// setter of NoOfAirBags
	   public void setNoOfAirBags(Integer NoOfAirBags) {
		   this.NoOfAirBags = NoOfAirBags;
	   }
}
