/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Model.House;
import Model.Location;
import Model.TypeHouse;
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
public class HouseDAO {
    
    Connection con;
    public HouseDAO(){
        DBContext dbcontext = new DBContext();
        try {
            con = dbcontext.getConnection();
            System.out.println("Successful");
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
    }
    
    public List<House> getHouse(){
        String sql = "select * from Accounts";
        List<House> list = new ArrayList<>();
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            ResultSet resultSet = pre.executeQuery();
            while(resultSet.next()){
                int houseid = resultSet.getInt(1);
                Date postdate = resultSet.getDate(2);
                int status = resultSet.getInt(3);
                String review = resultSet.getString(4);
                String housename = resultSet.getString(5);
                double price = resultSet.getDouble(6);
                String address = resultSet.getString(7);
                String description = resultSet.getString(8);
                int typeid = resultSet.getInt(9);
                String typename = resultSet.getString(10);
                int locationid = resultSet.getInt(11);
                String locationname = resultSet.getString(12);
                String houseimg = resultSet.getString(13);

                //tạo model hứng giữ liệu
                TypeHouse t = new TypeHouse(typeid, typename);
                Location l = new Location(locationid, locationname);
               House h = new House(houseid, postdate, status, review, housename, price, address, description, t, l, houseimg);
                list.add(h);
            }
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
        
        return list;
    }
    
    public void insertHouse(House h){
         String sql = "";
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            //set gia tri cho dau ? 
            pre.setString(1, h.getHousename());
            java.sql.Date DateSql = new java.sql.Date(h.getPostdate().getTime());
            pre.setDate(2, DateSql);
            pre.setInt(3, h.getStatus());
            pre.setDouble(4, h.getPrice());
            pre.setString(5, h.getAddress());
            pre.setInt(6, h.getType().getId());
            pre.setInt(7, h.getLocation().getId());
            pre.setString(8, h.getDescription());
            pre.setString(9, h.getHouse_img());
            
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            pre.executeUpdate();
        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
     }
    
    public void editHouse(House house){
        String sql = "";
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            //set gia tri cho dau ? 
            pre.setString(1, house.getHousename());
            pre.setString(2, house.getAddress());
            pre.setString(3, house.getDescription());
            pre.setDouble(4, house.getPrice());
            pre.setInt(5, house.getType().getId());
            pre.setInt(6, house.getLocation().getId());
            pre.setString(7, house.getHouse_img());
            pre.setInt(8, house.getHouseid());
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            pre.executeUpdate();

        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
    }
    
    public void deleteHouse(int id){
        String sql = "";
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setInt(1, id);
            pre.executeUpdate();

        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
    }
    
    public House getHousebyId(int id){
            String sql = "";
        House h = new House();
        
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setInt(1, id);
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            ResultSet resultSet = pre.executeQuery();
            while(resultSet.next()){
                Date postdate = resultSet.getDate(2);
                int status = resultSet.getInt(3);
                String review = resultSet.getString(4);
                String housename = resultSet.getString(5);
                double price = resultSet.getDouble(6);
                String address = resultSet.getString(7);
                String description = resultSet.getString(8);
                int typeid = resultSet.getInt(9);
                String typename = resultSet.getString(10);
                int locationid = resultSet.getInt(11);
                String locationname = resultSet.getString(12);
                String houseimg = resultSet.getString(13);

                //tạo model hứng giữ liệu
                TypeHouse t = new TypeHouse(typeid, typename);
                Location l = new Location(locationid, locationname);
                h = new House(id, postdate, status, review, housename, price, address, description, t, l, houseimg);
            }
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
        
        return h;
    }
    
}
