package ro.uvt.entity;

import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import lombok.Data;
import lombok.NoArgsConstructor;
import ro.uvt.entity.dao.Changeable;



@Entity
@Data
@NoArgsConstructor
public class Company implements Changeable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(nullable = false)
    private String comp_id;
    
    @Column(nullable = false)
    private String name;
    
    @Column(nullable = false)
    private String country;
    
    @Column(nullable = false)
    private String headquarters;
    
    private boolean is_active = true;
    
    /*
    This field is not part of the Company class entity,
    but is used to create a join table between Company and Airport
    thus it is not part of the class constructor
    */
    @ManyToMany(mappedBy = "companies")
    private Set<Airport> airports;

    public Company(String comp_id, String name, String country, String headquarters) {
        this.name = name;
        this.country = country;
        this.headquarters = headquarters;
    }

    @Override
    public void setActive(boolean is_active) {
        this.is_active = is_active;
    }
    
    @Override
    public String toString(){
        return comp_id;
    }
    
}
