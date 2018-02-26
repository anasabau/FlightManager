package ro.uvt.boundry;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct;
import javax.enterprise.context.SessionScoped;
import javax.inject.Inject;
import javax.inject.Named;
import lombok.Data;
import org.primefaces.event.RowEditEvent;
import ro.uvt.controller.beans.CompanyBean;
import ro.uvt.controller.beans.RoleBean;
import ro.uvt.controller.beans.UserBean;

/**
 *
 * @author Anastasia
 */

@Named("user")
@Data
@SessionScoped
public class User implements Serializable {

    @Inject
    private UserBean userBean;

    @Inject
    private CompanyBean companyBean;

    @Inject
    private RoleBean roleBean;

    private ro.uvt.entity.Users entity = new ro.uvt.entity.Users();

    List<ro.uvt.entity.Users> userList;

    private Map<String, Long> companies = new HashMap<>();

    private Map<String, Long> roles = new HashMap<>();

    private String companySelectedId;

    private String roleSelectedId;

    public void submit() {
        entity.setCompany_id(companyBean.findById(Long.decode(companySelectedId)));
        entity.setRole_id(roleBean.findById(Long.decode(roleSelectedId)));
        userBean.create(entity);
        entity = new ro.uvt.entity.Users();
    }

    public void clear() {
        entity.setFirst_name("");
        entity.setLast_name("");
        entity.setUsername("");
        entity.setPassword("");
        entity.setCompany_id(null);
        entity.setRole_id(null);

    }

    @PostConstruct
    public void init() {
        userList = userBean.findAll();
        for (ro.uvt.entity.Company comp : companyBean.findAll()) {
            companies.put(comp.getName() + " (id " + comp.getId() + " )", comp.getId());
        }
        
        for (ro.uvt.entity.Roles role : roleBean.findAll()) {
            roles.put(role.getName() + " (id " + role.getId() + " )", role.getId());
        }
    }

    public void onRowEdit(RowEditEvent event) {
        userBean.update((ro.uvt.entity.Users) event.getObject());
    }

    public void onRowDelete(ro.uvt.entity.Users user) {
        userBean.setActive(user, false);
    }

}
