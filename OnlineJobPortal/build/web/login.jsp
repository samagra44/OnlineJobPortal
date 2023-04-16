<%-- 
    Document   : login
    Created on : Apr 3, 2023, 7:27:35 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="all_component/aal_css.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
         
    </head>
    <body>
        
        <%@include file="all_component/navbar.jsp" %>
        
        
<!--        <h1>Hello World!</h1>-->
<div class="pt-5">  
  <div class="global-container">  
    <div class="card login-form">  
    <div class="card-body">  
        <h3 class="card-title text-center"> Login Here </h3>  
        <div class="card-text"> 
            <c:if test="${not empty userobj}">
                <h4 class="text-center text-danger">${succMsg}</h4>
                <c:remove var="succMsg"/>
            </c:if>
            <form action="login" method="post">  
                <div class="form-group">  
                    <label for="exampleInputEmail1"> Enter Email address </label>  
                    <input type="text" class="form-control form-control-sm" name="em">  
                </div>  
                <div class="form-group">  
                    <label for="exampleInputPassword1">Enter Password </label>  
                    <a href="#" style="float:right;font-size:12px;"> Forgot password? </a>  
                    <input type="password" class="form-control form-control-sm" id="exampleInputPassword1" name="ps">  
                </div>  
                <button type="submit" class="btn btn-primary btn-block"> Sign in </button>  
                  
                <div class="sign-up">  
                    Don't have an account? <a href="Registration.jsp"> Create One </a>  
                </div>  
            </form>  
        </div>  
    </div>  
</div>  
</div>  
    </body>
</html>
