package ro.uvt.boundry;

import java.io.Serializable;
import java.util.List;
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

    List<ro.uvt.entity.Flight> flights;

    private ro.uvt.entity.Itinerary selectedItinerary;

    private boolean isSelected = selectedItinerary != null;

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

        flights = flightBean.findAll();

    }

    public void onCellEdit(CellEditEvent event) {
        itineraryBean.update((ro.uvt.entity.Itinerary) itineraryList.get(event.getRowIndex()));
    }

    public void onRowDelete() {
        if (selectedItinerary != null) {
            itineraryBean.removeById(selectedItinerary.getId());
            itineraryList.remove(selectedItinerary);
        }
    }

    private void rowSelectionEvent() {
        isSelected = selectedItinerary != null;
    }
}
