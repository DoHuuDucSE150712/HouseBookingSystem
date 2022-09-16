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
public class BillDetail {
    private int billid;
    private int housedetailid;
    private Date startdate;
    private Date enddate;
    private double price;
    private String note;

    public BillDetail() {
    }

    public BillDetail(int billid, int housedetailid, Date startdate, Date enddate, double price, String note) {
        this.billid = billid;
        this.housedetailid = housedetailid;
        this.startdate = startdate;
        this.enddate = enddate;
        this.price = price;
        this.note = note;
    }

    public int getBillid() {
        return billid;
    }

    public void setBillid(int billid) {
        this.billid = billid;
    }

    public int getHousedetailid() {
        return housedetailid;
    }

    public void setHousedetailid(int housedetailid) {
        this.housedetailid = housedetailid;
    }

    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
    
    
    
}
