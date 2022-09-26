/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Model.Account;
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
public class AccountDAO {
    
    Connection con;
    public AccountDAO(){
        DBContext dbcontext = new DBContext();
        try {
            con = dbcontext.getConnection();
            System.out.println("Successful");
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
    }
    
    public Account getAccount(String usernameInput, String passwordInput) {
        String sql = "select * from tblUsers where userID = ? and password = ?";
        Account a = null;

        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, usernameInput);
            pre.setString(2, passwordInput);

            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            ResultSet resultSet = pre.executeQuery();
            while (resultSet.next()) {
                // lấy value theo từng cột
                int userid = resultSet.getInt(1);
                String fullname = resultSet.getString(2).trim();
                String userimg = resultSet.getString(3).trim();
                String username = resultSet.getString(4).trim();
                String password = resultSet.getString(5).trim();
                int phone = resultSet.getInt(6);
                int status = resultSet.getInt(7);
                int roleid = resultSet.getInt(8);
                String token = resultSet.getString(9).trim();

                //tạo model hứng giữ liệu
               a = new Account(userid, fullname, userimg, username, password, phone, status, roleid, token);

            }

        } catch (Exception e) {
            System.out.println("error :  " + e);
        }

        return a;
    }
    
    public List<Account> getAccount(){
        String sql = "select * from Accounts";
        List<Account> list = new ArrayList<>();
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            ResultSet resultSet = pre.executeQuery();
            while(resultSet.next()){
                int userid = resultSet.getInt(1);
                String fullname = resultSet.getString(2);
                String userimg = resultSet.getString(3);
                String username = resultSet.getString(4);
                String password = resultSet.getString(5);
                int phone = resultSet.getInt(6);
                int status = resultSet.getInt(7);
                int roleid = resultSet.getInt(8);
                String token = resultSet.getString(9);

                //tạo model hứng giữ liệu
               Account a = new Account(userid, fullname, userimg, username, password, phone, status, roleid, token);
                list.add(a);
            }
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
        
        return list;
    }
 
    public boolean insertAccount(String newUsername, String newPassword, String newFullname, String newPhone, int newStatus,int newRole){
         String sql = "";
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            //set gia tri cho dau ? 
            pre.setString(1, newUsername);
            pre.setString(2, newPassword);
            pre.setString(3, newFullname);
            pre.setString(4, newPhone);
            pre.setInt(5, newStatus);
            pre.setInt(6, newRole);
            
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            pre.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
        return false;
     }
    
    public void editAccount(Account account){
        String sql = "";
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            //set gia tri cho dau ? 
            pre.setString(1, account.getFullname());
            pre.setString(2, account.getUserimg());
            pre.setString(3, account.getUsername());
            pre.setString(4, account.getPass());
            pre.setInt(5, account.getPhone());
            pre.setInt(6, account.getRoleid());
            pre.setInt(7, account.getUserid());
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            pre.executeUpdate();

        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
    }
    
    public void deleteAccount(int id){
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
