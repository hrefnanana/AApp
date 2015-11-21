package project.persistence.entities;

import javax.persistence.*;

@Entity
@Table(name = "userInfo") // If you want to specify a table name, you can do so here
public class User {
 
    // Declare that this attribute is the id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String firstName;
    private String lastName;
    private String date;
    private String userName;
    private String soberDate;
    private String password;
  
   
    // Notice the empty constructor, because we need to be able to create an empty PostitNote to add
    // to our model so we can use it with our form
    public User() {
    }
 
    public User(String firstName, String lastName, String date, String userName, String soberDate, String password)  {
        this.firstName = firstName;
        this.lastName = lastName;
        this.date = date;
        this.userName = userName;
        this.soberDate = soberDate;
        this.password = password;
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
    
    public String getSoberDate() {
    	return this.soberDate;
    }
    
    public void setSoberDate(String soberDate) {
    	this.soberDate = soberDate;
    }
    
    public String getPassword() {
    	return this.password;
    }
    
    public void setPassword(String password) {
    	this.password = password;
    }
    
    
 
}