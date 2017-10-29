package ro.uvt.controller.beans;

import javax.ejb.Stateless;
import javax.inject.Inject;
import ro.uvt.entity.Users;
import ro.uvt.entity.dao.Active;

/**
 *
 * @author dan
 */

@Stateless
public class UserBean {
    
    @Inject
    private Active dao;
    
    private final Class<Users> type = Users.class;
    
    public void create(Users user){
        dao.create(user);
    }
    
    public void update(Users user){
        dao.update(user);
    }
    
    public void remove(Users user){
        dao.remove(user);
    }
    
    public void removeById(long id){
        dao.removeById(type, id);
    }
    
    public long count(){
        return dao.count(type);
    }
    
    public void setActive(Users user, boolean is_active){
        dao.setActive(type, user, is_active);
    }
}
