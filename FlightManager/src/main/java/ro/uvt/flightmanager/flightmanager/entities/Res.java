/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.uvt.flightmanager.flightmanager.entities;

import javax.ejb.EJB;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

/**
 *
 * @author dan
 */

@Path("r")
public class Res {
    
    @EJB
    Bean bean;
    
    @GET
    public String dodo(){
        return "test";
    }
}
