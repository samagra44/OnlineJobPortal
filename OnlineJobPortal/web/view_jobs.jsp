<%-- 
    Document   : view_jobs
    Created on : Apr 4, 2023, 1:57:33 PM
    Author     : Asus
--%>
<%@page import="com.DAO.jobDao"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Jobs"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
         <%@include file="all_component/aal_css.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Jobs</title>
    </head>
    <body>
        <c:if test="${userobj.role ne 'admin'}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
         <%@include file="all_component/navbar.jsp" %>
         <div class="container">
             <div class="row">
                 <div class="col-md-12">
                     <h5 class="text-center text-primary">
                         All Jobs
                     </h5>
                     
                     <%
                            jobDao dao = new jobDao(DBConnect.getConn());
                             List<Jobs> list = dao.getAllJobs();
                             for(Jobs j:list){
                             %>
                             <div class="card mt-2">
                         <div class="card-body">
                             <div class="text-center text-primary">
                             </div>
                             
                            
                             <h6><%=j.getTitle() %></h6>
                             <p><%= j.getDescription()%></p>
                             <br>
                             <div class="form-row">
                                 <div class="form-group col-md-3">
                                     <input type="text" class="form-control form-control-sm" value="Location: <%=j.getLocation()%>">
                                 </div>
                                 
                                 <div class="form-group col-md-3">
                                     <input type="text" class="form-control form-control-sm" value="Category:<%=j.getCategory()%>">
                                 </div>
                                 
                                 <div class="form-group col-md-3">
                                     <input type="text" class="form-control form-control-sm" value="Status:<%=j.getStatus()%>">
                                 </div>
                             </div>
                             <h6>Publish Date: <%=j.getPDate()%></h6>
                             <div class="text-center">
                                 <a href="edit_job.jsp?id=<%=j.getId()%>" class="btn btn-sm bg-success text-white">Edit</a>
                                 <a href="delete?id=<%=j.getId()%>" class="btn btn-sm bg-danger text-white">Delete</a>
                             </div>
                         </div>
                     </div>
                             
                             <%
                             }
                             %>
                             
<!--                     <div class="card mt-2">
                         <div class="card-body">
                             <div class="text-center text-primary">
                             </div>
                             
                            
                             <h6>Title</h6>
                             <p>Description</p>
                             <br>
                             <div class="form-row">
                                 <div class="form-group col-md-3">
                                     <input type="text" class="form-control form-control-sm" value="Location:">
                                 </div>
                                 
                                 <div class="form-group col-md-3">
                                     <input type="text" class="form-control form-control-sm" value="Category:">
                                 </div>
                                 
                                 <div class="form-group col-md-3">
                                     <input type="text" class="form-control form-control-sm" value="Status">
                                 </div>
                             </div>
                             <h6>Publish Date: 2023-04-04</h6>
                             <div class="text-center">
                                 <a href="#" class="btn btn-sm bg-success text-white">Edit</a>
                                 <a href="#" class="btn btn-sm bg-danger text-white">Delete</a>
                             </div>
                         </div>
                     </div>-->
                 </div>
             </div>
         </div>
    </body>
</html>
