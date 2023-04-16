<%-- 
    Document   : edit_profile
    Created on : Apr 5, 2023, 6:50:33 PM
    Author     : Asus
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%@include file="all_component/aal_css.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile</title>
    </head>
    <body>
        
       <c:if test="${empty userobj}">
                <h4 class="text-center text-danger">${succMsg}</h4>
                <c:redirect url="succMsg"/>
                </c:if>
                <%@include file="all_component/navbar.jsp" %>
                <div class="container-fluid">
                     <div class="row p-4">
                          <div class="col-md-4 offset-md-4">
                               <div class="card">
                                   <div class="card-body">
                                        <div class="text-center">
                                            <h5>Edit Profile</h5>
                                        </div>
                                       
               <form action="update_profile" method="post">
                   <input type="hidden" name="id" value="${userobj.id}">
                <div class="form-group">  
                    <label> Enter Full Name </label>  
                    <input type="text" class="form-control form-control-sm" name="name" value="${userobj.name}">  
                </div>  
                <div class="form-group">  
                    <label>Enter Qualification </label>  

                    <input type="text" class="form-control form-control-sm" id="exampleInputPassword1" name="qua" value="${userobj.qualification}">  
                </div>  
               <div class="form-group">  
                    <label>Enter Email </label>  

                    <input type="email" class="form-control form-control-sm" id="exampleInputPassword1" name="email" value="${userobj.email}">  
                </div>
                
                <div class="form-group">  
                    <label>Enter Password </label>  

                    <input type="password" required="required" class="form-control form-control-sm" id="exampleInputPassword1" name="ps" value="${userobj.password}">  
                </div>
                  
                 <button type="submit" class="btn btn-primary btn-block badge-pill"> Update </button>  
            </form>  
                    
                </div>
                               </div>
                          </div>
                     </div>
                </div>
                <div style="margin-top: 50px;">
                     <%@include file="all_component/footer.jsp"%>
                </div>
    </body>
</html>
