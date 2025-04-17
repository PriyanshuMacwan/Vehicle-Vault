package com.grownited.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CityEntity;
import com.grownited.entity.StateEntity;
import com.grownited.repository.CityRepository;
import com.grownited.repository.StateRepository;

@Controller
public class CityController {

	
	  // city repository
	@Autowired
	CityRepository repositoryCity;
	
	 // creating state repository
	
	@Autowired
	StateRepository repositoryState;
	
	
	
	
	  @GetMapping("newcity")
	  public String newCity(Model model){
		  
		  List<StateEntity> stateList = repositoryState.findAll();
		  
		  model.addAttribute("stateList",stateList);
 		   return "NewCity";
	  }
	
	  
	  
	  @PostMapping("savecity")
	  public String saveCity(CityEntity cityEntity, Model model) {
		  
		  Optional<CityEntity> op = repositoryCity.findByCityName(cityEntity.getCityName()); 
		  
		  
		  if(op.isEmpty()) {
		  // saving data into the database 
		  repositoryCity.save(cityEntity);
		  
		  
		  
		  
		  List<CityEntity> cityList = repositoryCity.findAll();
		  
		  model.addAttribute("cityList", cityList);
		  
		  
		  }
		  
		  
		  return "redirect:listcity";
			
	  }
	  
	  
	  
	  @GetMapping("listcity")
	  public String listCity(Model model) {
		  
		  List<CityEntity> cityList= repositoryCity.findAll();
		  
		  model.addAttribute("cityList", cityList);
		  
		  return "ListCity";
	  }
}
