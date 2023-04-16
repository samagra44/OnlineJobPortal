/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.entity;


public class Jobs {
    private int id;
    private String title;
    private String description;
    private String category;
    private String status;
    private String location;
    private String pdate;
    
    public Jobs(){
        super();
    }
    public Jobs(String title,String description,String category,String status,String location, String pdate){
        this.title = title;
        this.description = description;
        this.category = category;
        this.status = status;
        this.location = location;
        this.pdate = pdate;
    }
    public void setId(int id){
        this.id = id;
    }
    public int getId(){
        return id;
    }
    
    public void setTitle(String title){
        this.title = title;
    }
    public String getTitle(){
        return title;
    }
    
    public void setDescription(String description){
        this.description = description;
    }
    public String getDescription(){
        return description;
    }
    
    public void setCategory(String category){
        this.category = category;
    }
    public String getCategory(){
        return category;
    }
    
    public void setStatus(String status){
        this.status = status;
    }
    public String getStatus(){
        return status;
    }
    
    public void setLocation(String location){
        this.location = location;
    }
    public String getLocation(){
        return location;
    }
    
    
    public void setPDate(String pdate){
        this.pdate = pdate;
    }
    public String getPDate(){
        return pdate;
    }
    
}
