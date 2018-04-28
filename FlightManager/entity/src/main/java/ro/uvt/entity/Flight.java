package ro.uvt.entity;


import java.util.Date;
import ro.uvt.entity.dao.Persistent;
import java.util.Set;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
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
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @OneToOne
    private Plane plane_id;
    
    @OneToOne
    private Airport departure_airport;
    
    @OneToOne
    private Airport arival_airport;
    
    @Temporal(TemporalType.TIMESTAMP)
    private Date departure_time;
    
    @Temporal(TemporalType.TIMESTAMP)
    private Date arival_time;
    
    private FlightState flightState;
    
    @OneToOne
    private Users pilot;
    
    @ManyToMany(mappedBy = "flights")
    private Set<Itinerary> itineraries;
    
    public Flight(Plane plane_id, Airport departure_airport, Airport arival_airport, Date departure_time, Date arival_time, Users pilot) {
        this.plane_id = plane_id;
        this.departure_airport = departure_airport;
        this.arival_airport = arival_airport;
        this.departure_time = departure_time;
        this.arival_time = arival_time;
        this.pilot = pilot;
        
        this.flightState = FlightState.SATIONED;  
    }
    
    @Override
    public String toString(){
        return departure_airport.getName() + "(" + departure_airport.getCity() + ")" + " - " + arival_airport.getName() + "(" + arival_airport.getCity() + ")" + " (id) " + id;
    }
    
    public String FlightStateName(){
        if(flightState == null) return flightState.SATIONED.name();
        return flightState.name();
    }
}
