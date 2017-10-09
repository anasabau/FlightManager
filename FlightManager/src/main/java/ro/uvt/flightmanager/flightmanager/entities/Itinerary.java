package ro.uvt.flightmanager.flightmanager.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author Dan
 */
@Entity
@Data
@NoArgsConstructor
public class Itinerary {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    private String name;

    public Itinerary(String name) {
        this.name = name;
    }
    
   
}
