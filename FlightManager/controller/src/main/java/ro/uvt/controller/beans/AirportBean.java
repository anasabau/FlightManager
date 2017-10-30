package ro.uvt.controller.beans;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.inject.Qualifier;
import ro.uvt.entity.Airport;
import ro.uvt.entity.dao.Active;

/**
 *
 * @author dan
 */
@Stateless
public class AirportBean {
    
    @Inject
    private Active dao;
    
    
    private final Class<Airport> TYPE = Airport.class;
    
    public void create(Airport airport){
        dao.create(airport);
    }
    
    public void update(Airport airport){
        dao.update(airport);
    }
    
    public void remove(Airport airport){
        dao.remove(airport);
    }
    
    public void removeById(long id){
        dao.removeById(TYPE, id);
    }
    
    public List<Airport> findAll(){
        return dao.findAll(TYPE);
    }
    
    public Airport findById(long id){
        return dao.findById(TYPE, id);
    }
    
    
    public long count(){
       return dao.count(TYPE);
    }
}
