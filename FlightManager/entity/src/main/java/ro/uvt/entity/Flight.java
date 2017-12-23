package ro.uvt.entity;

import java.time.LocalDate;
import ro.uvt.entity.dao.Persistent;
import java.util.Set;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author Dan
 */

@Entity
@Data
@NoArgsConstructor
public class Flight implements Persistent {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @OneToOne
    private Plane plane_id;
    
    @OneToOne
    private Airport departure_airport;
    
    @OneToOne
    private Airport arival_airport;
    
  
    private LocalDate departure_time;
    
 
    private LocalDate arival_time;
    
    private FlightState state = FlightState.SATIONED;    
    
    @OneToOne
    private Users pilot;
    
    @ManyToMany(mappedBy = "flights")
    private Set<Itinerary> itineraries;
    
    public Flight(Plane plane_id, Airport departure_airport, Airport arival_airport, LocalDate departure_time, Users pilot) {
        this.plane_id = plane_id;
        this.departure_airport = departure_airport;
        this.arival_airport = arival_airport;
        this.departure_time = departure_time;
        this.pilot = pilot;
    }
}
