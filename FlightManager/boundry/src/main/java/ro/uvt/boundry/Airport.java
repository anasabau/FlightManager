/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.uvt.boundry;

import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.enterprise.context.SessionScoped;
import javax.inject.Inject;
import javax.inject.Named;
import lombok.Data;
import ro.uvt.controller.beans.AirportBean;

/**
 *
 * @author dan
 */
@Named
@Data
@SessionScoped
public class Airport implements Serializable{
    
    @Inject
    private AirportBean airportBean;
    
    private String name;
    
    private String country;
    
    private String city;
    
    private List<ro.uvt.entity.Airport> companyList;
    
    @PostConstruct
    private void init(){
        companyList = airportBean.findAll();
    }
    
    public void submit(){
        airportBean.create(new ro.uvt.entity.Airport(name, city, country));
    }
    
    public void clear(){
        name = "";
        country = "";
        city = "";
    }
    
}
