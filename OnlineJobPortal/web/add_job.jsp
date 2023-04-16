<%-- 
    Document   : add_job
    Created on : Apr 4, 2023, 10:47:08 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="all_component/aal_css.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
      .div-inline{
    display:inline-block;
}
        </style>
    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %>
        <c:if test="${not empty succMsg}">
            <div class="alert alert-success" role="alert">${succMsg}</div>
            <c:remove var="succMsg"/>
        </c:if>
        <div class="container mt-3">
  <h2 class="text-center">Bootstrap 4 Stacked Form Example</h2>
  <form action="add_job" method="post">
    <div class="form-group">
      <h5> Enter Title </h5>
      <input type="text" class="form-control" id="email" placeholder="Enter UserName" name="title">
    </div>
      
   
<div class="form-row">
    <div class="form-group col-md-4">

    <label>Location</label>
    <select name="location" class="custom-select">
        <option selected>Choose...</option>
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
        <option selected>Choose...</option>
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
        <option class="Active" value="Active">Active...</option>
        <option class="Inactive" value="Inactive">Inactive</option>    
    </select>
    </div>  
</div> 
<div class="form-group col-md-4">
 <h5> Enter Description </h5>
 <textarea rows="6" cols="" name="desc" class="form-control"></textarea>
 
</div>
      
  <button class="btn btn-success"> Send application </button>  
  </form>
 </div>   
       

    </body>
</html>
