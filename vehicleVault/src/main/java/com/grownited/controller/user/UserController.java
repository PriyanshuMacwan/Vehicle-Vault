package com.grownited.controller.user;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

@Controller
public class UserController {
 
	@Autowired
	UserRepository repositoryUser;
	
	
	@GetMapping("listuser")
	public String listUser(Model model) {
	      List<UserEntity> listUser = repositoryUser.findAll();
	      
	      model.addAttribute("listUser", listUser);
	      
	      return "ListUser";
	}
	
	
	
	@GetMapping("viewuser")
	public String viewUser( @RequestParam("userId") Integer userId, Model model) {
	 
		System.out.print("User Id" + userId);
		
		Optional<UserEntity> op = repositoryUser.findById(userId);
		
	     if(op.isEmpty()) {
	    	 // no data
	    	 return "ListUser";
	     }
	     
	     else {
	    	 
	    	 // data found
	    	 UserEntity user = op.get();
	    	 
	    	 model.addAttribute("user", user);
	    	 
	     }
	     
	     
		
		
		return "ViewUser";
	
	}
	
	
	@GetMapping("deleteuser")
	public String deleteUser(Integer userId) {
		
		 repositoryUser.deleteById(userId);
		 
		 return "redirect:listuser";
	}
	
	
	@PostMapping("updateuser")
	public String updateUser(@RequestParam("userId") Integer userId,UserEntity userEntity,Model model) {
		
		userEntity.setUserId(userId);
		
		UserEntity dbUser;
		
		Optional <UserEntity> op = repositoryUser.findById(userId);
		
		if(op.isPresent()) {
			
		   dbUser = op.get();
		   
		   dbUser.setFirstName( ( userEntity.getFirstName() ).toUpperCase());
		   dbUser.setLastName(  ( userEntity.getLastName() ).toUpperCase()  );
		   dbUser.setEmail(userEntity.getEmail() );
		   dbUser.setContactNum(userEntity.getContactNum());
		   dbUser.setGender( (  userEntity.getGender() ).toUpperCase() );
		   dbUser.setRole( ( userEntity.getRole() ).toUpperCase() );
		   dbUser.setStatus( ( userEntity.getStatus() ).toUpperCase() );
		  
		    repositoryUser.save(dbUser);
		
		}
		
		else {
			model.addAttribute("error", "Given record not found");
		}
		
		return "redirect:viewuser?userId="+userEntity.getUserId();
		
	}
	
	@GetMapping("updatepage")
	public String updatePage(  @RequestParam("userId") Integer userId, Model model) {
		
		 UserEntity entityUser;
		 
		 Optional<UserEntity> op= repositoryUser.findById(userId);
		 
		 if( op.isPresent()  ) {
			 
			 entityUser = op.get();
			 model.addAttribute("user", entityUser);
			 
		 }
		
		 
		return "UpdatePage";
	}
}
