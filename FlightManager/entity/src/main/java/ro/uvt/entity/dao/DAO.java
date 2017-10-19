package ro.uvt.entity.dao;

import ro.uvt.entity.Persistent;
import java.util.List;
import javax.ejb.Remote;
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
public class DAO<E extends Persistent,K> implements DAOInterface<E,K> {

    @PersistenceContext
    private  EntityManager em;
    
    private final Class<E> type;
    
    
    public DAO(Class<E> type){
        this.type = type;
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
    public void removeById(K id) {
        em.remove(em.find(type, id));
    }

    @Override
    public E findById(K id) {
        return em.find(type, id);
    }

    @Override
    public List<E> findAll() {
        CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
        cq.select(cq.from(type));
        return em.createQuery(cq).getResultList();
    }

    @Override
    public int count() {
        CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
        Root<Persistent> rt = cq.from(type);
        cq.select(em.getCriteriaBuilder().count(rt));
        Query q = em.createQuery(cq);
        return ((Long) q.getSingleResult()).intValue();
    }

}
