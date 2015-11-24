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
import org.springframework.web.bind.annotation.SessionAttributes;

import project.persistence.entities.*;
import project.persistence.repositories.DayRepository;
import project.service.DayService;

import org.springframework.validation.BindingResult;
import javax.validation.Valid;



@Controller
@SessionAttributes({"longterm", "user"})
public class LongtermController {

    // Instance Variables
    DayService dayService;

    // Dependency Injection
    @Autowired
    public LongtermController(DayService dayService) {
        this.dayService = dayService;
    }

    // Method that returns the correct view for the URL /longterm
    @RequestMapping(value = "/longterm", method = RequestMethod.GET)
    public String dayViewGet(User user, Model model){
    	
    	

        model.addAttribute("longterm",new Longterm());
        model.addAttribute("user",user);
        

        // Return the view
        return "longterm/longterm";
    }

    @RequestMapping(value = "/longterm", method = RequestMethod.POST)
    
    public String dayViewPost(@ModelAttribute("longterm") @Valid Longterm longterm, BindingResult result, User user, Model model){
    	

        // Save the Postit Note that we received from the form
    	if (result.hasErrors()) {
    	      model.addAttribute("villa", "Einungis er hægt að setja inn tölustafi sem eru stærri en 1");
    	      return "longterm/longterm";
    	    }
    	else{
        int numberOfDays = longterm.getNumberOfDays();

        LocalDate ldt = LocalDate.now();
    	String time = ldt.toString();
    	time = time.replace("-", "");
    	ArrayList<Day> Days = new ArrayList<Day>();
        
        model.addAttribute("longterm",new Longterm());
        for(int i = 0; i<numberOfDays; i++){
        	
        	Days.add(dayService.findByDateAndUserId(time, user.getId()));
        	ldt  = ldt.minusDays(Long.valueOf(1));
        	time = ldt.toString();
        	time = time.replace("-", "");
        	
        }
        longterm.addDays(Days);
        model.addAttribute("longterm",longterm);
        // Here we get all the Postit Notes (in a reverse order) and add them to the model
        
        // Return the view
        return "redirect:/longterm/progress";}
    }
    
    @RequestMapping(value = "/longterm/progress", method = RequestMethod.GET)
    public String progressViewGet(@ModelAttribute("longterm") Longterm longterm,
            Model model){
    	
    	
    	
        model.addAttribute("days",longterm.getDays());
        int numberOfDays = longterm.getNumberOfDays();

        
    	String Data = "";
    	ArrayList<Day> Days = new ArrayList<Day>();
    	Days = longterm.getDays();
    	int total = 0;
    	Day tempday;
    	int totalFinished = 0;
        for(int i = numberOfDays-1; i>=0; i--){
        	LocalDate ldt = LocalDate.now();
            ldt  = ldt.minusDays(Long.valueOf(i));
        	String time = ldt.toString();
        	
        	int day = ldt.getDayOfMonth();
        	int month = ldt.getMonthValue();
        	int year = ldt.getYear();
        	String date = day+"-"+month+"-"+year;
        	tempday = Days.remove(i);
        	if(tempday!=null){
        		total = total + tempday.getFinished();
        	}
        	totalFinished = totalFinished+ 12;
        	Data = Data + "['"+date+"',"+total+","+totalFinished+"]," ;
        	
        }
        model.addAttribute("data",Data);
        

        // Return the view
        return "longterm/progress";
    }
    
}
