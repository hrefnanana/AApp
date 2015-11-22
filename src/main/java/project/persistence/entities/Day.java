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
    private Boolean stundvisi;
    private Boolean tiltekt;
    private Boolean aabok;
    private Boolean sofa;
    private Boolean dagbok;
    private Boolean bad;
    private Boolean fundur;
    private Boolean kurteis; 
    private Boolean hreyfing;
    

    
    // Notice the empty constructor, because we need to be able to create an empty PostitNote to add
    // to our model so we can use it with our form
    public Day() {
    }
 
    public Day(String date, Boolean vakna7,Boolean hugleida,Boolean borda) {
        this.date = date;
        this.vakna7 = vakna7;
        this.hugleida = hugleida;
        this.borda = borda;
        this.stundvisi=stundvisi;
        this.tiltekt=tiltekt;
        this.aabok=aabok;
        this.sofa=sofa;
        this.dagbok=dagbok;
        this.bad=bad;
        this.fundur=fundur;
        this.kurteis=kurteis;
        this.hreyfing=hreyfing;

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
    
    public Boolean getStundvisi() {
        return stundvisi;
    }
 
    public void setStundvisi(Boolean stundvisi) {
        this.stundvisi = stundvisi;
    }
    
    public Boolean getTiltekt() {
        return tiltekt;
    }
 
    public void setTiltekt(Boolean tiltekt) {
        this.tiltekt = tiltekt;
    }
    
    public Boolean getAabok() {
        return aabok;
    }
 
    public void setAabok(Boolean aabok) {
        this.aabok = aabok;
    }
    
    public Boolean getSofa() {
        return sofa;
    }
 
    public void setSofa(Boolean sofa) {
        this.sofa = sofa;
    }
   
    public Boolean getDagbok() {
        return dagbok;
    }
 
    public void setDagbok(Boolean dagbok) {
        this.dagbok = dagbok;
    }
    
    public Boolean getbad() {
        return bad;
    }
 
    public void setbad(Boolean bad) {
        this.bad = bad;
    }
    
    public Boolean getFundur() {
        return fundur;
    }
 
    public void setFundur(Boolean fundur) {
        this.fundur = fundur;
    }
    
    public Boolean getKurteis() {
        return kurteis;
    }
 
    public void setKurteis(Boolean kurteis) {
        this.kurteis = kurteis;
    }
    
    public Boolean getHreyfing() {
        return hreyfing;
    }
 
    public void setHreyfing(Boolean hreyfing) {
        this.hreyfing = hreyfing;
    }
    
    
    public int getFinished() {
    	int n = 0;
    	
    	if (this.borda) n++;
    	if (this.vakna7) n++;
    	if (this.hugleida) n++;
    	if (this.stundvisi) n++;
    	if (this.tiltekt) n++;
    	if (this.aabok) n++;
    	if (this.sofa) n++;
    	if (this.dagbok) n++;
    	if (this.bad) n++;
    	if (this.fundur) n++;
    	if (this.kurteis) n++;
    	if (this.hreyfing) n++;
    	
    	return n;
    }
   
 
    // This is for easier debug.
  //  @Override
    //public String toString() {
      //  return String.format(
        //        "Dagur[date=%s, vakna7=%b, borda=%b, hugleida=%b]",
          //      date, vakna7, borda, hugleida);
    //}
}