package com.grownited.controller.admin;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.CarEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CarRepository;

@Controller
public class CarController {
   
	@Autowired
	CarRepository repositoryCar;
	
    // Cloudinary 
	
	@Autowired
	Cloudinary cloudinary ;
	
	@GetMapping("adminlistcar")
	public String adminlistcar(Model model) {
	  // creating a list to store all the car records
		
		List<CarEntity> carList = repositoryCar.findAll();
		
		model.addAttribute("carList", carList);
		
		return "AdminListCar";
		
	}
	
	
	@GetMapping("listcar")
	public String listCar(Model model) {
		
	    // creating a list to store all the car records
		List<CarEntity> carList = repositoryCar.findAll();
	    
		model.addAttribute("carList",carList);
		
		return "DisplayCar";
	}
	
	 @PostMapping("savecar")
	 public String saveCar(CarEntity carEntity, MultipartFile carImage) {
		
		 Date date;
		 
		  date= new Date();
			carEntity.setListingDate(date);
			
			try {
				Map result = cloudinary.uploader().upload(carImage.getBytes(), ObjectUtils.emptyMap());
				System.out.println(result);
				System.out.println(result.get("url"));
				carEntity.setCarImagePath(result.get("url").toString());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 
		 
		 repositoryCar.save(carEntity);
		
		
		return "redirect:adminnewcar";
	}
	 
	 
	 
	 @GetMapping("adminviewcar")
		public String viewCar( @RequestParam("carId") Integer carId, Model model) {
		 
			System.out.print("User Id" + carId);
			
			Optional<CarEntity> op = repositoryCar.findById(carId);
			
		     if(op.isEmpty()) {
		    	 // no data
		    	 return "AdminListCar";
		     }
		     
		     else {
		    	 
		    	 // data found
		    	 CarEntity car = op.get();
		    	 
		    	 model.addAttribute("car", car);
		    	 
		     }
		     
		     
			
			
			return "AdminViewCar";
		
		}
		
		
	 
		@GetMapping("admindeletecar")
		public String deleteCar(Integer carId) {
			
			 repositoryCar.deleteById(carId);
			 
			 return "redirect:adminlistcar";
		}
		
		
		@PostMapping("adminupdatecar")
		public String updateUser(@RequestParam("carId") Integer carId,CarEntity carEntity,Model model, MultipartFile carImage) {
			
			carEntity.setUserId(carId);
			
			
			try {
				Map result = cloudinary.uploader().upload(carImage.getBytes(), ObjectUtils.emptyMap());
				System.out.println(result);
				System.out.println(result.get("url"));
				carEntity.setCarImagePath(result.get("url").toString());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			CarEntity dbUser;
			
			Optional <CarEntity> op = repositoryCar.findById(carId);
			
			if(op.isPresent()) {
				
			   dbUser = op.get();
			   
			   dbUser.setColor(carEntity.getColor());
			   
			   dbUser.setEngineDisplacement(carEntity.getEngineDisplacement());
			   dbUser.setDescription(carEntity.getDescription());
			   dbUser.setFuelType(carEntity.getFuelType());
			   dbUser.setListingDate(carEntity.getListingDate());;
			   dbUser.setMake(carEntity.getMake());
			   dbUser.setModel(carEntity.getModel());
			   dbUser.setMileage(carEntity.getMileage());
			   dbUser.setNoOfAirBags(carEntity.getNoOfAirBags());
			   dbUser.setPrice(carEntity.getPrice());
			   dbUser.setSeats(carEntity.getSeats());
			   dbUser.setTransmissionType(carEntity.getTransmissionType());
			   dbUser.setVariant(carEntity.getVariant());
			   dbUser.setYear(carEntity.getYear());
			  
			    repositoryCar.save(dbUser);
			
			}
			
			else {
				model.addAttribute("error", "Given record not found");
			}
			
			return "redirect:adminviewcar?carId="+carEntity.getCarId();
			
		}
		
	 
		@GetMapping("admincarupdatepage")
		public String updatePage(  @RequestParam("carId") Integer carId, Model model, CarEntity carEntity) {
			
			 CarEntity entityCar;
			 
			 Optional<CarEntity> op= repositoryCar.findById(carId);
			 
			 if( op.isPresent()  ) {
				 
				 entityCar = op.get();
				 model.addAttribute("car", entityCar);
			 
			 }
			 
			 else {
				 
				 model.addAttribute( "error" , "Car not found");
				 
			 }
			 
			return "AdminUpdateCar";
		}

	
	@GetMapping("adminnewcar")
	public String newCar(CarEntity carEntity) {
		return "AdminNewCar";
	}
	
	
	
	
}
