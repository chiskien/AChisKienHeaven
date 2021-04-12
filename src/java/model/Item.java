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
public class Item {
    private int id;
    private int quantity;
    private Product product;
    private int price;

    public Item() {
    }

    public Item(int id, int quantity, Product product, int price) {
        this.id = id;
        this.quantity = quantity;
        this.product = product;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
    
    @Override
    public String toString() {
        return "Item{" + "id=" + id + ", quantity=" + quantity + ", product=" + product + '}';
    }
    
    
        
}
