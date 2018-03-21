package ro.uvt.boundry;

import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.faces.view.ViewScoped;
import javax.inject.Inject;
import javax.inject.Named;
import lombok.Data;
import org.primefaces.event.RowEditEvent;
import ro.uvt.controller.beans.ItineraryBean;

/**
 *
 * @author Anastasia
 */

@Named("itinerary")
@Data
@ViewScoped
public class Itinerary implements Serializable{
    
     @Inject
    private ItineraryBean itineraryBean;
    
    private ro.uvt.entity.Itinerary entity = new ro.uvt.entity.Itinerary();
    
    List<ro.uvt.entity.Itinerary> itineraryList;
    
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
    }
    
     public void onRowEdit(RowEditEvent event) {
        itineraryBean.update((ro.uvt.entity.Itinerary) event.getObject());
    }

    public void onRowDelete(ro.uvt.entity.Itinerary itinerary) {
        itineraryBean.removeById(itinerary.getId());
    }
}
