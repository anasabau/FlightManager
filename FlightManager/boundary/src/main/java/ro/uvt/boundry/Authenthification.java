/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.uvt.boundry;

import java.io.Serializable;
import java.util.List;
import javax.enterprise.context.SessionScoped;
import javax.inject.Inject;
import javax.inject.Named;
import lombok.Data;
import ro.uvt.controller.beans.AirportBean;
import ro.uvt.controller.beans.CompanyBean;

/**
 *
 * @author dan
 */
@Named("auth")
@SessionScoped
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
