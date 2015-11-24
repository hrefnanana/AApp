package project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import project.persistence.entities.*;
import project.persistence.repositories.*;
import project.service.*;
import org.springframework.validation.BindingResult;
import javax.validation.Valid;

@Controller
@SessionAttributes({"user"})
public class LoginController {
	
	
	UserService userService;
	
	 // Dependency Injection
    @Autowired
    public LoginController(UserService userService) {
        this.userService = userService;
    }


    // Method that returns the correct view for the URL /login
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginsViewGet(Model model){
    
  
    	model.addAttribute("user", new User());

        // Return the view
        return "logins/login";
    }

	@RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginViewPost(@ModelAttribute("user") User user, Model model){
		
		
   
    	String userName = user.getUserName();
    	String password = user.getPassword();
    	
    	User res = userService.findByUserNameAndPassword(userName, password);
    	

    	if(res != null) {
    		model.addAttribute("user", res);
    		String lastName = res.getLastName();
        	return "redirect:/home";
        	
    	}
    	else  {
    		model.addAttribute("villa", "Innskráning tókst ekki, reyndu aftur.");
    		return "logins/login";}
    }

	
	
}
