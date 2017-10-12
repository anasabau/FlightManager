package ro.uvt.dao;

import java.util.List;

/**
 *
 * @author Anastasia
 * @param <E> the type of entity we are working with
 */

public interface DAOInterface<E> {

    void create(E entity);

    void update(E entity);

    void remove(E entity);

    void removeById(long id);

    E findById(long id);
    
    List<E> findAll();

    int count();
}
