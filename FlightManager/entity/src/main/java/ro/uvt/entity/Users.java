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

/**
 *
 * @author Anastasia
 */

@Entity
@Data
@NoArgsConstructor
public class Users implements Changeable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(nullable = false)
    private String first_name;
    
    @Column(nullable = false)
    private String last_name;
    
    @Column(nullable = false)
    private String username;
    
    @Column(nullable = false)
    private String password;
    
    @OneToOne
    private Roles role_id;
    
    @OneToOne
    private Company company_id;
    
    private boolean is_active = true;

    public Users(String first_name, String last_name, String username, String password, Roles role_id, Company company_id) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.username = username;
        this.password = password;
        this.role_id = role_id;
        this.company_id = company_id;
    }

    @Override
    public void setActive(boolean is_active) {
        this.is_active = is_active;
    }
    
    @Override
    public String toString(){
        return username; 
    }
    
}
