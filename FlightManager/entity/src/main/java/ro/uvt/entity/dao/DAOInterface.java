package ro.uvt.entity.dao;

import ro.uvt.entity.Persistent;
import java.util.List;
import javax.ejb.Remote;

/**
 *
 * @author Anastasia
 */
@Remote
public interface DAOInterface {

    void create(Persistent entity);

    void update(Persistent entity);

    void remove(Persistent entity);

    void removeById(long id);

    Persistent findById(long id);
    
    List<Persistent> findAll();

    int count();
}
