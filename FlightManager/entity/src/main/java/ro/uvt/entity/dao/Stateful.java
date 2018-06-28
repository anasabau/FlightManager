package ro.uvt.entity.dao;


public interface Stateful extends DAO{
    
    <E extends Changeable> void setActive(Class<E> type, E entity,  boolean isActive);
}
