package ro.uvt.entity.dao;

/**
 *
 * @author dan
 */
public interface Stateful extends DAO{
    
    <E extends Changeable> void setActive(Class<E> type, E entity,  boolean isActive);
}
