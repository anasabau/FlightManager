package ro.uvt.flightmanager.flightmanager.entities;

import java.util.Set;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
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

    @ManyToMany
    @JoinTable(name = "Itinerary_Flight",
            joinColumns = @JoinColumn(name = "itinerary_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "flight_id", referencedColumnName = "id")
    )
    Set<Flight> flights;
}
