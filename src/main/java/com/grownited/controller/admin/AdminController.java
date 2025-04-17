package com.grownited.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.CarEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CarRepository;
import com.grownited.repository.UserRepository;

@Controller
public class AdminController {
	
	// user repository
	@Autowired
	UserRepository repositoryUser;
	
	// car repository
	@Autowired
	CarRepository repositoryCar;

   
	
	@GetMapping("admindashboard")
	  public String adminDashBoard(Model model) {
		
	
		
		List<UserEntity> userList = repositoryUser.findAll();
		List<CarEntity> carList = repositoryCar.findAll();
		
	  // adding userList to model
		model.addAttribute("userList", userList);
		
		
		
		model.addAttribute("carList", carList);
		
		return "AdminDashboard";
	}
	
	@GetMapping("adminlogout")
	public String adminLogOut() {
		return "AdminLockScreen";
	}
	
}
