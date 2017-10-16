package ro.uvt.entity;

import java.util.Date;
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
    @GeneratedValue(strategy = GenerationType.AUTO)
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
    
    private FlightState state = FlightState.SATIONED;    
    
    @OneToOne
    private Users pilot;
    
    @ManyToMany(mappedBy = "flights")
    private Set<Itinerary> itineraries;
    
    public Flight(Plane plane_id, Airport departure_airport, Airport arival_airport, Date departure_time, Users pilot) {
        this.plane_id = plane_id;
        this.departure_airport = departure_airport;
        this.arival_airport = arival_airport;
        this.departure_time = departure_time;
        this.pilot = pilot;
    }
}
