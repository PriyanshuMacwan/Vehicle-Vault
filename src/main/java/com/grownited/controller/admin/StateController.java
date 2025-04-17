package com.grownited.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.StateEntity;
import com.grownited.repository.StateRepository;

@Controller
public class StateController {
	
	// state repository
    @Autowired
    StateRepository repositoryState;

	// new state request mapping
  @GetMapping("newstate")
  public String newState() {
	  return "NewState";
  }
	
	
  
  // save state
  @PostMapping("savestate")
  public String saveState(StateEntity stateEntity) {
	  repositoryState.save(stateEntity);
	  return "redirect:liststate";
  }
  
  
  @GetMapping("liststate")
  public String listState(Model model) {
	 
	  List<StateEntity> stateList = repositoryState.findAll();
	  
	  model.addAttribute("stateList", stateList);
	  return "ListState";
  }
	
}
