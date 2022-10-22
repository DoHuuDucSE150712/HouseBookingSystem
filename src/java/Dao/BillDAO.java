/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Connect.DBContext;
import Model.Bill;
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
public class BillDAO {
    Connection con;
    public BillDAO(){
        DBContext dbcontext = new DBContext();
        try {
            con = dbcontext.getConnection();
            System.out.println("Successful");
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
    }
    
    public List<Bill> getBill(){
        String sql = "select * from Bill";
        List<Bill> list = new ArrayList<>();
        try{
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            ResultSet resultSet = pre.executeQuery();
            while(resultSet.next()){
                int billid = resultSet.getInt(1);
                Date date = resultSet.getDate(2);
                float total = resultSet.getFloat(3);
                int status = resultSet.getInt(4);
                int userid = resultSet.getInt(5);

                //tạo model hứng giữ liệu
                Bill b = new Bill(billid, date, total, status, userid);
               
               list.add(b);
            }
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
        
        return list;
    }
    
    public Bill getBills(){
        String sql = "select * from Bill";
        Bill b = new Bill();
        try{
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            ResultSet resultSet = pre.executeQuery();
            while(resultSet.next()){
                int billid = resultSet.getInt(1);
                Date date = resultSet.getDate(2);
                float total = resultSet.getFloat(3);
                int status = resultSet.getInt(4);
                int userid = resultSet.getInt(5);

                //tạo model hứng giữ liệu
                b = new Bill(billid, date, total, status, userid);
            }
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
        return b;
    }
    
    public void editBill(Bill bill){
        String sql = "UPDATE [dbo].[Bill]\n" +
                "   SET [date] = ?\n" +
                "      ,[total] = ?\n" +
                "      ,[status] = ?\n" +
                "      ,[user_id] = ?\n" +
                " WHERE bill_id = ?";
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            //set gia tri cho dau ? 
            java.sql.Date DateSql = new java.sql.Date(bill.getDate().getTime());
            pre.setDate(1, DateSql);
            pre.setFloat(2, bill.getTotal());
            pre.setInt(3, bill.getStatus());
            pre.setInt(4, bill.getUserid());
            pre.setInt(5, bill.getBillid());
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            pre.executeUpdate();

        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
    }
    
    public void deleteBill(int id){
        String sql = "DELETE FROM [dbo].[Bill]\n" +
                    "      WHERE bill_id = ?";
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setInt(1, id);
            pre.executeUpdate();

        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
    }
    
    public void addBill(Bill bill){
        String sql = "INSERT INTO [dbo].[Bill]\n" +
                    "           ([date]\n" +
                    "           ,[total]\n" +
                    "           ,[status]\n" +
                    "           ,[user_id])\n" +
                    "     VALUES\n" +
                    "           (?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?)";
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            //set gia tri cho dau ? 
            java.sql.Date DateSql = new java.sql.Date(bill.getDate().getTime());
            pre.setDate(1, DateSql);
            pre.setFloat(2, bill.getTotal());
            pre.setInt(3, bill.getStatus());
            pre.setInt(4, bill.getUserid());
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            pre.executeUpdate();

        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
    }
    
    public Bill getBillbyId(int id){
            String sql = "select * from Bill where bill_id = ?";
        Bill b = new Bill();
        
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setInt(1, id);
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            ResultSet resultSet = pre.executeQuery();
            while(resultSet.next()){
                int billid = resultSet.getInt(1);
                Date date = resultSet.getDate(2);
                float total = resultSet.getFloat(3);
                int status = resultSet.getInt(4);
                int userid = resultSet.getInt(5);

                //tạo model hứng giữ liệu
                b = new Bill(billid, date, total, status, userid);
            }
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
        
        return b;
    }
    
}
