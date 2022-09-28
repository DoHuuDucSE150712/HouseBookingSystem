/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Model.TypeHouse;
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
public class TypeDAO {
    
    Connection con;
    public TypeDAO(){
        DBContext dbcontext = new DBContext();
        try {
            con = dbcontext.getConnection();
            System.out.println("Successful");
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
    }
    
     public List<TypeHouse> getTypeHouse(){
        String sql = "";
        List<TypeHouse> list = new ArrayList<>();
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            ResultSet resultSet = pre.executeQuery();
            while(resultSet.next()){
                // lấy value theo từng cột
                int typeid = resultSet.getInt(1);
                String typename = resultSet.getString(2);
                TypeHouse t = new TypeHouse(typeid, typename);
                list.add(t);
            }
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
        
        return list;
    }
    
     public boolean insertType(int typeid, String typename){
         String sql = "";
        try {
    
            PreparedStatement pre = con.prepareStatement(sql);
            //set gia tri cho dau ? 
            pre.setInt(1, typeid);
            pre.setString(2, typename);
           
            pre.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
        return false;
     }
     
     public void editType(TypeHouse type){
        String sql = "";
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, type.getName());
            pre.setInt(2, type.getId());
         
            pre.executeUpdate();

        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
    }
     
     public void deleteType(int id){
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
