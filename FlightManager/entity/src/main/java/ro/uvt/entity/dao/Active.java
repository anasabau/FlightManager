package ro.uvt.entity.dao;

/**
 *
 * @author dan
 */
public interface Active extends DAOInterface{
    
    <E extends Persistent> void setActive(Class<E> type, E entity,  boolean isActive);
}
