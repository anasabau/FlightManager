package ro.uvt.controller.beans;

import java.util.List;
import javax.ejb.Stateless;
import javax.inject.Inject;
import ro.uvt.entity.Plane;
import ro.uvt.entity.dao.Active;

/**
 *
 * @author Anastasia
 */
@Stateless
public class PlaneBean {
     
    @Inject 
    private Active dao;
    
    private final Class<Plane> TYPE = Plane.class;
    
    public void create(Plane plane) {
        dao.create(plane);
    }
    
    public void update(Plane plane) {
        dao.update(plane);
    }
    
    public void remove(Plane plane) {
        dao.remove(plane);
    }
    
    public void removeById(long id) {
        dao.removeById(TYPE, id);
    }
    
    public List<Plane> findAll() {
        return dao.findAll(TYPE);
    }
    
    public Plane findById(long id) {
        return dao.findById(TYPE, id);
    }
    
    public long count() {
        return dao.count(TYPE);
    }
    
    
    public void setActive(Plane plane, boolean isActive){
        plane.setActive(isActive);
    }
}
