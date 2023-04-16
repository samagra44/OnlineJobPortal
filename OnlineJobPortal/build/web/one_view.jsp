<%-- 
    Document   : one_view
    Created on : Apr 5, 2023, 2:40:59 PM
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
        <title>View Job</title>
    </head>
    <body>
         <%@include file="all_component/navbar.jsp" %>
         <c:if test="${empty userobj}">
            <c:redirect url="login.jsp"/>
        </c:if>
        
        <div class="container">
             <div class="row">
                 <div class="col-md-12">
                     <%
                         int id = Integer.parseInt(request.getParameter("id"));
                         jobDao dao = new jobDao(DBConnect.getConn());
                         Jobs j = dao.getJobById(id);
                      %>
                      <div class="card mt-5">
                          <div class="card-body">
                              <div class="text-center text-primary">   
                              </div>
                              
                              <h6><%=j.getTitle()%></h6>
                              <p><%=j.getDescription()%>.</p>
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
                              
                          </div>
                      </div>
                 </div>
             </div>
        </div>
    </body>
</html>
