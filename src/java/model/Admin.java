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
public class Admin {
    private String admin;
    private String password;

    public Admin() {
    }

    public Admin(String admin, String password) {
        this.admin = admin;
        this.password = password;
    }

    public String getAdmin() {
        return admin;
    }

    public String getPassword() {
        return password;
    }

    public void setAdmin(String admin) {
        this.admin = admin;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return admin + " " + password;
    }
    
}
