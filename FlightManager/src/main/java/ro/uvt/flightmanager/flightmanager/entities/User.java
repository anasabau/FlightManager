package ro.uvt.flightmanager.flightmanager.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author Anastasia
 */

@Entity
@Data
@NoArgsConstructor
public class User {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    private String first_name;
    
    private String last_name;
    
    private String username;
    
    private String password;
    
    @OneToOne
    private Role role_id;
    
    @OneToOne
    private Company company_id;
    
    private boolean is_active = true;

    public User(String first_name, String last_name, String username, String password, Role role_id, Company company_id) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.username = username;
        this.password = password;
        this.role_id = role_id;
        this.company_id = company_id;
    }
    
    
    
}
