<%-- 
    Document   : add_job
    Created on : Apr 4, 2023, 10:47:08 AM
    Author     : Asus
--%>
<%@page import="com.DAO.jobDao"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.Jobs"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="all_component/aal_css.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Jobs</title>
        <style>
      .div-inline{
    display:inline-block;
}
        </style>
    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %>
        <div class="container mt-3">
            
   <%
   int id = Integer.parseInt(request.getParameter("id"));
   jobDao dao = new jobDao(DBConnect.getConn());
   Jobs j = dao.getJobById(id);
   
   %>
  <h2 class="text-center">Edit Jobs</h2>
  <form action="update" method="post">
      <input type="hidden" value="<%=j.getId()%>" name="id">
    <div class="form-group">
      <h5> Enter Title </h5>
      <input type="text" class="form-control" id="email" placeholder="Enter UserName" name="title" value="<%=j.getTitle()%>">
    </div>
      
   
<div class="form-row">
    <div class="form-group col-md-4">

    <label>Location</label>
    <select name="location" class="custom-select">
        <option value="<%=j.getLocation() %>" ><%=j.getLocation()%></option>
        <option value="Odisha">Odisha</option>
        <option value="Jharkhand">Jharkhand...</option>
        <option value="Bhuvneshawr">Bhuvneshawr</option>
        <option value="Delhi">Delhi</option>
        <option value="Bagluru">Bagluru</option>
        <option value="Chennai">Chennai</option>
        <option value="Hyd">Hyd.</option>
    </select>
  
</div>
    

    <div class="form-group col-md-4">
        <label>Category</label>
    <select  class="custom-select" name="category">
        <option vlaue="<%=j.getCategory() %>"><%=j.getCategory() %></option>
        <option value="IT">IT</option>
        <option value="Developer">Developer...</option>
        <option value="Banking">Banking</option>
        <option value="Engineer">Engineer</option>
         <option value="Teacher">Teacher</option>
        
    </select>
    
</div>
    
    <div class="form-group col-md-4">
        <label>Status</label>
    <select  class="form-control" name="status">
        <option class="Active" value="<%=j.getStatus()%>"><%=j.getStatus()%></option>
        <option class="Active" value="Active">Active...</option>
        <option class="Inactive" value="Inactive">Inactive</option>    
    </select>
    </div>  
</div> 
<div class="form-group col-md-4">
 <h5> Enter Description </h5>
 <textarea rows="6" cols="" name="desc" class="form-control"><%=j.getDescription()%></textarea>
 
</div>
      
  <button class="btn btn-success"> Update Application </button>  
  </form>
 </div>   
       

    </body>
</html>
