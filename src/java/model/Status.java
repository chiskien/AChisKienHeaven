/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author chisk
 */
public class Status {
    private int status_id;
    private String status;

    public Status() {
    }

    public Status(int status_id, String status) {
        this.status_id = status_id;
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public int getStatus_id() {
        return status_id;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setStatus_id(int status_id) {
        this.status_id = status_id;
    }

    @Override
    public String toString() {
        return super.toString(); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
}
