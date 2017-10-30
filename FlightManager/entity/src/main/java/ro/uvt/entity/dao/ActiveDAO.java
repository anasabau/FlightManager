/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.uvt.entity.dao;

import javax.enterprise.context.Dependent;

/**
 *
 * @author dan
 */
@Dependent
public class ActiveDAO extends DAO implements  Active{

    @Override
    public <E extends Activable> void setActive(Class<E> type, E entity, boolean isActive) {
       entity.setActive(isActive);
       em.persist(em.merge(entity));
       
    }
    
}
