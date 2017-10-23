package ro.uvt.controller.beans;

import java.util.List;
import javax.ejb.Stateless;
import javax.inject.Inject;
import ro.uvt.entity.Company;
import ro.uvt.entity.dao.Active;

/**
 *
 * @author Anastasia
 */

@Stateless
public class CompanyBean {
    
    @Inject
    private Active active;
    
    private final Class<Company> TYPE = Company.class;
    
    public void create(Company company) {
        active.create(company);
    }
    
    public void update(Company company) {
        active.update(company);
    }
    
    public void remove(Company company) {
        active.remove(company);
    }
    
    public void removeId(long id) {
        active.removeById(TYPE, id);
    }
    
    public List<Company> findAll() {
        return active.findAll(TYPE);
    }
    
    public Company findId(long id) {
        return active.findById(TYPE, id);
    }
    
    public long count() {
        return active.count(TYPE);
    }
    
    public void setActive(Company company, boolean bool) {
        active.setActive(TYPE, company, bool);
    }
}
