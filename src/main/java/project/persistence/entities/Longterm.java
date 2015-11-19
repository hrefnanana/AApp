package project.persistence.entities;
 
import javax.persistence.*;
import java.util.*;
 
/**
 * The class for the Postit Note itself.
 * The system generates a table schema based on this class for this entity.
 * Be sure to annotate any entities you have with the @Entity annotation.
 */
//@Entity
//@Table(name = "dayTable") // If you want to specify a table name, you can do so here
public class Longterm {
 
    // Declare that this attribute is the id
   // @Id
    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int numberOfDays;
    private ArrayList<Day> days = new ArrayList<Day>();
   
    // Notice the empty constructor, because we need to be able to create an empty PostitNote to add
    // to our model so we can use it with our form
    public Longterm() {
    }
 
    public Longterm(int numberOfDays) {
    	this.numberOfDays = numberOfDays;
    }
    
    public int getNumberOfDays() {
        return numberOfDays;
    }
 
    public void setNumberOfDays(int numberOfDays) {
        this.numberOfDays = numberOfDays;
    }
    
    public ArrayList<Day> getDays(){
    	return this.days;
    }
    
    public void addDay(Day day){
    	this.days.add(day);
    	this.numberOfDays++;
    }
    public void addDays(ArrayList<Day> days){
    	this.days = days;
    }
 
    public int getNumberOfFinished(){
    	int n = 0;
    	ArrayList<Day> tempDays = new ArrayList<Day>();
    	tempDays = this.days;
    	Day tempDay;
    	while(!tempDays.isEmpty()){
    		tempDay = tempDays.remove(0);
    		n=n+tempDay.getFinished();
    	}
    	return n;
    }
   
   
 
}