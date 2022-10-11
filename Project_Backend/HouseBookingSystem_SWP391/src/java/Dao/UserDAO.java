/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Connect.DBContext;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kusib
 */
public class UserDAO {
    Connection con;
    public UserDAO(){
        DBContext dbcontext = new DBContext();
        try {
            con = dbcontext.getConnection();
            System.out.println("Successful");
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
    }
    
    public List<User> getUser(){
        String sql = "select * from dbo.Users";
        List<User> list = new ArrayList<>();
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            ResultSet resultSet = pre.executeQuery();
            while(resultSet.next()){
                int userId = resultSet.getInt(1);
                String fullname = resultSet.getString(2);
                String avatar = resultSet.getString(3);
                String userName = resultSet.getString(4);
                String password = resultSet.getString(5);
                int phone = resultSet.getInt(6);
                int status = resultSet.getInt(7);
                int roleId = resultSet.getInt(8);

                User user = new User(userId, fullname, avatar, userName, password, phone, status, roleId);
                list.add(user);
            }
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
        
        return list;
    }
    
    public User getUserbyId(int id){
            String sql = "select * from dbo.Users where user_id = ?";
        User user = new User();
        
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setInt(1, id);
            ResultSet resultSet = pre.executeQuery();
            while(resultSet.next()){
                 int userId = resultSet.getInt(1);
                String fullname = resultSet.getString(2);
                String avatar = resultSet.getString(3);
                String userName = resultSet.getString(4);
                String password = resultSet.getString(5);
                int phone = resultSet.getInt(6);
                int status = resultSet.getInt(7);
                int roleId = resultSet.getInt(8);

                user = new User(userId, fullname, avatar, userName, password, phone, status, roleId);
            }
        } catch (Exception e) {
            System.out.println("error: "+e);
        }
        
        return user;
    }
    
    public void editUser(User user){
        String sql = "UPDATE [dbo].[Users]\n" +
                    "   SET [user_id] = ?\n" +
                    "      ,[fullname] = ?\n" +
                    "      ,[avatar] = ?\n" +
                    "      ,[username] = ?\n" +
                    "      ,[password] = ?\n" +
                    "      ,[phone] = ?\n" +
                    "      ,[status] = ?\n" +
                    "      ,[role_id] = ?\n" +
                    " WHERE user_id = ?";
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setInt(1, user.getUserId());
            pre.setString(2, user.getFullName());
            pre.setString(3, user.getAvatar());
            pre.setString(4, user.getUsername());
            pre.setString(5, user.getPassword());
            pre.setInt(6, user.getPhone());
            pre.setInt(7, user.getStatus());
            pre.setInt(8, user.getRoleId());
            pre.executeUpdate();

        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
    }
    
    public void deleteUser(int id){
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
    
    public void addUser(User user) {
        String sql = "INSERT INTO [dbo].[Users]\n" +
                    "           ([user_id]\n" +
                    "           ,[fullname]\n" +
                    "           ,[avatar]\n" +
                    "           ,[username]\n" +
                    "           ,[password]\n" +
                    "           ,[phone]\n" +
                    "           ,[status]\n" +
                    "           ,[role_id]\n" +
                    "     VALUES\n" +
                    "           (?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?\n" +
                    "           ,?)";
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setInt(1, user.getUserId());
            pre.setString(2, user.getFullName());
            pre.setString(3, user.getAvatar());
            pre.setString(4, user.getUsername());
            pre.setString(5, user.getPassword());
            pre.setInt(6, user.getPhone());
            pre.setInt(7, user.getStatus());
            pre.setInt(8, user.getRoleId());
            
            pre.executeUpdate();

        } catch (Exception e) {
            System.out.println("error :  " + e);
        }
    }
}
