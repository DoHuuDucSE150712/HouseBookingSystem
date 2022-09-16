/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Admin
 */
public class HouseDetail {
    private int housedetailid;
    private String housename;
    private String description;
    private double price;
    private String houseimg;
    private String address;
    private String district;

    public HouseDetail() {
    }

    public HouseDetail(int housedetailid, String housename, String description, double price, String houseimg, String address, String district) {
        this.housedetailid = housedetailid;
        this.housename = housename;
        this.description = description;
        this.price = price;
        this.houseimg = houseimg;
        this.address = address;
        this.district = district;
    }

    public int getHousedetailid() {
        return housedetailid;
    }

    public void setHousedetailid(int housedetailid) {
        this.housedetailid = housedetailid;
    }

    public String getHousename() {
        return housename;
    }

    public void setHousename(String housename) {
        this.housename = housename;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getHouseimg() {
        return houseimg;
    }

    public void setHouseimg(String houseimg) {
        this.houseimg = houseimg;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }
    
    
    
}
