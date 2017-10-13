/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.uvt.business;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import ro.uvt.entity.Itinerary;
/**
 *
 * @author Dan
 */
@Stateless
public class Bean {
    
    
    @PersistenceContext
    EntityManager em;
    
    public void dodo(){
        em.persist(new Itinerary("ts"));
    }
}
