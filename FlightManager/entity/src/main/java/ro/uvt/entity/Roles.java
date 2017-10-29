/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.uvt.entity;

import ro.uvt.entity.dao.Persistent;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import lombok.Data;
import lombok.NoArgsConstructor;
import ro.uvt.entity.dao.Activable;

/**
 *
 * @author Anastasia
 */

@Entity
@Data
@NoArgsConstructor
public class Roles implements Activable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @Column(nullable = false)
    private String name;
    
    
    private boolean is_active = true;
    
    public Roles(String name) {
        this.name = name;
    }

    @Override
    public void setActive(boolean is_active) {
        this.is_active = is_active;
    }
        
}
