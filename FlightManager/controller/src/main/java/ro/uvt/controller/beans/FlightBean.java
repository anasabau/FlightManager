package ro.uvt.controller.beans;

import java.util.List;
import javax.ejb.Stateless;
import javax.inject.Inject;
import ro.uvt.entity.Flight;
import ro.uvt.entity.dao.Active;

/**
 *
 * @author Anastasia
 */
@Stateless
public class FlightBean {
    
    @Inject
    private Active dao;
    
    private final Class<Flight> TYPE = Flight.class;
    
    public void create(Flight flight){
        dao.create(flight);
    }
    
    public void update(Flight flight){
        dao.update(flight);
    }
    
    public void remove(Flight flight){
        dao.remove(flight);
    }
    
    public void removeById(long id){
        dao.removeById(TYPE, id);
    }
    
    public List<Flight> findAll(){
        return dao.findAll(TYPE);
    }
    
    public Flight findById(long id){
        return dao.findById(TYPE, id);
    }
    
    public long count(){
        return dao.count(TYPE);
    }
}