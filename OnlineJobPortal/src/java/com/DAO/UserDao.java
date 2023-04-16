/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DAO;

import com.entity.User;
import java.sql.*;
public class UserDao {
    private Connection conn;
    public UserDao(Connection conn)
    {
        super();
        this.conn = conn;
    }
    
    public boolean addUser(User u){
        boolean f = false;
        try{
            String sql = "insert into user(name,email,password,qualification,role) values(?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,u.getName());
            ps.setString(2, u.getEmail());
            ps.setString(3,u.getPassword());
            ps.setString(4,u.getQualification());
            ps.setString(5,"user");
            
            int i = ps.executeUpdate();
            if(i == 1)
            {
                f = true;
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
    public User login(String em,String psw){
        User u = null;
        try{
            String sql = "select * from user where email=? and password=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, em);
            pst.setString(2,psw);
            ResultSet rs = pst.executeQuery();
            while(rs.next())
            {
                u = new User();
                u.setId(rs.getInt(1));
                u.setName(rs.getString(2));
                u.setEmail(rs.getString(3));
                u.setPassword(rs.getString(4));
                u.setQualification(rs.getString(5));
                u.setRole(rs.getString(6));
                
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return u;
    }
    
    public boolean updateUser(User u){
        boolean f = false;
        try{
            String sql = "update user set name=?,email=?,password=?,qualification=? where id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,u.getName());
            ps.setString(2, u.getEmail());
            ps.setString(3,u.getPassword());
            ps.setString(4,u.getQualification());
            ps.setInt(5,u.getId());
            
            int i = ps.executeUpdate();
            if(i == 1)
            {
                f = true;
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
  
}
