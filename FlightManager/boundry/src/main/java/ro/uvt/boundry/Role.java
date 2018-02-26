package ro.uvt.boundry;

import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.enterprise.context.SessionScoped;
import javax.inject.Inject;
import javax.inject.Named;
import lombok.Data;
import org.primefaces.event.RowEditEvent;
import ro.uvt.controller.beans.RoleBean;

/**
 *
 * @author Anastasia
 */

@Named("role")
@Data
@SessionScoped
public class Role implements Serializable{
    
    @Inject
    private RoleBean roleBean;
    
    private ro.uvt.entity.Roles entity = new ro.uvt.entity.Roles();
    
    List<ro.uvt.entity.Roles> roleList;
    
    public void submit() {
        roleBean.create(entity);
        entity = new ro.uvt.entity.Roles();
    }
    
     public void clear() {
        entity.setName("");
     }
     
     @PostConstruct
    public void init() {
       roleList = roleBean.findAll();
    }
    
     public void onRowEdit(RowEditEvent event) {
        roleBean.update((ro.uvt.entity.Roles) event.getObject());
    }

    public void onRowDelete(ro.uvt.entity.Roles role) {
        roleBean.setActive(role, false);
    }
    
}
