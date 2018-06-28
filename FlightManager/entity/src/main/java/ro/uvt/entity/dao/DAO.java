package ro.uvt.entity.dao;

import java.util.List;



public interface DAO {

    <E extends Persistent> void create(E entity);

    <E extends Persistent> void update(E entity);

    <E extends Persistent ,K> void removeById(Class<E> type, K id);

    <E extends Persistent, K> E findById(Class<E> type, K id);

    <E extends Persistent> List<E> findAll(Class<E> type);

    <E extends Persistent> int count(Class<E> type);
    
}
