/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.uvt.boundary;

import java.io.Serializable;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.inject.Named;
import lombok.Data;
import ro.uvt.controller.beans.AirportBean;

/**
 *
 * @author dan
 */
@Named("auth")
@RequestScoped
@Data
public class Authenthification implements Serializable {

    @Inject
    private AirportBean airportBean;

    private String userName;

    private String password;

    public Authenthification() {

    }

    public void login() {
        System.out.println("fsdf" + airportBean.count() );
        airportBean.create(new ro.uvt.entity.Airport("sad", "fsd", "dfs"));
    }

}
