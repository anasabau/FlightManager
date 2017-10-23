/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.uvt.entity.dao;

/**
 *
 * @author dan
 */
public interface Activable extends Persistent{
    
    void setActive(boolean is_active);
}
