package com.grownited.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomePage {

	
	@GetMapping("testimonies")
	public String testimonies() {
		return "Testimonies";
	}
	
	@GetMapping("terms")
	public String termsPage() {
		return "Terms";
	}
	
	
	@GetMapping("viewcar")
	public String carDetails() {
		return "CarDetails";
	}
	
}
