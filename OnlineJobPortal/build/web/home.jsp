<%-- 
    Document   : home
    Created on : Apr 5, 2023, 12:45:08 PM
    Author     : Asus
--%>
<%@page import="com.DAO.jobDao"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Jobs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@include file="all_component/aal_css.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body style="background-color: #f0f1f2;">
       <c:if test="${empty userobj}">
            <c:redirect url="login.jsp"/>
        </c:if>
         <%@include file="all_component/navbar.jsp" %>
         <div class="container">
             <div class="row">
                 <div class="col-md-12">
                     <h5 class="text-center text-primary">All Jobs</h5>
                     
                     <c:if test="${not empty succMsg}">
                         <h4 class="text-center text-danger">${succMsg}</h4>
                         <c:remove var="succMsg"/>
                     </c:if>
                     
                     <div class="card">
                         <div class="card-body">
                             <form class="form-inline" action="more_view.jsp" method="get">
                                 <div class="form-group col-md-5 mt-1">
                                     <h5>Location</h5>
                                 </div> 
                                 <div class="form-group col-md-5 mt-1">
                                     <h5>Category</h5>
                                 </div>
                                 
                                 <div class="form-group col-md-5">
                                     <select name="loc" class="custom-select">
                                         <option selected value="lo">Choose..</option>
                                         <option value="Odisha">Odisha</option>
                                         <option value="Jharkhand">Jharkhand</option>
                                         <option value="Gujrat">Gujrat</option>
                                         <option value="Bhuvneshwar">Bhuvneshwar</option>
                                         <option value="Delhi">Delhi</option>
                                         <option value="Bengluru">Bengluru</option>
                                         <option value="Chennai">Chennai</option>
                                         <option value="Hydrabad">Hydrabad</option>
                                     </select>
                                 </div>
                                 
                                 <div class="form-group col-md-5">
                                     <select name="cat" class="custom-select">
                                         <option selected value="ca">Choose..</option>
                                         <option value="IT">IT</option>
                                         <option value="Developer">Developer</option>
                                         <option value="Banking">Banking</option>
                                         <option value="Engineer">Engineer</option>
                                         <option value="Teacher">Teacher</option>  
                                     </select>
                                 </div>
                                 <button class="btn btn-success">Submit</button>
                             </form>
                         </div>
                         
                     </div>
                     
                     <%
                         jobDao dao = new jobDao(DBConnect.getConn());
                         List<Jobs> list = dao.getAllJobsForUser();
                         for(Jobs j: list){
                         %>
                         <div class="card mt-2">
                             <div class="card-body">
                                 <div class="text-center text-primary">
                                 </div>
                                 <h6><%=j.getTitle()%></h6>
                                 <%
                                         if(j.getDescription().length() > 0 && j.getDescription().length() < 120){
                                         %>
                                         <p><%=j.getDescription()%></p>
                                         <%
                                     }else{
%>
<p><%=j.getDescription().substring(0,120)%>...</p>
<%
}
%>
<br>
<div class="form-row">
    <div class="form-group col-md-3">
        <input type="text" class="form-control form-control-sm" value="Location: <%=j.getLocation()%>" readonly>
    </div>
    <div class="form-group col-md-3">
        <input type="text" class="form-control form-control-sm" value="Category <%=j.getCategory()%>" readonly>
    </div>
</div>
    <h6>
        Publish Date:
        <%=j.getPDate().toString()%>
    </h6>
    <div class="text-center">
        <a href="one_view.jsp?id=<%=j.getId()%>" class="btn btn-sm bg-success text-white">View More</a>
                             </div>
                         </div>
                 </div>
        <%
}
%>
                         
                 </div>
             </div>
         </div>
         
    </body>
</html>
