/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author chisk
 */
public class Brand {
    private int brand_id;
    private String brand_name;
    private String origin;
    private Date last_update;

    public Brand() {
    }
    public Brand(int brand_id, String brand_name, String origin, Date last_update) {
        this.brand_id = brand_id;
        this.brand_name = brand_name;
        this.origin = origin;
        this.last_update = last_update;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    public String getBrand_name() {
        return brand_name;
    }

    public void setBrand_name(String brand_name) {
        this.brand_name = brand_name;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrgin(String origin) {
        this.origin = origin;
    }

    public Date getLast_update() {
        return last_update;
    }

    public void setLast_update(Date last_update) {
        this.last_update = last_update;
    }

    @Override
    public String toString() {
        return "Brand{" + "brand_id=" + brand_id + ", brand_name=" + brand_name + ", orgin=" + origin + ", last_update=" + last_update + '}';
    }
    
    
    
}
