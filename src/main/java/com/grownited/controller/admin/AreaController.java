package com.grownited.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AreaEntity;
import com.grownited.entity.CityEntity;
import com.grownited.repository.CityRepository;
import com.grownited.repository.AreaRepository;
@Controller
public class AreaController {

@Autowired
CityRepository repositoryCity;

@Autowired
AreaRepository repositoryArea;

CityEntity entityCity;

AreaEntity entityArea;



	@GetMapping("newarea")
	public String newArea(Model model) {
	    List<CityEntity> cityList = repositoryCity.findAll(); 
		
		
		model.addAttribute("cityList",cityList);
		return "NewArea";
	}
	
	
	
	
   @PostMapping("savearea")
   public String saveArea(AreaEntity areaEntity) {
	    
	  Optional<AreaEntity> areaOp = repositoryArea.findByAreaName(areaEntity.getAreaName());
	  
	  if(areaOp.isEmpty())  {
	   
	   
	   repositoryArea.save(areaEntity);
	  }
	  
	  
	   return "redirect:newarea";
   }
	
	
	
	@GetMapping("listarea")
	public String listArea(Model model) {
		
	List<AreaEntity> areaList = repositoryArea.findAll();
    model.addAttribute("areaList",areaList);	
		
	return "ListArea";
	}
	
	
	
}
