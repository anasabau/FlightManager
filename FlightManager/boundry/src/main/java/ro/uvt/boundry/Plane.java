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
import ro.uvt.controller.beans.PlaneBean;

/**
 *
 * @author Anastasia
 */
@Named("plane")
@Data
@SessionScoped
public class Plane implements Serializable {

    @Inject
    private PlaneBean planeBean;
    
    @Inject
    private CompanyBean companyBean;

    private ro.uvt.entity.Plane entity = new ro.uvt.entity.Plane();

    private List<ro.uvt.entity.Plane> planeList;
    
    private Map<Long,ro.uvt.entity.Company> companies = new HashMap<>();

    public void submit() {

    }

    public void clear() {
        entity.setModel("");
        entity.setNr_sits(0);
        entity.setRegistration_id("");
        entity.setCompany_id(null);

    }

    @PostConstruct
    public void init() {
        planeList = planeBean.findAll();
        
        for(ro.uvt.entity.Company c : companyBean.findAll()){
            companies.put(c.getId(), c);
        }
        ro.uvt.entity.Company com = companies.get(1L); 
        entity.setCompany_id(com);
    }

    public void onRowEdit(RowEditEvent event) {
        planeBean.update((ro.uvt.entity.Plane) event.getObject());
    }

    public void onRowDelete(ro.uvt.entity.Plane plane) {
        planeBean.removeById(plane.getId());
    }
    
  

}
