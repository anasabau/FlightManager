package ro.uvt.entity;

import java.util.Set;
import ro.uvt.entity.dao.Persistent;
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

/**
 *
 * @author Dan
 */
@Entity
@Data
@NoArgsConstructor
public class Itinerary implements Persistent {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;
    
    @ManyToMany
    @JoinTable(name = "Itinerary_Flight",
            joinColumns = @JoinColumn(name = "itinerary_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "flight_id", referencedColumnName = "id")
    )
    private Set<Flight> flights;

    public Itinerary(String name) {
        this.name = name;
    }
}
