package project.persistence.entities;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.*;

@Entity
@Table(name = "userInfo") // If you want to specify a table name, you can do so here
public class User {
 
    // Declare that this attribute is the id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull
    private String firstName;
    @NotNull
    private String lastName;
    private String date;
    @NotNull
    private String userName;
    @NotNull
    private String password;
    @NotNull
    @Pattern(regexp="[0-3][0-9]|[0-9]")
    private String soberday;
    @NotNull
    @Pattern(regexp="1[0-2]|[1-9]")
    private String sobermonth;
    @NotNull
    @Pattern(regexp="20[0-1][0-9]|19[0-9][0-9]")
    private String soberyear;

  
   
    // Notice the empty constructor, because we need to be able to create an empty PostitNote to add
    // to our model so we can use it with our form
    public User() {
    }
 
    public User(String firstName, String lastName, String date, String userName, String password, String soberday, String sobermonth, String soberyear)  {
        this.firstName = firstName;
        this.lastName = lastName;
        this.date = date;
        this.userName = userName;
        this.password = password;
        this.soberday = soberday;
        this.sobermonth = sobermonth;
        this.soberyear = soberyear;
    }
    
    

    
    public Long getId() {
    	return this.id;
    }
    public void setId(Long id) {
    	this.id = id;
    }
    
    
    public String getFirstName() {
    	return this.firstName;
    }
    
    public void setFirstName(String first) {
    	this.firstName = first;
    }
    
    public String getLastName() {
    	return this.lastName;
    }
    
    public void setLastName(String last) {
    	this.lastName = last;
    }
    
    public String getDate() {
    	return this.date;
    }
    public void setDate(String date) {
    	this.date = date;
    }
    
    
    public String getUserName() {
    	return this.userName;
    }
    
    public void setUserName(String user) {
    	this.userName = user;
    }
    
    public String getPassword() {
    	return this.password;
    }
    
    public void setPassword(String password) {
    	this.password = password;
    }
    
    public String getSoberday() {
    	return this.soberday;
    }
    
    public void setSoberday(String soberday) {
    	this.soberday = soberday;
    }
    
    public String getSobermonth() {
    	return this.sobermonth;
    }
    
    public void setSobermonth(String sobermonth) {
    	this.sobermonth = sobermonth;
    }
    
    public String getSoberyear() {
    	return this.soberyear;
    }
    
    public void setSoberyear(String soberyear) {
    	this.soberyear = soberyear;
    }
    
    
    
  
    
    
 
}