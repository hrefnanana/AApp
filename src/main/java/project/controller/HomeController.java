package project.controller;

import java.time.LocalDate;
import java.time.Period;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import project.persistence.entities.User;
import project.service.*;

import org.springframework.validation.BindingResult;
import javax.validation.Valid;

@Controller
@SessionAttributes({"user"})
public class HomeController {

    // Instance Variables
    UserService userService;

    // Dependency Injection
    @Autowired
    public HomeController(UserService userService) {
        this.userService = userService;
    }

    // Request mapping is the path that you want to map this method to
    // In this case, the mapping is the root "/", so when the project
    // is running and you enter "localhost:8080" into a browser, this
    // method is called
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model){	
    	
    	model.addAttribute("user", new User());
        // The string "Index" that is returned here is the name of the view
        // (the Index.jsp file) that is in the path /main/webapp/WEB-INF/jsp/
        // If you change "Index" to something else, be sure you have a .jsp
        // file that has the same name
        return "logins/login";
    }
    
    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String homePost(@ModelAttribute("user") User user, Model model){	
    	
    	
    	String userName = user.getUserName();
    	String password = user.getPassword();
    	
    	User res = userService.findByUserNameAndPassword(userName, password);
    	
    	if(res != null) {

    		model.addAttribute("user", res);
    		String lastName = res.getLastName();
        	System.out.println("seinna nafn " + lastName);
        	return "redirect:/home";
    	}
    	
    	else {
    		
    		String notLoggedIn = "Notandanafn og lykilorð stemma ekki"; 
    		model.addAttribute("notLoggedIn", notLoggedIn);
    		return "logins/login";
    		
    	} 
    }
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String loggedIn(@ModelAttribute("user") User user, Model model){	
    	
    	 int soberday = Integer.parseInt(user.getSoberday());
 		 int sobermonth = Integer.parseInt(user.getSobermonth());
 		 int soberyear = Integer.parseInt(user.getSoberyear());
 		 
    	 LocalDate soberDate = LocalDate.of(soberyear, sobermonth, soberday);
    	 LocalDate dateToday = LocalDate.now();
    	 Period soberCounter = soberDate.until(dateToday);
    	 int years = soberCounter.getYears();
 		 int months = soberCounter.getMonths();
 		 int days = soberCounter.getDays();
 	
 		 String name = user.getFirstName();
	 
    	 model.addAttribute("years",years);
    	 model.addAttribute("days",days);
    	 model.addAttribute("months",months);
    	 model.addAttribute("name", name);

        return "Index";
    }


    @RequestMapping(value = "/12spor", method = RequestMethod.GET)
    public String spor(Model model){	
    	
	       return "12spor";
   }

    @RequestMapping(value = "/help", method = RequestMethod.GET)
    public String help(Model model){	
   
       return "help";
   }
}
