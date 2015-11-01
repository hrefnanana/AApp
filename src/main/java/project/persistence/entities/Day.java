package project.persistence.entities;
 
import javax.persistence.*;
 
/**
 * The class for the Postit Note itself.
 * The system generates a table schema based on this class for this entity.
 * Be sure to annotate any entities you have with the @Entity annotation.
 */
@Entity
@Table(name = "dayTable") // If you want to specify a table name, you can do so here
public class Day {
 
    // Declare that this attribute is the id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String date;
    private Boolean vakna7;
    private Boolean hugleida;
    private Boolean borda;
   
    // Notice the empty constructor, because we need to be able to create an empty PostitNote to add
    // to our model so we can use it with our form
    public Day() {
    }
 
    public Day(String date, Boolean vakna7,Boolean hugleida,Boolean borda) {
        this.date = date;
        this.vakna7 = vakna7;
        this.hugleida = hugleida;
        this.borda = borda;

    }
 
    public Long getId() {
        return id;
    }
 
    public void setId(Long id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }
 
    public void setDate(String date) {
        this.date = date;
    }
 
    public Boolean getVakna7() {
        return vakna7;
    }
 
    public void setVakna7(Boolean vakna7) {
        this.vakna7 = vakna7;
    }
   
    public Boolean getBorda() {
        return borda;
    }
 
    public void setBorda(Boolean borda) {
        this.borda = borda;
    }
   
    public Boolean getHugleida() {
        return hugleida;
    }
 
    public void setHugleida(Boolean hugleida) {
        this.hugleida = hugleida;
    }
   
 
    // This is for easier debug.
  //  @Override
    //public String toString() {
      //  return String.format(
        //        "Dagur[date=%s, vakna7=%b, borda=%b, hugleida=%b]",
          //      date, vakna7, borda, hugleida);
    //}
}