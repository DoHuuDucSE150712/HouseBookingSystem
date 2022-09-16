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
    private String status;
    private String review;
    private int housedetailid;
    private int bill;

    public House() {
    }

    public House(int houseid, Date postdate, String status, String review, int housedetailid, int bill) {
        this.houseid = houseid;
        this.postdate = postdate;
        this.status = status;
        this.review = review;
        this.housedetailid = housedetailid;
        this.bill = bill;
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public int getHousedetailid() {
        return housedetailid;
    }

    public void setHousedetailid(int housedetailid) {
        this.housedetailid = housedetailid;
    }

    public int getBill() {
        return bill;
    }

    public void setBill(int bill) {
        this.bill = bill;
    }
    
    
    
}
