/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.uvt.boundry;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.enterprise.context.SessionScoped;
import javax.inject.Inject;
import javax.inject.Named;
import lombok.Data;
import org.primefaces.event.CellEditEvent;
import org.primefaces.event.RowEditEvent;
import ro.uvt.controller.beans.AirportBean;

/**
 *
 * @author dan
 */
@Named
@Data
@SessionScoped
public class Airport implements Serializable {

    @Inject
    private AirportBean airportBean;

    private String name;
    
    private String city;
    
    private String country;
    
    private List<ro.uvt.entity.Airport> airportList;

    @PostConstruct
    private void init() {
        airportList = airportBean.findAll();
     }

    public void submit() {
        ro.uvt.entity.Airport a = new ro.uvt.entity.Airport(name, city, country);
        airportList.add(a);
        clear();
    }
    

    public void clear() {
        name = "";
        city = "";
        country = "";
    }
    
    public void onRowEdit(RowEditEvent event){
        // it gets here
     }
}
