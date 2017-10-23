package ro.uvt.entity;

import ro.uvt.entity.dao.Persistent;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
public class Plane implements Persistent {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
            
    @Column(nullable = false)
    private String model;
    
    @Column(nullable = false)
    private String registration_id;
    
    @OneToOne
    private Company company_id;
    
    private int nr_sits;
    
    private boolean is_active = true;

    public Plane(String model, String registration_id, Company company_id, int nr_sits) {
        this.model = model;
        this.registration_id = registration_id;
        this.company_id = company_id;
        this.nr_sits = nr_sits;
    }
    
    
}
