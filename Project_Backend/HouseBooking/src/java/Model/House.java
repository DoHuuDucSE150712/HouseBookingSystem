/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author Admin
 */
public class House {
    
    private int houseid;
    private Date postdate;
    private int status;
    private String review;
    private String housename;
    private double price;
    private String address;
    private String description;
    private TypeHouse type;
    private Location location;

    public House() {
    }

    public House(int houseid, Date postdate, int status, String review, String housename, double price, String address, String description, TypeHouse type, Location location) {
        this.houseid = houseid;
        this.postdate = postdate;
        this.status = status;
        this.review = review;
        this.housename = housename;
        this.price = price;
        this.address = address;
        this.description = description;
        this.type = type;
        this.location = location;
    }

    public int getHouseid() {
        return houseid;
    }

    public void setHouseid(int houseid) {
        this.houseid = houseid;
    }

    public Date getPostdate() {
        return postdate;
    }

    public void setPostdate(Date postdate) {
        this.postdate = postdate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public String getHousename() {
        return housename;
    }

    public void setHousename(String housename) {
        this.housename = housename;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public TypeHouse getType() {
        return type;
    }

    public void setType(TypeHouse type) {
        this.type = type;
    }

    public Location getLocation() {
        return location;
    }

    public void setLocation(Location location) {
        this.location = location;
    }
    
    
    
}
