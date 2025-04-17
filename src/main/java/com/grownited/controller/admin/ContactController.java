

package com.grownited.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ContactController {
 
	@GetMapping("admincontact")
	public String adminContact() {
		return "AdminContact";
	}
	
	
}
