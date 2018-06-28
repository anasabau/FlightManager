
package ro.uvt.entity.dao;

import java.util.List;
import javax.enterprise.context.Dependent;


@Dependent
public class StatefulDAO extends BaseDAO implements  Stateful{

    @Override
    public <E extends Changeable> void setActive(Class<E> type, E entity, boolean isActive) {
       entity.setActive(isActive);
       em.persist(em.merge(entity));
       
    }

    @Override
    public <E extends Persistent> List<E> findAll(Class<E> type) {
       return em.createQuery("SELECT t FROM " + type.getSimpleName() + " t WHERE t.is_active=1").getResultList();
    }
    
    
    
}
