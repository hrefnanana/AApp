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
import project.service.StringManipulationService;

@Controller
@SessionAttributes({"user"})
public class HomeController {

    // Instance Variables
    StringManipulationService stringService;

    // Dependency Injection
    @Autowired
    public HomeController(StringManipulationService stringService) {
        this.stringService = stringService;
    }

    // Request mapping is the path that you want to map this method to
    // In this case, the mapping is the root "/", so when the project
    // is running and you enter "localhost:8080" into a browser, this
    // method is called
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model){	
    	
    	 LocalDate soberDate = LocalDate.of(2014, 6, 29);
    	 LocalDate dateToday = LocalDate.now();
    	 Period soberCounter = soberDate.until(dateToday);
    	 int years = soberCounter.getYears();
 		 int months = soberCounter.getMonths();
 		 int days = soberCounter.getDays();
    			 
    	 model.addAttribute("years",years);
    	 model.addAttribute("days",days);
    	 model.addAttribute("months",months);
    	 
        // The string "Index" that is returned here is the name of the view
        // (the Index.jsp file) that is in the path /main/webapp/WEB-INF/jsp/
        // If you change "Index" to something else, be sure you have a .jsp
        // file that has the same name
        return "Index";
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

    // To call this method, enter "localhost:8080/user" into a browser
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String user(Model model){

        // Here we will show how to add attributes to a model and send it to the view

        // Since this small example is for a user, let's create some attributes
        // that users might usually have in a system
        String name = "Rincewind";
        String job  = "Wizzard";
        String email = "rincewizz@unseenuni.edu";
        String description = "most likely to survive in a dungeon dimension.";


        // Since we want our attributes regarding the user always in the same format,
        // we are going to convert some strings using our StringManipulationService

        // Let's assume that the name, job and description always have
        // the first character in upper case
        name = stringService.convertsFirstCharInStringToUpperCase(name);
        job = stringService.convertsFirstCharInStringToUpperCase(job);
        description = stringService.convertsFirstCharInStringToUpperCase(description);

        // Let's assume that we always want e-mail in lower case
        email = stringService.convertStringToLowerCase(email);


        // Now let's add the attributes to the model
        model.addAttribute("name",name);
        model.addAttribute("job",job);
        model.addAttribute("email",email);
        model.addAttribute("description",description);

        // By adding attributes to the model, we can pass information from the controller
        // to the view (the .jsp file).
        // Look at the User.jsp file in /main/webapp/WEB-INF/jsp/ to see how the data is accessed
        return "User";
    }
    // To call this method, enter "localhost:8080/user" into a browser
    @RequestMapping(value = "/12spor", method = RequestMethod.GET)
    public String spor(Model model){	
    	
   	 LocalDate soberDate = LocalDate.of(2014, 6, 29);
   	 LocalDate dateToday = LocalDate.now();
   	 Period soberCounter = soberDate.until(dateToday);
   	 int years = soberCounter.getYears();
		 int months = soberCounter.getMonths();
		 int days = soberCounter.getDays();
   			 
   	 model.addAttribute("years",years);
   	 model.addAttribute("days",days);
   	 model.addAttribute("months",months);
   	 
       // The string "Index" that is returned here is the name of the view
       // (the Index.jsp file) that is in the path /main/webapp/WEB-INF/jsp/
       // If you change "Index" to something else, be sure you have a .jsp
       // file that has the same name
       return "12spor";
   }
    // To call this method, enter "localhost:8080/user" into a browser
    @RequestMapping(value = "/help", method = RequestMethod.GET)
    public String help(Model model){	
    	
   	 LocalDate soberDate = LocalDate.of(2014, 6, 29);
   	 LocalDate dateToday = LocalDate.now();
   	 Period soberCounter = soberDate.until(dateToday);
   	 int years = soberCounter.getYears();
		 int months = soberCounter.getMonths();
		 int days = soberCounter.getDays();
   			 
   	 model.addAttribute("years",years);
   	 model.addAttribute("days",days);
   	 model.addAttribute("months",months);
   	 
       // The string "Index" that is returned here is the name of the view
       // (the Index.jsp file) that is in the path /main/webapp/WEB-INF/jsp/
       // If you change "Index" to something else, be sure you have a .jsp
       // file that has the same name
       return "help";
   }
}
