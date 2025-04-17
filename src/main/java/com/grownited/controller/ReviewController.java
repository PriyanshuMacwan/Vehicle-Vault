package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ReviewEntity;
import com.grownited.repository.ReviewRepository;

@Controller
public class ReviewController {
	
	@Autowired
	ReviewRepository repositoryReview;
	 
	
	
	
	// new review
	@GetMapping("newreview")
	public String newReview() {
		
		return "NewReview";
	}
	
	
	// save review
	@PostMapping("savereview")
	public String saveReview(ReviewEntity reviewEntity) {
		
		   repositoryReview.save(reviewEntity);
		
		return "redirect:newreview";
	}
	
	
	
	
	// list review
	@GetMapping("listreview")
	public String listReview(Model model) {
		
	   List<ReviewEntity> reviewList = repositoryReview.findAll();
	 	
	   model.addAttribute("reviewList", reviewList);
		
		return "ListReview";
	}
	 
}
