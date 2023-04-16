/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.entity;


public class User {
    private int id;
    private String name;
    private String email;
    private String password;
    private String qualification;
    private String role;
    
    
    public User(String name,String email, String password, String qualification, String role){
        super();
        this.name = name;
        this.email = email;
        this.password = password;
        this.qualification = qualification;
        this.role = role;
    }
    public User(){
        super();
    }
    
    public void setId(int id){
        this.id = id;
    }
    public void setName(String name){
        this.name = name;
    }
    public void setEmail(String email){
        this.email = email;
    }
    public void setPassword(String password){
        this.password = password;
    }
    public void setQualification(String qualification){
        this.qualification = qualification;
    }
    public void setRole(String role){
        this.role = role;
    }
    
    public int getId(){
        return id;
    }
    
    public String getName(){
        return name;
    }
    
    public String getEmail(){
        return email;
    }
    
    public String getPassword(){
        return password;
    }
    
    public String getQualification(){
        return qualification;
    }
    
    public String getRole(){
        return role;
    }
}
