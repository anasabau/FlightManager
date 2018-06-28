package ro.uvt.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import lombok.Data;
import lombok.NoArgsConstructor;
import ro.uvt.entity.dao.Changeable;



@Entity
@Data
@NoArgsConstructor
public class Plane implements Changeable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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

    @Override
    public void setActive(boolean is_active) {
            this.is_active = is_active;
    }
    
    @Override
    public String toString(){
        return registration_id;
    }
}
