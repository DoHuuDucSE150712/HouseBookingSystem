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
public class OrderDetail {
    
    private int orderdetailid;
    private int orderid;
    private int houseid;
    private Date startdate;
    private Date enddate;
    private double price;
    private String note;

    public OrderDetail() {
    }

    public OrderDetail(int orderdetailid, int orderid, int houseid, Date startdate, Date enddate, double price, String note) {
        this.orderdetailid = orderdetailid;
        this.orderid = orderid;
        this.houseid = houseid;
        this.startdate = startdate;
        this.enddate = enddate;
        this.price = price;
        this.note = note;
    }

    public int getOrderdetailid() {
        return orderdetailid;
    }

    public void setOrderdetailid(int orderdetailid) {
        this.orderdetailid = orderdetailid;
    }

    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }

    public int getHouseid() {
        return houseid;
    }

    public void setHouseid(int houseid) {
        this.houseid = houseid;
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
