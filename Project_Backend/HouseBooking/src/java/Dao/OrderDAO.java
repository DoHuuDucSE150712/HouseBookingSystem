/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Model.Order;
import Model.OrderDetail;
import connect.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Admin
 */
public class OrderDAO {
    
    Connection con;
    public OrderDAO(){
        DBContext dbcontext = new DBContext();
        try {
            con = dbcontext.getConnection();
            System.out.println("Successful");
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
    }
    
    public List<Order> getOrder(){
        String sql = "select * from Orders";
        List<Order> list = new ArrayList<>();
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            ResultSet resultSet = pre.executeQuery();
            while(resultSet.next()){
                // lấy value theo từng cột
                int orderid = resultSet.getInt(1);
                Date ordate = resultSet.getDate(2);
                String total = resultSet.getString(3);
                int status = resultSet.getInt(4);
                int userid = resultSet.getInt(5);
                //tạo model hứng giữ liệu
                Order order = new Order(orderid, ordate, total, status, userid);
                list.add(order);
            }
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
        
        return list;
    }
    
    public List<OrderDetail> getOrderDetail(int orderID){
        String sql = "";
        List<OrderDetail> list = new ArrayList<>();
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setInt(1, orderID);
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            ResultSet resultSet = pre.executeQuery();
            while(resultSet.next()){
                // lấy value theo từng cột
                int orderdetailid = resultSet.getInt(1);
                int houseid = resultSet.getInt(3);
                Date startdate = resultSet.getDate(4);
                Date enddate = resultSet.getDate(5);
                double price = resultSet.getDouble(6);
                String note = resultSet.getString(7);
                //tạo model hứng giữ liệu
                OrderDetail ordetail = new OrderDetail(orderdetailid, orderID, houseid, startdate, enddate, price, note);
                list.add(ordetail);
            }
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
        
        return list;
    }
    
    public void updateStatus(int status, int orderID){
        String sql = "";
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            //set gia tri cho dau ? 
            pre.setInt(1, status);
            pre.setInt(2, orderID);
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            pre.executeUpdate();

        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
    }
    
    
    
}
