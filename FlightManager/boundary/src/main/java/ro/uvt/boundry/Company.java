package ro.uvt.boundry;

import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.faces.view.ViewScoped;
import javax.inject.Inject;
import javax.inject.Named;
import lombok.Data;
import org.primefaces.event.CellEditEvent;
import ro.uvt.controller.beans.CompanyBean;

/**
 * @author dan
 */
@Named("company")
@Data
@ViewScoped
public class Company implements Serializable {

    @Inject
    private CompanyBean companyBean;

    private List<ro.uvt.entity.Company> companyList;

    private ro.uvt.entity.Company entity = new ro.uvt.entity.Company();
    
    private ro.uvt.entity.Company selctedCompany;

    @PostConstruct
    public void init() {

        companyList = companyBean.findAll();
    }

    public void clear() {
        entity.setName("");
        entity.setCountry("");
        entity.setHeadquarters("");
    }

    public void submit() {
        companyBean.create(entity);
        entity = new ro.uvt.entity.Company();

    }

    public void onCellEdit(CellEditEvent event) {
        companyBean.update((ro.uvt.entity.Company) companyList.get(event.getRowIndex()));
    }

    public void onRowDelete() {
        if(selctedCompany != null){
            companyList.remove(selctedCompany);
            companyBean.setActive(selctedCompany, false);
        }
    }
}
