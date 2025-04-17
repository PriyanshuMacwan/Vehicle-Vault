package com.grownited.controller.admin;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.InquiryEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.InquiryRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class InquiryController {
        
	
	// Inquiry Repository
	@Autowired
	InquiryRepository repositoryInquiry;
	
	
	@GetMapping("newinquiry")
	public String newInquiry() {
		return "NewInquiry";
	}
	
	
	
	@PostMapping("saveinquiry")
   public String saveInquiry(InquiryEntity inquiryEntity, HttpSession session) {

		
		inquiryEntity.setStatus("ACTIVE");
		
		Date date = new Date();
		
		UserEntity user = (UserEntity)session.getAttribute("user");
		
		Integer userId = user.getUserId();
		
		// setting userId
		  inquiryEntity.setUserId(userId);
		
		// setting data to inquiry's date
				inquiryEntity.setInquiryDate(date);
		
		// setting status to active
		repositoryInquiry.save(inquiryEntity);
		
		
		
		return"ThankYouForInquiry";
	}
	
	
	@GetMapping("listinquiry")
	  public String listInquiry(Model model) {
		
		 List<InquiryEntity> inquiryList = repositoryInquiry.findAll();
				 
				 model.addAttribute("inquiryList", inquiryList);
		
		return "ListInquiry";
	}
	
    
    
	 
	

}
