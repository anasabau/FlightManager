package ro.uvt.entity;

import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import lombok.Data;
import lombok.NoArgsConstructor;
import ro.uvt.entity.dao.Changeable;



@Entity
@Data
@NoArgsConstructor
public  class Airport implements Changeable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(nullable = false)
    private String name;
    
    @Column(nullable = false)    
    private String city;
    
    @Column(nullable = false)
    private String country;
    
    private boolean is_active = true;
    
    @ManyToMany
    @JoinTable(
        name = "Airpot_Company",
        joinColumns =  @JoinColumn(name = "airport_id",  referencedColumnName = "id"),
        inverseJoinColumns =  @JoinColumn(name = "company_id", referencedColumnName = "id")
    )
    private Set<Company> companies;

    public Airport(String name, String city, String country) {
        this.name = name;
        this.city = city;
        this.country = country;
    }
    /*
      As noticed, it is not part of the Airport tabel and it is not
    required nor desiered in the Airport class constructor
    */

    @Override
    public void setActive(boolean is_active) {
        this.is_active = is_active;
    }

    @Override
    public String toString(){
        return name + " (citiy) " + city + " (country) " + country;
    }
  
}
