package ro.uvt.flightmanager.flightmanager.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author Dan
 */

@Entity
@Data
@NoArgsConstructor
public class Company {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    private String name;
    
    private String country;
    
    private String headquarters;
    
    private boolean is_active = true;

    public Company(String name, String country, String headquarters) {
        this.name = name;
        this.country = country;
        this.headquarters = headquarters;
        this.is_active = is_active;
    }
    
    
    
}
