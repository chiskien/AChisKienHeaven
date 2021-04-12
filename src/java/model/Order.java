/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author chisk
 */
public class Order {

    private int customer_order;
    private Customer customer;
    private ArrayList<Item> list;
    private int order_amout;
    private String order_status;
    private Date order_date;

    public Order() {
    }

    public Order(int customer_order, String order_status, Customer customer, int order_amout, Date order_date) {
        this.customer_order = customer_order;
        this.order_status = order_status;
        this.customer = customer;
        this.order_amout = order_amout;
        this.order_date = order_date;
    }

    public int getCustomer_order() {
        return customer_order;
    }

    public void setCustomer_order(int customer_order) {
        this.customer_order = customer_order;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public ArrayList<Item> getList() {
        return list;
    }

    public void setList(ArrayList<Item> list) {
        this.list = list;
    }

    public int getOrder_amout() {
        return order_amout;
    }

    public void setOrder_amout(int order_amout) {
        this.order_amout = order_amout;
    }

    public String getOrder_status() {
        return order_status;
    }

    public void setOrder_status(String order_status) {
        this.order_status = order_status;
    }

    public Date getOrder_date() {
        return order_date;
    }

    public void setOrder_date(Date order_date) {
        this.order_date = order_date;
    }
 
}
