package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SessionController {
     @GetMapping("signup")
	 public String signup() {
		 return "Signup";
	 }
     
     @GetMapping
     public String login() {
    	 return "Login";
     }
}
