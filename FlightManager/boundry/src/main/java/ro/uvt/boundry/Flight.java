/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.uvt.boundry;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct;
import javax.enterprise.context.SessionScoped;
import javax.inject.Inject;
import javax.inject.Named;
import lombok.Data;
import org.primefaces.event.RowEditEvent;
import ro.uvt.controller.beans.AirportBean;
import ro.uvt.controller.beans.FlightBean;
import ro.uvt.controller.beans.PlaneBean;
import ro.uvt.controller.beans.UserBean;

/**
 *
 * @author dan
 */
@Named("flight")
@Data
@SessionScoped
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

    private String departurePlaneSelectedId;

    private String arivalPlaneSelectedId;

    private LocalTime arivalTime;

    private LocalTime departureTime;

    public void submit() {

        flightBean.create(entity);
        entity = new ro.uvt.entity.Flight();
    }

    public void clear() {
        entity.setPlane_id(null);
        entity.setDeparture_airport(null);
        entity.setArival_airport(null);
        entity.setDeparture_time(null);
        entity.setArival_time(null);
    }

    @PostConstruct
    public void init() {
        flightList = flightBean.findAll();

        for (ro.uvt.entity.Airport airport : airportBean.findAll()) {
            airports.put(airport.getName() + " (id " + airport.getId() + ")", airport.getId());
        }

        for (ro.uvt.entity.Plane plane : planeBean.findAll()) {
            planes.put(plane.getRegistration_id() + " (id " + plane.getId() + ")", plane.getId());
        }

        for (ro.uvt.entity.Plane plane : planeBean.findAll()) {
            planes.put(plane.getRegistration_id() + " (id " + plane.getId() + ")", plane.getId());
        }

        for (ro.uvt.entity.Users user : userBean.findAll()  ) {
            users.put(user.getFirst_name() + " " + user.getLast_name() + " (id " + user.getId() + ")", user.getId());
        }
    }

    public void onRowEdit(RowEditEvent event) {
        flightBean.update((ro.uvt.entity.Flight) event.getObject());
    }

    public void onRowDelete(ro.uvt.entity.Plane plane) {
        flightBean.removeById(plane.getId());
    }

}
