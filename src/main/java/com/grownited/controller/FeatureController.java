package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.FeatureEntity;
import com.grownited.repository.FeatureRepository;

@Controller
public class FeatureController {

	@Autowired
	FeatureRepository repositoryFeature;
	
	@GetMapping("newfeature")
	public String newFeature() {
		return "NewFeature";
	}
	
	
	@PostMapping("savefeature")
	public String saveFeature(FeatureEntity featureEntity) {
	     
	      repositoryFeature.save(featureEntity);	 
		
		return "redirect:newfeature";
	}
	
	@GetMapping("listfeature")
	public String listFeature(Model model) {
		
		List<FeatureEntity> featureList = repositoryFeature.findAll();		
		
		model.addAttribute("featureList",featureList);
		
		return "ListFeature";
	}
}
