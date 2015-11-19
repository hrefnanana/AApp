package project.controller;

import java.time.LocalDate;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import project.persistence.entities.*;
import project.persistence.repositories.DayRepository;
import project.service.DayService;

@Controller
public class LongtermController {

    // Instance Variables
    DayService dayService;

    // Dependency Injection
    @Autowired
    public LongtermController(DayService dayService) {
        this.dayService = dayService;
    }

    // Method that returns the correct view for the URL /postit
    // This handles the GET request for this URL
    // Notice the `method = RequestMethod.GET` part
    @RequestMapping(value = "/longterm", method = RequestMethod.GET)
    public String dayViewGet(Model model){
    	
    	
    	// the date today in the format YYYYMMDD
    	// ætti kannski að vera global gæi?
    	// hvað gerist líka á miðnætti? hvaða time zone er miðað við
    	LocalDate ldt = LocalDate.now();
    	String time = ldt.toString();
    	time = time.replace("-", "");
    	
        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("day",new Day());
        
        long numberOfDays = 0;
        
        model.addAttribute("numberOfDays",numberOfDays);

        // Here we get all the Postit Notes (in a reverse order) and add them to the model
        //model.addAttribute("days",dayService.findAllByOrderByIdDesc());
        model.addAttribute("today",dayService.findByDate(time));
        model.addAttribute("time", time);
        model.addAttribute("longterm",new Longterm());
        

        // Return the view
        return "longterm/longterm";
    }

    @RequestMapping(value = "/longterm", method = RequestMethod.POST)
    public String dayViewPost(@ModelAttribute("longterm") Longterm longterm,
                                     Model model){
    	

        // Save the Postit Note that we received from the form

        int numberOfDays = longterm.getNumberOfDays();
        System.out.println(numberOfDays);
        LocalDate ldt = LocalDate.now();
    	String time = ldt.toString();
    	time = time.replace("-", "");
    	ArrayList<Day> Days = new ArrayList<Day>();
        
        model.addAttribute("longterm",new Longterm());
        for(int i = 0; i<=numberOfDays; i++){
        	
        	Days.add(dayService.findByDate(time));
        	System.out.println(time+" "+i+" "+ldt);
        	ldt  = ldt.minusDays(Long.valueOf(1));
        	time = ldt.toString();
        	time = time.replace("-", "");
        	
        }
        longterm.addDays(Days);
        // Here we get all the Postit Notes (in a reverse order) and add them to the model
        model.addAttribute("days", dayService.findAllByOrderByIdDesc());

        // Add a new Postit Note to the model for the form
        // If you look at the form in PostitNotes.jsp, you can see that we
        // reference this attribute there by the name `postitNote`.
        model.addAttribute("day", new Day());

        // Return the view
        return "longterm/longterm";
    }
    
}
