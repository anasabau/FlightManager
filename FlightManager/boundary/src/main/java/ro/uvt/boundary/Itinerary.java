package ro.uvt.boundary;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct;
import javax.faces.view.ViewScoped;
import javax.inject.Inject;
import javax.inject.Named;
import lombok.Data;
import org.primefaces.event.CellEditEvent;
import ro.uvt.controller.beans.FlightBean;
import ro.uvt.controller.beans.ItineraryBean;

/**
 *
 * @author Anastasia
 */
@Named("itinerary")
@Data
@ViewScoped
public class Itinerary implements Serializable {

    @Inject
    private ItineraryBean itineraryBean;

    @Inject
    private FlightBean flightBean;

    private ro.uvt.entity.Itinerary entity = new ro.uvt.entity.Itinerary();

    List<ro.uvt.entity.Itinerary> itineraryList;

    private ro.uvt.entity.Itinerary selectedItinerary;

    private boolean isSelected = selectedItinerary != null;

    private Map<String, Long> flights = new HashMap<>();

    private String selectedFlight;

    public void submit() {
        itineraryBean.create(entity);
        entity = new ro.uvt.entity.Itinerary();
    }

    public void clear() {
        entity.setName("");
    }

    @PostConstruct
    public void init() {
        itineraryList = itineraryBean.findAll();

        for (ro.uvt.entity.Flight flight : flightBean.findAll()) {
            flights.put(flight.toString(), flight.getId());
        }

    }

    public void onCellEdit(CellEditEvent event) {
        itineraryBean.update((ro.uvt.entity.Itinerary) itineraryList.get(event.getRowIndex()));
    }

    public void onRowDelete() {
        if (selectedItinerary != null) {
            itineraryBean.removeById(selectedItinerary.getId());
            itineraryList.remove(selectedItinerary);
            selectedItinerary = null;
        }
    }

    public void rowSelectionEvent() {
        isSelected = selectedItinerary != null;
    }

    public void addFlightToItinerary() {
        if (selectedItinerary != null && selectedFlight != null) {
            ro.uvt.entity.Flight flight = flightBean.findById(Long.decode(selectedFlight));
            selectedItinerary.getFlights().add(flight);
            itineraryBean.update(selectedItinerary);
        }
    }

    public void removeFlightFromItinerary() {
        if (!selectedItinerary.getFlights().isEmpty()) {
            ro.uvt.entity.Flight lastFlight = getLastFlightForSelectedItinerary();
            if (lastFlight != null) {
                selectedItinerary.getFlights().remove(lastFlight);
                itineraryBean.update(selectedItinerary);
            }
        }
    }

    private ro.uvt.entity.Flight getLastFlightForSelectedItinerary() {
        ro.uvt.entity.Flight lastFlight = null;

        if (selectedItinerary != null) {
            for (Iterator<ro.uvt.entity.Flight> iter = selectedItinerary.getFlights().iterator(); iter.hasNext();) {
                lastFlight = iter.next();
            }
        } else {
            throw new RuntimeException("No Itinerary is selected, cannot get latest flight");

        }
        return lastFlight;
    }

    public Map<String, Long> getFilteredFlights() {
        if (selectedItinerary != null && selectedItinerary.getFlights().size() > 0) {
            Map<String, Long> filteredFlights = new HashMap<>();

            for (ro.uvt.entity.Flight flight : flightBean.findAll()) {
                if (flight.getDeparture_airport().getId().equals(getLastFlightForSelectedItinerary().getArival_airport().getId())) {
                    filteredFlights.put(flight.toString(), flight.getId());
                }
            }
            return filteredFlights;
        }
        return flights;
    }
}
