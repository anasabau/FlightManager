/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.uvt.flightmanager.flightmanager.entities;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author dan
 */

@Stateless
public class Bean {

    public Bean() {
    }
    
    @PersistenceContext
    EntityManager em;
    
    public void dodo(){
        em.persist(new Itinerary("dssdsd"));
    }
    
}
