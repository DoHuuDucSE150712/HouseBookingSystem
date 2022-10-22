/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Connect.DBContext;
import Model.HouseImg;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class HouseImgDAO {
    Connection con;
    public HouseImgDAO(){
        DBContext dbcontext = new DBContext();
        try {
            con = dbcontext.getConnection();
            System.out.println("Successful");
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
    }
    
    public List<HouseImg> getHouseImg(){
        String sql = "select * from House_img";
        List<HouseImg> list = new ArrayList<>();
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            ResultSet resultSet = pre.executeQuery();
            while(resultSet.next()){
                int imgid = resultSet.getInt(1);
                String imglink = resultSet.getString(2);
                int houseid = resultSet.getInt(3);
                HouseImg h = new HouseImg(imgid, imglink, houseid);
                list.add(h);
            }
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
        
        return list;
    }
    
    public HouseImg getHouseImgbyID(int id){
        String sql = "select * from House_img where house_id = ?";
        HouseImg h = new HouseImg();
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setInt(1, id);
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            ResultSet resultSet = pre.executeQuery();
            while(resultSet.next()){
                int imgid = resultSet.getInt(1);
                String imglink = resultSet.getString(2);
                int houseid = resultSet.getInt(3);
                h = new HouseImg(imgid, imglink, houseid);
            }
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
        
        return h;
    }
    
}
