/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.InputStream;
import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author chisk
 */
public class Product {

    private int product_id;
    private String product_code;
    private String name;
    private String description;
    private int price;
    private int quantity;
    private String image;
    private Date last_update;
    private Category category;
    private Brand brand;
    private String status;

    public Product() {
    }
    public Date getLast_update() {
        return last_update;
    }

    public void setLast_update(Date last_update) {
        this.last_update = last_update;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getProduct_code() {
        return product_code;
    }

    public void setProduct_code(String product_code) {
        this.product_code = product_code;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
    
    public Category getCategory() {
        return category;
    }

    @Override
    public String toString() {
        return "Product{" + "product_id=" + product_id + ", product_code=" + product_code + ", name=" + name + ", description=" + description + ", price=" + price + ", quantity=" + quantity + ", image=" + image + ", status=" + status + ", last_update=" + last_update + ", category=" + category + ", brand=" + brand + '}';
    }
    
   

 
}
