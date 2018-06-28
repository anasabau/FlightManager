
package ro.uvt.boundary;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.PostConstruct;
import javax.faces.context.FacesContext;
import javax.faces.view.ViewScoped;
import javax.inject.Inject;
import javax.inject.Named;
import lombok.Data;
import org.primefaces.event.CellEditEvent;
import org.primefaces.model.DefaultStreamedContent;
import org.primefaces.model.StreamedContent;
import ro.uvt.controller.beans.AirportBean;
import ro.uvt.parser.CSVwriter;


@Named
@Data
@ViewScoped
public class Airport implements Serializable {

    @Inject
    private AirportBean airportBean;
    
    private StreamedContent file;

    private List<ro.uvt.entity.Airport> airportList;

    ro.uvt.entity.Airport entity = new ro.uvt.entity.Airport();

    private ro.uvt.entity.Airport selectedAirport;

    @PostConstruct
    public void init() {
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

    public void onCellEdit(CellEditEvent event) {
        airportBean.update((ro.uvt.entity.Airport) airportList.get(event.getRowIndex()));
    }

    public void onRowDelete() {
        if (selectedAirport != null) {
            airportBean.setActive(selectedAirport, false);
            airportList.remove(selectedAirport);
            selectedAirport = null;
        }
    }

    public StreamedContent download() {
        Class<ro.uvt.entity.Airport> type = ro.uvt.entity.Airport.class;
        String basePath = FacesContext.getCurrentInstance().getExternalContext().getRealPath("/");
        try {
            CSVwriter writer = new CSVwriter(new File(basePath + "/resources/airport.csv"), type);
            writer.writeRecords(airportList);

            InputStream stream = FacesContext.getCurrentInstance().getExternalContext().getResourceAsStream("/resources/airport.csv");
            file = new DefaultStreamedContent(stream, "text/csv", "airport.csv");
            
            return file;
        } catch (IOException ex) {
            Logger.getLogger(Airport.class.getName()).log(Level.SEVERE, null, ex);
        }
        throw new RuntimeException("Could not download file");
    }
}
