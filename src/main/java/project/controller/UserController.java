package project.controller;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.*;
import project.persistence.repositories.*;
import project.service.*;
import org.springframework.validation.BindingResult;
import javax.validation.Valid;

@Controller
public class UserController {

    // Instance Variables
    UserService userService;

    // Dependency Injection
    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    // Method that returns the correct view for the URL /postit
    // This handles the GET request for this URL
    // Notice the `method = RequestMethod.GET` part
    @RequestMapping(value = "/signUp", method = RequestMethod.GET)
    public String userViewGet(Model model){
    
    	model.addAttribute("user", new User());
    	
        // Return the view
        return "logins/signUp";
    }
    
    
    @RequestMapping(value = "/signUp", method = RequestMethod.POST)
    public String userViewPost(@ModelAttribute("user") @Valid User user,BindingResult result, 
                                     Model model){
   
    	if (result.hasErrors()) {
  	      model.addAttribute("villa", "Það kom upp villa við nýskráningu, vinsamlegast reyndu aftur");
  	      return "logins/signUp";
  	    }
    	else{
    	//model.addAttribute("user", new User());
    	String firstName = user.getFirstName();
    	String lastName = user.getLastName();
    	String userName = user.getUserName();
    	String password = user.getPassword();
    
    	String res = userService.doesExist(userName);
    	if(res == null) {
    	 	userService.save(user);
    	 	model.addAttribute("success","Nýskráning tókst");
    	}
    	else {
    		model.addAttribute("ekkitil", "Þetta notendanafn er frátekið");
    	}

        return "logins/signUp";
    	}
    }
    
    
  


}
