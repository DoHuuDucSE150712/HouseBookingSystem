/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Connect.DBContext;
import Model.Account;
import Model.Role;
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
    
    public List<Account> getAccount(){
        String sql = "select * from dbo.Users";
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
                String phone = resultSet.getString(6);
                int status = resultSet.getInt(7);
                int roleid = resultSet.getInt(8);

                //tạo model hứng giữ liệu
                Role role = new Role(roleid, null);
               Account a = new Account(userid, fullname, userimg, username, password, sql, status, role);
               list.add(a);
            }
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
        
        return list;
    }
    
    public Account getAccountbyId(int id){
            String sql = "select * from dbo.Users where user_id = ?";
        Account a = new Account();
        
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setInt(1, id);
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            ResultSet resultSet = pre.executeQuery();
            while(resultSet.next()){
                int userid = resultSet.getInt(1);
                String fullname = resultSet.getString(2);
                String userimg = resultSet.getString(3);
                String username = resultSet.getString(4);
                String password = resultSet.getString(5);
                String phone = resultSet.getString(6);
                int status = resultSet.getInt(7);
                int roleid = resultSet.getInt(8);

                //tạo model hứng giữ liệu
                Role role = new Role(roleid, null);
               a = new Account(userid, fullname, userimg, username, phone, phone, status, role);
            }
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
        
        return a;
    }
    
    public void editAccount(Account account){
        String sql = "UPDATE [dbo].[Users]\n" +
                    "   SET [fullname] = ?\n" +
                    "      ,[avatar] = ?\n" +
                    "      ,[username] = ?\n" +
                    "      ,[password] = ?\n" +
                    "      ,[phone] = ?\n" +
                    "      ,[status] = ?\n" +
                    "      ,[role_id] = ?\n" +
                    " WHERE user_id = ?";
        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            //set gia tri cho dau ? 
            pre.setString(1, account.getFullname());
            pre.setString(2, account.getUserimg());
            pre.setString(3, account.getUsername());
            pre.setString(4, account.getPass());
            pre.setString(5, account.getPhone());
            pre.setInt(6, account.getStatus());
            pre.setInt(7, account.getRole().getId());
            pre.setInt(8, account.getUserid());
            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            pre.executeUpdate();

        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
    }
    
    public void deleteAccount(int id){
        String sql = "DELETE FROM [dbo].[Users]\n" +
                        "      WHERE user_id = ?";
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setInt(1, id);
            pre.executeUpdate();

        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
    }
    
    public void addAccount(Account a) {
        String sql = "INSERT INTO [dbo].[Users]\n" +
                    "           ([fullname]\n" +
                    "           ,[avatar]\n" +
                    "           ,[username]\n" +
                    "           ,[password]\n" +
                    "           ,[phone]\n" +
                    "           ,[status]\n" +
                    "           ,[role_id])\n" +
                    "     VALUES\n" +
                    "           (?\n" +
                    "           ,?\n" +
                    "           ,?\n" + 
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?)";
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, a.getFullname());
            pre.setString(2, a.getUserimg());
            pre.setString(3, a.getUsername());
            pre.setString(4, a.getPass());
            pre.setString(5, a.getPhone());
            pre.setInt(6, a.getStatus());
            pre.setInt(7, a.getRole().getId());
            
            pre.executeUpdate();

        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
    }
    
    public Account getAccountLogin(String usernameInput, String passwordInput) {
        String sql = "select * from dbo.Users where username = ? and password = ?";
        Account a = null;

        try {
            //tạo khay chứa câu lệnh
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, usernameInput);
            pre.setString(2, passwordInput);

            //chạy câu lệnh và tạo khay chứa kết quả câu lệnh
            ResultSet resultSet = pre.executeQuery();
            while (resultSet.next()) {
                int userid = resultSet.getInt(1);
                String fullname = resultSet.getString(2);
                String userimg = resultSet.getString(3);
                String username = resultSet.getString(4);
                String password = resultSet.getString(5);
                String phone = resultSet.getString(6);
                int status = resultSet.getInt(7);
                int roleid = resultSet.getInt(8);

                //tạo model hứng giữ liệu
                Role role = new Role(roleid, null);
               a = new Account(userid, fullname, userimg, username, phone, phone, status, role);

            }

        } catch (Exception e) {
            System.out.println("error :  " + e);
        }

        return a;
    }
    
//    public static void main(String[] args) {
//        AccountDAO a = new AccountDAO();
//    }
    
}
