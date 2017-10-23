package ro.uvt.controller.beans;

import javax.naming.Context;
import javax.naming.InitialContext;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import ro.uvt.entity.Itinerary;

/**
 *
 * @author dan
 */


public class ItineraryBeanTest {
    
    ItineraryBean ib;
    
    @Before
    public void intiMockEjbContainer() throws Exception{
        Context context = new InitialContext();
        ib = (ItineraryBean) context.lookup("ItineraryBean");

    }
    
       
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
