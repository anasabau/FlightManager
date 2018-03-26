package ro.uvt.boundry;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct;
import javax.faces.view.ViewScoped;
import javax.inject.Inject;
import javax.inject.Named;
import lombok.Data;
import org.primefaces.event.CellEditEvent;
import ro.uvt.controller.beans.CompanyBean;
import ro.uvt.controller.beans.RoleBean;
import ro.uvt.controller.beans.UserBean;

/**
 *
 * @author Anastasia
 */
@Named("user")
@Data
@ViewScoped
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

    private ro.uvt.entity.Users selectedUser;

    @PostConstruct
    public void init() {
        userList = userBean.findAll();
        for (ro.uvt.entity.Company comp : companyBean.findAll()) {
            companies.put(comp.toString(), comp.getId());
        }

        for (ro.uvt.entity.Roles role : roleBean.findAll()) {
            roles.put(role.toString(), role.getId());
        }
    }

    public void clear() {
        entity.setFirst_name("");
        entity.setLast_name("");
        entity.setUsername("");
        entity.setPassword("");
        entity.setCompany_id(null);
        entity.setRole_id(null);

    }

    public void submit() {
        userBean.create(entity);
        userList.add(entity);
        entity = new ro.uvt.entity.Users();
    }

    public void onCellEdit(CellEditEvent event) {
        userBean.update((ro.uvt.entity.Users) userList.get(event.getRowIndex()));
    }

    public void onRowDelete() {
        if (selectedUser != null) {
            userList.remove(selectedUser);
            userBean.setActive(selectedUser, false);
            selectedUser = null;
        }
    }

    public void onCompanyChange() {
        Long id = Long.decode(companySelectedId);
        ro.uvt.entity.Company comp = companyBean.findById(id);
        entity.setCompany_id(comp);
    }

    public void onCompanyChange(ro.uvt.entity.Users user) {
        Long id = Long.decode(companySelectedId);
        ro.uvt.entity.Company comp = companyBean.findById(id);
        user.setCompany_id(comp);
    }

    public void onRoleChange() {
        Long id = Long.decode(roleSelectedId);
        ro.uvt.entity.Roles role = roleBean.findById(id);
        entity.setRole_id(role);
    }

    public void onRoleChange(ro.uvt.entity.Users user) {
        Long id = Long.decode(roleSelectedId);
        ro.uvt.entity.Roles role = roleBean.findById(id);
        user.setRole_id(role);
    }

}
