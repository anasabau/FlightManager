/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.uvt.boundry;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct;
import lombok.Data;
import javax.inject.Inject;
import javax.faces.view.ViewScoped;
import javax.inject.Named;
import org.primefaces.event.CellEditEvent;
import ro.uvt.controller.beans.AirportBean;
import ro.uvt.controller.beans.FlightBean;
import ro.uvt.controller.beans.PlaneBean;
import ro.uvt.controller.beans.UserBean;

/*
 * @author dan
 */
@Named("flight")
@Data
@ViewScoped
public class Flight implements Serializable {

    private ro.uvt.entity.Flight entity = new ro.uvt.entity.Flight();

    @Inject
    private FlightBean flightBean;

    @Inject
    private AirportBean airportBean;

    @Inject
    private PlaneBean planeBean;

    @Inject
    private UserBean userBean;

    private List<ro.uvt.entity.Flight> flightList;

    private Map<String, Long> airports = new HashMap<String, Long>();

    private Map<String, Long> planes = new HashMap<String, Long>();

    private Map<String, Long> users = new HashMap<String, Long>();

    private String planeSelectedId;

    private String departureAirportSelectedId;

    private String arivalAirportSelectedId;

    private ro.uvt.entity.Flight selectedFlight;

    public String formater(Date date) {
        SimpleDateFormat formater = new SimpleDateFormat("HH:mm");
        return formater.format(date);
    }

    public void submit() {
        flightList.add(entity);
        flightBean.create(entity);
        entity = new ro.uvt.entity.Flight();
        clear();
    }

    public void clear() {
        entity.setPlane_id(null);
        entity.setDeparture_airport(null);
        entity.setArival_airport(null);
        entity.setDeparture_time(null);
        entity.setArival_time(null);
        planeSelectedId = "";
        departureAirportSelectedId = "";
        arivalAirportSelectedId = "";
    }

    @PostConstruct
    public void init() {
        flightList = flightBean.findAll();

        for (ro.uvt.entity.Airport airport : airportBean.findAll()) {
            airports.put(airport.toString(), airport.getId());
        }

        for (ro.uvt.entity.Plane plane : planeBean.findAll()) {
            planes.put(plane.toString(), plane.getId());
        }

        for (ro.uvt.entity.Users user : userBean.findAll()) {
            users.put(user.toString(), user.getId());
        }
    }

    public void onCellEdit(CellEditEvent event) {
        flightBean.update(flightList.get(event.getRowIndex()));
    }

    public void onRowDelete() {
        if (selectedFlight != null) {
            flightBean.removeById(selectedFlight.getId());
            flightList.remove(selectedFlight);
        }
    }

    public void onPlaneChange(ro.uvt.entity.Flight flight) {
        Long id = Long.decode(planeSelectedId);
        ro.uvt.entity.Plane plane = planeBean.findById(id);
        flight.setPlane_id(plane);
    }

    public void onPlaneChange() {
        Long id = Long.decode(planeSelectedId);
        ro.uvt.entity.Plane plane = planeBean.findById(id);
        entity.setPlane_id(plane);
    }

    public void onDepartureChange(ro.uvt.entity.Flight flight) {
        Long id = Long.decode(departureAirportSelectedId);
        ro.uvt.entity.Airport airport = airportBean.findById(id);
        flight.setDeparture_airport(airport);
    }

    public void onDepartureChange() {
        Long id = Long.decode(departureAirportSelectedId);
        ro.uvt.entity.Airport airport = airportBean.findById(id);
        entity.setDeparture_airport(airport);
    }

    public void onArivalChange(ro.uvt.entity.Flight flight) {
        Long id = Long.decode(arivalAirportSelectedId);
        ro.uvt.entity.Airport airport = airportBean.findById(id);
        flight.setArival_airport(airport);
    }

    public void onArivalChange() {
        Long id = Long.decode(arivalAirportSelectedId);
        ro.uvt.entity.Airport airport = airportBean.findById(id);
        entity.setArival_airport(airport);
    }
}
