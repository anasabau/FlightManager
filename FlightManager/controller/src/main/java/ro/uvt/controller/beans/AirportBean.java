package ro.uvt.controller.beans;

import java.util.List;
import javax.ejb.Stateless;
import javax.inject.Inject;
import ro.uvt.entity.Airport;
import ro.uvt.entity.dao.Stateful;

/**
 *
 * @author dan
 */
@Stateless
public class AirportBean {

    @Inject
    private Stateful dao;

    private final Class<Airport> TYPE = Airport.class;

    public void create(Airport airport) {
        dao.create(airport);
    }

    public void update(Airport airport) {
        dao.update(airport);
    }

    /*
     public void remove(Airport airport){
     dao.remove(airport);
     }
     */
    public void removeById(long id) {
        dao.removeById(TYPE, id);
    }

    public List<Airport> findAll() {
        return dao.findAll(TYPE);
    }

    public Airport findById(long id) {
        return dao.findById(TYPE, id);
    }

    public long count() {
        return dao.count(TYPE);
    }

    public void setActive(Airport airport, boolean bool) {
        dao.setActive(TYPE, airport, bool);
    }
}
