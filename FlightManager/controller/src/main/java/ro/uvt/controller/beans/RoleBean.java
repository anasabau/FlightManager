package ro.uvt.controller.beans;

import java.util.List;
import javax.ejb.Stateless;
import javax.inject.Inject;
import ro.uvt.entity.Roles;
import ro.uvt.entity.dao.Active;

/**
 *
 * @author dan
 */


@Stateless
public class RoleBean {
    
    @Inject
    private Active dao;
    
    private final Class<Roles> type = Roles.class;
    
    public void create(Roles role){
        dao.create(role);
    }
    
    public void update(Roles role){
        dao.update(role);
    }
    
    /*
    public void remove(Roles role){
        dao.remove(role);
    }
    */
    
    public void removeById(long id){
        dao.removeById(type, id);
    }
    
    public Roles findById(long id){
        return dao.findById(type, id);
    }
    
    public List<Roles> findAll(){
        return dao.findAll(type);
    }
    
    public long count(){
        return dao.count(type);
    }
 
    public void setActive(Roles role, boolean is_active){
        dao.setActive(type, role, is_active);
    }
    
}
