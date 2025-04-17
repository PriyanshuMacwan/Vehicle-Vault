package com.grownited.controller;

import java.beans.Encoder;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.CarEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CarRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;

import jakarta.servlet.http.HttpSession;

@Controller
public class SessionController {
	
	
	@Autowired
	CarRepository repositoryCar;
	
	@Autowired 
	UserRepository repositoryUser;
	
	@Autowired
	PasswordEncoder encoder;
	
	// mail 
	@Autowired
	MailService serviceMail;
	
	// cloudinary
	@Autowired
	Cloudinary cloudinary;

 @GetMapping(value= {"/","login"})
	public String login() {
		return "Login";
	}

 @GetMapping("signup")
  public String signup() {
	return "Signup";
}

 @GetMapping("homepage")
 public String homepage(Model model) {
	 List<CarEntity> car= repositoryCar.findAll();
	 
	 model.addAttribute("carList", car);
	 
	return "Home";
}



 @PostMapping("saveuser")
 public String saveUser(UserEntity userEntity, MultipartFile profilePic, Model model) {
	 String email = userEntity.getEmail();
	   
	
	 Optional<UserEntity> op = repositoryUser.findByEmail(email);
	 
	 if(op.isEmpty()) {
	 	 
		 String encPassword = encoder.encode(userEntity.getPassword());
		 
		 userEntity.setPassword(encPassword);     
		 
		 // setting attributes to upper case
		 userEntity.setFirstName( (userEntity.getFirstName()).toUpperCase() );
		 userEntity.setLastName( (userEntity.getLastName() ).toUpperCase()   );
		 
		 
		 userEntity.setRole("USER");
		 userEntity.setCreatedAt(new Date());
		 
		 
		 userEntity.setStatus("ACTIVE");
		 
		 

			System.out.println(profilePic.getOriginalFilename());// file name
			// cloud->
			
//			if(profilePic.getOriginalFilename().endsWith(".jpg") || || || ) {
//				
//			}else {
//				//
//				//model 
//				return "Signup";
//			}
			try {
				Map result = cloudinary.uploader().upload(profilePic.getBytes(), ObjectUtils.emptyMap());
				System.out.println(result);
				System.out.println(result.get("url"));
				userEntity.setProfilePicturePath(result.get("url").toString());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 
		 
		 
		 
		// serviceMail.sendWelcomeMail(email, userEntity.getFirstName());
		repositoryUser.save(userEntity);
    
		return "Signup";
 }
	 
	 else {
		 model.addAttribute("error", "Email already used");
	 	return "Signup";
	 }
}


	@PostMapping("authenticate")
	public String authenticate(String email, String password,Model model, HttpSession session) {// sakira@yopmail.com sakira
		System.out.println(email);
		System.out.println(password);

		// users -> email,password
		 Optional<UserEntity> op = repositoryUser.findByEmail(email);
		// select * from users where email = :email and password = :password

		 if (op.isPresent()) {
			// true
			// email
			UserEntity dbUser = op.get();
			if (encoder.matches(password, dbUser.getPassword())) {
				
				
				  // for admin 
				
				 if(dbUser.getRole().equals("ADMIN")) {
					 return "redirect:/admindashboard";
					
				 }

				 // for user
				 else {
					 session.setAttribute("user", dbUser);
						
						return "redirect:/homepage";
				 }
			}
		} 
		model.addAttribute("error","Invalid Credentials");
		return "Login";
	}
	
	
	// Log out
	@GetMapping("logout")
	public String logout(HttpSession session) {
	    session.invalidate(); // Ends the session
	    return "redirect:login";
	}

	
}
	
	


