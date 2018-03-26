package ro.uvt.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import lombok.Data;
import lombok.NoArgsConstructor;
import ro.uvt.entity.dao.Changeable;

/**
 *
 * @author Anastasia
 */

@Entity
@Data
@NoArgsConstructor
public class Roles implements Changeable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(nullable = false)
    private String name;
    
    
    private boolean is_active = true;
    
    public Roles(String name) {
        this.name = name;
    }

    @Override
    public void setActive(boolean is_active) {
        this.is_active = is_active;
    }
        
}
