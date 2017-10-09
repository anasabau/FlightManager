package ro.uvt.flightmanager.flightmanager.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author Anastasia
 */

@Entity
@Data
@NoArgsConstructor
public class Airport {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    private String name;
    
    private String city;
    
    private String country;
    
    private boolean is_active = true;

    public Airport(String name, String city, String country) {
        this.name = name;
        this.city = city;
        this.country = country;
    }
  
}
