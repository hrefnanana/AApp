package project.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import project.persistence.entities.Day;
import project.persistence.entities.User;
import project.persistence.repositories.DayRepository;
import project.service.DayService;

@Controller
@SessionAttributes({"user"})
public class DayController {

    // Instance Variables
    DayService dayService;

    // Dependency Injection
    @Autowired
    public DayController(DayService dayService) {
        this.dayService = dayService;
    }

    // Method that returns the correct view for the URL /day
    // This handles the GET request for this URL
    // Notice the `method = RequestMethod.GET` part
    @RequestMapping(value = "/day", method = RequestMethod.GET)
    public String dayViewGet(User user, Model model){
    	
    	
    	// the date today in the format YYYYMMDD

    	LocalDate ldt = LocalDate.now();
    	String time = ldt.toString();
    	time = time.replace("-", "");
    	
        // Add a new Day to the model for the form
        model.addAttribute("day",new Day());
        

        //If you have previously logged some daily tasks today, they will be marked as done
        model.addAttribute("today",dayService.findByDateAndUserId(time, user.getId()));


        // Return the view
        return "days/Days";
    }

    // Method that receives the POST request on the URL /postit
    // and receives the ModelAttribute("postitNote")
    // That attribute is the attribute that is mapped to the form, so here
    // we can save the postit note because we get the data that was entered
    // into the form.
    // Notice the `method = RequestMethod.POST` part
    @RequestMapping(value = "/day", method = RequestMethod.POST)
    public String dayViewPost(@ModelAttribute("day") Day day, User user,
                                     Model model){
    	
    	LocalDate ldt = LocalDate.now();
    	String time = ldt.toString();
    	time = time.replace("-", "");
    	
    	day.setDate(time);
    	day.setUserId(user.getId());

    	//if you have logged your day today already, the new day will overwrite the old one
    	dayService.deleteByDateAndUserId(time, user.getId());


        // Save the day that we received from the form
        dayService.save(day);

        // Add a new Day to the model for the form
        model.addAttribute("day", new Day());
        model.addAttribute("today",dayService.findByDateAndUserId(time, user.getId()));

        // Return the view
        return "days/Days";
    }

}
