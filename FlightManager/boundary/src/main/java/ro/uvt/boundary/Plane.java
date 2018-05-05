package ro.uvt.boundary;

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
import ro.uvt.controller.beans.PlaneBean;

/**
 *
 * @author Anastasia
 */
@Named("plane")
@Data
@ViewScoped
public class Plane implements Serializable {

    @Inject
    private PlaneBean planeBean;

    @Inject
    private CompanyBean companyBean;

    private ro.uvt.entity.Plane entity = new ro.uvt.entity.Plane();

    private List<ro.uvt.entity.Plane> planeList;

    private Map<String, Long> companies = new HashMap<>();

    private String selectedCompany;

    private ro.uvt.entity.Plane selectedPlane;

    public void submit() {
        //entity.setCompany_id(companyBean.findById(Long.decode(selectedCompany)));

        planeBean.create(entity);
        planeList.add(entity);
        entity = new ro.uvt.entity.Plane();
        clear();
     }

    public void clear() {
        entity.setModel("");
        entity.setNr_sits(0);
        entity.setRegistration_id("");
        entity.setCompany_id(null);
        selectedCompany = "";
    }

    @PostConstruct
    public void init() {
        planeList = planeBean.findAll();
        for (ro.uvt.entity.Company comp : companyBean.findAll()) {
            companies.put(comp.getName() + " (id " + comp.getId() + " )", comp.getId());
        }
    }

    public void onCellEdit(CellEditEvent event) {
        planeBean.update((ro.uvt.entity.Plane) planeList.get(event.getRowIndex()));
    }

    public void onRowDelete() {
        if (selectedPlane != null) {
            planeBean.setActive(selectedPlane, false);
            planeList.remove(selectedPlane);
            selectedPlane = null;
        }
    }

    public void onCompanyChange() {
        Long id = Long.decode(selectedCompany);
        ro.uvt.entity.Company comp = companyBean.findById(id);
        entity.setCompany_id(comp);
    }

    public void onCompanyChange(ro.uvt.entity.Plane plane) {
        Long id = Long.decode(selectedCompany);
        ro.uvt.entity.Company comp = companyBean.findById(id);
        plane.setCompany_id(comp);
    }
}
