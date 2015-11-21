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


@Controller
public class LoginController {
	
	
	UserService userService;
	
	 // Dependency Injection
    @Autowired
    public LoginController(UserService userService) {
        this.userService = userService;
    }


    // Method that returns the correct view for the URL /postit
    // This handles the GET request for this URL
    // Notice the `method = RequestMethod.GET` part
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginsViewGet(Model model){
    
  
    	model.addAttribute("user", new User());
    	
    	System.out.println("Það var náð mér: GET");
    	
    	

        // Return the view
        return "logins/login";
    }

	@RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginViewPost(@ModelAttribute("user") User user, Model model){
		
		
   
    	String userName = user.getUserName();
    	String password = user.getPassword();
    	
    	String res = userService.checkIfMatch(userName, password);
    	
    	
    	if(res != null) {
        	System.out.println("þú ert búinn að logga þig in man");

    	}
    	
    	else  {System.out.println("þú ert ekkkki búinn að logga þig in man"); }
    		
    	System.out.println(userName);
    	System.out.println(password);
    	
 

        return "logins/login";
    }

	
	
}
