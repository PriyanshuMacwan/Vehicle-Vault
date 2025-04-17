package com.grownited.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.InsuranceEntity;
import com.grownited.repository.InsuranceRepository;



  @Controller
public class AdminInsuranceController {
     
	  @Autowired
	  InsuranceRepository repositoryInsurance;
	  
	  @GetMapping("adminlistinsurance") 
	  public String adminListInsurance(Model model) {
		  
		  // Making a list of all insurances
		  
		  List<InsuranceEntity> insuranceList = repositoryInsurance.findAll();
		  
		  model.addAttribute("insuranceList", insuranceList);
		  
		  return "AdminListInsurance";
		  
		  
	  }
	  
	  
	  @GetMapping("adminnewinsurance")
	  public String adminNewInsurance() {
		  return "AdminNewInsurance";
	  }
	  
	  
	  
}
