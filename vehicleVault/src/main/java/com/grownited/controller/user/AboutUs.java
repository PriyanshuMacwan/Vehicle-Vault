package com.grownited.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AboutUs {

	@GetMapping("aboutus")
	public String aboutUsPage() {
		return "AboutUs";
	}
	
	
}
