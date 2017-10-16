package ro.uvt.entity.dao;

import java.util.List;
import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import ro.uvt.entity.Persistent;

/**
 *
 * @author Anastasia
 */

@Stateless
public class DAO implements DAOInterface {

    @PersistenceContext
    private EntityManager em;

    @Override
    public void create(Persistent entity) {
        em.persist(entity);
    }

    @Override
    public void update(Persistent entity) {
        em.persist(em.merge(entity));
    }
    
    @Override
    public void remove(Persistent entity) {
        em.remove(entity);
    }

    @Override
    public void removeById(long id) {
        em.remove(em.find(Persistent.class, id));
    }

    @Override
    public Persistent findById(long id) {
        return em.find(Persistent.class, id);
    }

    @Override
    public List<Persistent> findAll() {
        CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
        cq.select(cq.from(Persistent.class));
        return em.createQuery(cq).getResultList();
    }

    @Override
    public int count() {
        CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
        Root<Persistent> rt = cq.from(Persistent.class);
        cq.select(em.getCriteriaBuilder().count(rt));
        Query q = em.createQuery(cq);
        return ((Long) q.getSingleResult()).intValue();
    }

}
