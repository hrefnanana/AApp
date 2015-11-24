package project.controller;

import javax.servlet.http.HttpSession;

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
public class LogoutController {
	
	
	UserService userService;
	
	// Dependency Injection
    @Autowired
    public LogoutController(UserService userService) {
        this.userService = userService;
    }

	 @RequestMapping(value = "/signOut", method = RequestMethod.GET)
	    public String prufaViewGet(Model model){
	    
	        // Return the view
	        return "logins/logout";
	    }
	
	@RequestMapping(value="/signOut", method=RequestMethod.POST)
	public String invalidate(HttpSession session, Model model) {
		session.invalidate();
		if(model.containsAttribute("user")) model.asMap().remove("user");
		return "redirect:/";
	} 
}