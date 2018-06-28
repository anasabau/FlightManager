package ro.uvt.controller.beans;

import java.util.List;
import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.inject.Named;
import ro.uvt.entity.Itinerary;
import ro.uvt.entity.dao.DAO;


/**
*  EJB Managed bean for the Itinerary entity
* wraps DAO methods and provides intermediary layer to be injected
*/
@Stateless
public class ItineraryBean {
    
    @Inject
    @Named("BaseDAO")
    private DAO dao;
    
    // The type of the entity we are dealing with
    // private final constant, known at compile time
    private final Class<Itinerary> TYPE = Itinerary.class;
    
    public void create(Itinerary itinerary){
        dao.create(itinerary);
    }
    
    public void update(Itinerary itinerary){
        dao.update(itinerary);
    }
    
    /*
    public void remove(Itinerary itinerary){
        dao.remove(itinerary);
    }
    */
    
    public void removeById(long id){
        dao.removeById(TYPE, id);
    }
    
    public List<Itinerary> findAll(){
        return dao.findAll(TYPE);
    }
    
    public Itinerary findById(long id){
        return dao.findById(TYPE, id);
    }
    
    public long count(){
        return dao.count(TYPE);
    }
    
}
