package ro.uvt.flightmanager.flightmanager.entities;

import static com.sun.org.apache.xerces.internal.util.PropertyState.is;
import static java.lang.System.in;
import java.util.Set;
import static javafx.beans.binding.Bindings.not;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import lombok.Data;
import lombok.NoArgsConstructor;
import static org.eclipse.persistence.expressions.ExpressionOperator.As;

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
    /*
      As noticed, it is not part of the Airport tabel and it is not
    required nor desiered in the Airport class constructor
    */
    @ManyToMany
    @JoinTable(
        name = "Airpot_Company",
        joinColumns = 
                @JoinColumn(name = "airport_id",  referencedColumnName = "id"),
        inverseJoinColumns = 
                @JoinColumn(name = "company_id", referencedColumnName = "id")
    )
    Set<Company> companies;
  
}
