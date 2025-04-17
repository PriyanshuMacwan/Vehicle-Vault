package com.grownited.controller.user;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.CarEntity;
import com.grownited.repository.CarRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class CompareCar {

	@Autowired
	CarRepository repositoryCar;
	
	@GetMapping("comparecar")
	public String compareCar( Integer carId[] , Model model) {	
		
		
		
		for(int i=0; i < carId.length; i++) {
			System.out.print(" " + carId[i] + " ");
		}
		
		Optional<CarEntity> opCar ;
		List<CarEntity> carList = new ArrayList<CarEntity>();
		int listIndex = 0;
		for(int i=0 ; i < carId.length; i++) {
			
			opCar = repositoryCar.findById(carId[i]);
			
			if(opCar.isPresent()) {
				carList.add(listIndex,opCar.get());
				listIndex++;
			}
			
		}
		
		if( carList.isEmpty()) {
			 
			model.addAttribute("error", "Car data not found");
			
			return "redirect:listcar";
			
		}
	
		else {
		
	
			
			model.addAttribute("carList", carList);
			
			return "CarComparisionPage";
		
		}
	
		
		
	}
	
}
