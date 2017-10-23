package ro.uvt.controller.beans;

import javax.ejb.EJB;
import javax.inject.Inject;
import org.junit.Assert;
import org.junit.Test;
import ro.uvt.entity.Itinerary;

/**
 *
 * @author dan
 */


public class ItineraryBeanTest {
        
    @Inject
    ItineraryBean ib;
    
    @Test
    public void addItinerary(){
       
        //assemble 
        long nrOfItineraries = ib.count();
        Itinerary it = new Itinerary("Honolulu");
       

        //act
       ib.create(it);
       
       //assert
        System.out.println(nrOfItineraries + 1);
        System.out.println(ib.count());
        Assert.assertEquals(nrOfItineraries + 1, ib.count());
    }
}
