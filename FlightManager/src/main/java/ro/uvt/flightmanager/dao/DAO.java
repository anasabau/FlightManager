package ro.uvt.flightmanager.dao;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

/**
 *
 * @author Anastasia
 */

@Stateless
public class DAO<E> implements DAOInterface<E> {

    @PersistenceContext
    EntityManager em;
    
    public final Class<E> entityClass;
    

    public DAO(Class<E> entityClass) {
        this.entityClass = entityClass;
    }
    
    public DAO(){
        this.entityClass = null;
    }

    @Override
    public void create(E entity) {
        em.persist(entity);
    }

    @Override
    public void update(E entity) {
        em.persist(em.merge(entity));
    }
    
    @Override
    public void remove(E entity) {
        em.remove(entity);
    }

    @Override
    public void removeById(long id) {
        em.remove(em.find(entityClass, id));
    }

    @Override
    public E findById(long id) {
        return em.find(entityClass, id);
    }

    @Override
    public List<E> findAll() {
        CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
        cq.select(cq.from(entityClass));
        return em.createQuery(cq).getResultList();
    }

    @Override
    public int count() {
        CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
        Root<E> rt = cq.from(entityClass);
        cq.select(em.getCriteriaBuilder().count(rt));
        Query q = em.createQuery(cq);
        return ((Long) q.getSingleResult()).intValue();
    }

}
