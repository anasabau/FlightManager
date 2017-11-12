
package ro.uvt.boundry;

import javax.inject.Named;
import lombok.Data;

/**
 *
 * @author dan
 */
@Named("auth")
@Data
public class Authentification {
    
    private String username;
    
    private String password;
    
    
    private String test = "works!";
    
}
