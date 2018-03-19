package ro.uvt.boundry;

import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.faces.view.ViewScoped;
import javax.inject.Inject;
import javax.inject.Named;
import lombok.Data;
import org.primefaces.event.CellEditEvent;
import ro.uvt.controller.beans.RoleBean;

/**
 *
 * @author Anastasia
 */
@Named("role")
@Data
@ViewScoped
public class Role implements Serializable {

    @Inject
    private RoleBean roleBean;

    List<ro.uvt.entity.Roles> roleList;

    private ro.uvt.entity.Roles entity = new ro.uvt.entity.Roles();

    private ro.uvt.entity.Roles selectedRole;

    @PostConstruct
    public void init() {
        
        roleList = roleBean.findAll();
    }

    public void clear() {
        entity.setName("");
    }
    
    public void submit() {
        roleBean.create(entity);
        roleList.add(entity);
        entity = new ro.uvt.entity.Roles();
    }

    

    public void onCellEdit(CellEditEvent event) {
        roleBean.update((ro.uvt.entity.Roles) roleList.get(event.getRowIndex()));
    }

    public void onRowDelete() {
        if(selectedRole != null){
            roleList.remove(selectedRole);
            roleBean.setActive(selectedRole, false);
            selectedRole = null;
        }
    }

}
