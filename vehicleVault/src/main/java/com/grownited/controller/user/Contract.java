package com.grownited.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Contract {

	@GetMapping("contact")
	public String contactPage() {
		return "Contact";
	}
	
	
	
}
