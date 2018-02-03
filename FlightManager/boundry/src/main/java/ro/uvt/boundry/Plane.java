package ro.uvt.boundry;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct;
import javax.enterprise.context.RequestScoped;
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
@RequestScoped
public class Plane implements Serializable {

    @Inject
    private PlaneBean planeBean;
    
    @Inject
    private CompanyBean companyBean;

    private ro.uvt.entity.Plane entity = new ro.uvt.entity.Plane();

    private List<ro.uvt.entity.Plane> planeList;
    
    private Map<String,Long> companies = new HashMap<>();
    
    private String selectedId;
    
    public void submit() {
        entity.setCompany_id(companyBean.findById(Long.decode(selectedId)));
        planeBean.create(entity);
        entity = new ro.uvt.entity.Plane();
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
        for(ro.uvt.entity.Company comp :companyBean.findAll()){
            companies.put(comp.getName() + " (id " + comp.getId() + " )", comp.getId());
        }
    }

    public void onRowEdit(RowEditEvent event) {
        planeBean.update((ro.uvt.entity.Plane) event.getObject());
    }

    public void onRowDelete(ro.uvt.entity.Plane plane) {
        planeBean.removeById(plane.getId());
    }
    
  

}
