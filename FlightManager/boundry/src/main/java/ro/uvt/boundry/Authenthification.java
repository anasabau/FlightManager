/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.uvt.boundry;

import javax.ejb.EJB;
import javax.inject.Named;
import lombok.Data;
import ro.uvt.controller.beans.AirportBean;
import ro.uvt.entity.Airport;

/**
 *
 * @author dan
 */
@Named("auth")
@Data
public class Authenthification {
    
    @EJB
    private AirportBean airportBean;
    
    private String userName;
    
    private String password;
    
    public Authenthification(){
        
    }
    
    public void login(){
        airportBean.create(new Airport());
    }
    
}
