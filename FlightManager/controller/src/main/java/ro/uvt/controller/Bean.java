/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.uvt.controller;

import javax.ejb.Stateless;
import javax.inject.Inject;
import ro.uvt.entity.Itinerary;
import ro.uvt.entity.dao.DAOInterface;
/**
 *
 * @author Dan
 */
@Stateless
public class Bean {
    
 
    
    @Inject
    DAOInterface dao;
    
    public void dodo(){
        dao.create(new Itinerary("dodo"));
    }
}
