<%-- 
    Document   : more_view
    Created on : Apr 5, 2023, 3:22:09 PM
    Author     : Asus
--%>
<%@page import="com.DAO.jobDao"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.util.ArrayList" %>
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
        <title>More View</title>
    </head>
    <body>
          <%@include file="all_component/navbar.jsp" %>
         <c:if test="${empty userobj}">
            <c:redirect url="login.jsp"/>
        </c:if>
         
         <div class="container">
             <div class="row">
                 <div class="col-md-12">
                     <h5 class="text-center text-primary">All Jobs</h5>
                     <%
                         String loc = request.getParameter("loc");
                         String cat = request.getParameter("cat");
                         String msg = "";
                         jobDao dao = new jobDao(DBConnect.getConn());
                         List<Jobs> list = null;
                         if ("lo".equals(loc) && "ca".equals(cat)){
                         list = new ArrayList<Jobs>();
                         msg = "Job not Available";
                         }else if("lo".equals(loc) || "ca".equals(cat)){
                         list = dao.getJobsOrLocationAndCate(cat,loc);
                         }else{
                         list = dao.getJobsAndLocationAndCate(cat,loc);
                         }
                         if(list.isEmpty()){
                         %>
                         <h4 class="text-center text-danger">Job Not Available</h4>
                         <%
                     }
if(list!=null){
for (Jobs j: list){
%>
<div class="card mt-2">
    <div class="card-body">
        <div class="text-center text-primary"></div>
        <h6><%=j.getTitle()%></h6>
        <p><%=j.getDescription()%></p>
        <br>
        <div class="form-row">
                                  <div class="form-group col-md-3">
                                      <input type="text" class="form-control form-control-sm" value="Location: <%=j.getLocation()%>" readonly>
                                  </div>
                                  <div class="form-group col-md-3">
                                      <input type="text" class="form-control form-control-sm" value="Category <%=j.getCategory()%>" readonly>
                                  </div>
                                </div>  
                                  <h6>Publish Date:
                                      <%=j.getPDate()%>
                                  </h6>
                                  <div class="text-center">
                                      <a href="one_view.jsp?id=<%=j.getId()%>" class="btn btn-sm bg-success text-white">View More</a>
                      
                                  </div>
                               </div>
                            </div>
                                      <%
}
}else{
%>
<h4 class="text-center text-danger"><%=msg%></h4>
<%
    }
%>

        
                     
                 </div>
             </div>
         </div>
    </body>
</html>
