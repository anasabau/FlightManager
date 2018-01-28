package ro.uvt.entity.dao;

import java.util.List;
import javax.enterprise.context.Dependent;
import javax.inject.Named;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

/**
 *
 * @author Anastasia
 */
@Dependent
@Named("BaseDAO")
public class DAO implements DAOInterface {

    @PersistenceContext
    protected EntityManager em;

    @Override
    public <E extends Persistent> void create(E entity) {
        em.persist(entity);
    }

    @Override
    public <E extends Persistent> void update(E entity) {
        em.persist(em.merge(entity));
    }

    @Override
    public <E extends Persistent> void remove(E entity) {
        if (!em.contains(entity)) {
            entity = em.merge(entity);
        }

        em.remove(entity);
    }

    @Override
    public <E extends Persistent, K> void removeById(Class<E> type, K id) {
        em.remove(em.find(type, id));
    }

    @Override
    public <E extends Persistent, K> E findById(Class<E> type, K id) {
        return em.find(type, id);
    }

    @Override
    public <E extends Persistent> List<E> findAll(Class<E> type) {
        CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
        cq.select(cq.from(type));
        return em.createQuery(cq).getResultList();
    }

    @Override
    public <E extends Persistent> int count(Class<E> type) {
        CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
        Root<E> rt = cq.from(type);
        cq.select(em.getCriteriaBuilder().count(rt));
        Query q = em.createQuery(cq);
        return ((Long) q.getSingleResult()).intValue();
    }

}
