/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.uvt.business;

import javax.ejb.EJB;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

/**
 *
 * @author vagrant
 */

@Path("r")
public class Res {
    
    @EJB
    private Bean bean;
    
    @GET
    public String dodo(){
        bean.dodo();
        return "works!";
    }
    
    
}
