package ro.uvt.entity.dao;

import java.util.List;

/**
 *
 * @author Anastasia
 */

public interface DAOInterface {

    <E extends Persistent> void create(E entity);

    <E extends Persistent> void update(E entity);

   // To discuss if needed at all <E extends Persistent> void remove(E entity);

    <E extends Persistent ,K> void removeById(Class<E> type, K id);

    <E extends Persistent, K> E findById(Class<E> type, K id);

    <E extends Persistent> List<E> findAll(Class<E> type);

    <E extends Persistent> int count(Class<E> type);
    
}
