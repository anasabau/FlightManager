/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.uvt.boundary;

import java.io.Serializable;
import java.security.NoSuchAlgorithmException;
import javax.enterprise.context.RequestScoped;
import javax.faces.context.FacesContext;
import javax.inject.Named;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import lombok.Data;

/**
 *
 * @author dan
 */
@Named("common")
@RequestScoped
@Data
public class Common implements Serializable{
    
    private String username;
    
    private String password;
    
    
   public String login() throws ServletException, NoSuchAlgorithmException{
       
       HttpServletRequest request = (HttpServletRequest) FacesContext.getCurrentInstance()
                                                                     .getExternalContext()
                                                                     .getRequest();
       
   
       
       request.login(username, password);

       
       return "index.xhtml?faces-redirect=true";
       
   }
    
    
   public String logout(){
       
       FacesContext.getCurrentInstance().getExternalContext().invalidateSession();
       
       return "/login.xhtml?faces-redirect=true";
       
   }
    
}
