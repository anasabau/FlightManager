/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.uvt.boundary;

import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.faces.view.ViewScoped;
import javax.inject.Inject;
import javax.inject.Named;
import lombok.Data;
import org.primefaces.event.CellEditEvent;
import ro.uvt.controller.beans.AirportBean;

/**
 *
 * @author dan
 */
@Named
@Data
@ViewScoped
public class Airport implements Serializable {

    @Inject
    private AirportBean airportBean;
    
    private List<ro.uvt.entity.Airport> airportList;

    ro.uvt.entity.Airport entity = new ro.uvt.entity.Airport();
    
    
    private ro.uvt.entity.Airport selectedAirport;
    
    @PostConstruct
    public void init(){
        airportList = airportBean.findAll();
    }
    
    public void submit() {
        airportBean.create(entity);
        airportList.add(entity);
        entity = new ro.uvt.entity.Airport();
    }
    

    public void clear() {
        entity.setName("");
        entity.setCity("");
        entity.setCountry("");
    }
    
    public void onCellEdit(CellEditEvent event){
        airportBean.update( (ro.uvt.entity.Airport) airportList.get(event.getRowIndex()));
     }
    
    public void onRowDelete(){
        if(selectedAirport != null){
        airportBean.setActive(selectedAirport, false);
        airportList.remove(selectedAirport);
        selectedAirport = null;
        }
     }
}
