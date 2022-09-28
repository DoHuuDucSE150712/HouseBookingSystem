/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Model.Location;
import connect.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class LocationDAO {
    
    Connection con;
    public LocationDAO(){
        DBContext dbcontext = new DBContext();
        try {
            con = dbcontext.getConnection();
            System.out.println("Successful");
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
    }
    
     public List<Location> getLocation(){
        String sql = "";
        List<Location> list = new ArrayList<>();
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            ResultSet resultSet = pre.executeQuery();
            while(resultSet.next()){
                // lấy value theo từng cột
                int loid = resultSet.getInt(1);
                String loname = resultSet.getString(2);
                Location l = new Location(loid, loname);
                list.add(l);
            }
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
        
        return list;
    }
    
     public boolean insertType(int loid, String loname){
         String sql = "";
        try {
    
            PreparedStatement pre = con.prepareStatement(sql);
            //set gia tri cho dau ? 
            pre.setInt(1, loid);
            pre.setString(2, loname);
           
            pre.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
        return false;
     }
     
     public void editType(Location location){
        String sql = "";
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, location.getName());
            pre.setInt(2, location.getId());
         
            pre.executeUpdate();

        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
    }
     
     public void deleteLocation(int id){
        String sql = "";
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setInt(1, id);
            pre.executeUpdate();

        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
    }
}
