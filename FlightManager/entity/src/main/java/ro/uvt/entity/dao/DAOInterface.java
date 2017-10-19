package ro.uvt.entity.dao;

import ro.uvt.entity.Persistent;
import java.util.List;
import javax.ejb.Remote;

/**
 *
 * @author Anastasia
 * @param <E> the entity type that will be handled 
 * @param <K> the type of the entity primary key
 */
@Remote
public interface DAOInterface<E extends Persistent,K> {

    void create(E entity);

    void update(E entity);

    void remove(E entity);

    void removeById(K id);

    E findById(K id);
    
    List<E> findAll();

    int count();
}
