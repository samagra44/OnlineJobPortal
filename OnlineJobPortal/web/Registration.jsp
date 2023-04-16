<%-- 
    Document   : Registration
    Created on : Apr 4, 2023, 10:12:42 AM
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
        <title>Sign Up</title>
    </head>
    <body>
         <%@include file="all_component/navbar.jsp" %>
         <h1 class="text-dark text-center mb-3"> Online Job Registration form </h1>
         <c:if test="${not empty succMsg}">
             <h4 class="text-center text-success">${succMsg}</h4>
             <c:remove var="succMsg"/>
         </c:if>
         <div class="container h-100">  
    <div class="row d-flex justify-content-center align-items-center h-100">  
      <div class="col-xl-9">  
          
        <div class="card" style="border-radius: 15px;">  
          <div class="card-body"> 
            <div class="row align-items-center pt-4 pb-3">  
              <div class="col-md-3 ps-5">
                  <form action="add_user" method="post" name="myform" onsubmit="return validateName()">
                <h6 class="mb-0"> Full name </h6>  
              </div>  
              <div class="col-md-9 pe-5">  
                  <input type="text" class="form-control form-control-lg" name="name" />  
              </div>  
            </div> 
              
               <hr class="mx-n3">  
            <div class="row align-items-center py-3">  
              <div class="col-md-3 ps-5">  
                <h6 class="mb-0"> Enter Qualification </h6>  
              </div>  
              <div class="col-md-9 pe-5">  
                <input type="text" class="form-control form-control-lg" placeholder="Qualification" name="qua" />  
              </div>  
            </div>  
               
            <hr class="mx-n3">  
            <div class="row align-items-center py-3">  
              <div class="col-md-3 ps-5">  
                <h6 class="mb-0"> Email address </h6>  
              </div>  
              <div class="col-md-9 pe-5">  
                <input type="email" class="form-control form-control-lg" placeholder="dummy@example.com" name="email" />  
              </div>  
            </div> 
            
    <hr class="mx-n3">  
            <div class="row align-items-center py-3">  
              <div class="col-md-3 ps-5">  
                <h6 class="mb-0"> Enter Password</h6>  
              </div>  
              <div class="col-md-9 pe-5">  
                  <input type="password" class="form-control form-control-lg" name="ps" id="mtInput" /> 
                  <br>
       Show Password <input type="checkbox" onclick="myfun()">
              </div> 
                 
            </div>
    
            <hr class="mx-n3">  
            <div class="px-5 py-4">  
              <button type="submit" class="btn btn-primary btn-lg text-center"> Send application </button>  
            </div> 
         </form>
          </div>  
            
        </div>  
      </div>  
    </div>  
  </div>  
             <script>
                 function myfun(){
                     var x = document.getElementById("mtInput");
                     if(x.type ==="password"){
                         x.type = "text";
                     }else{
                         x.type = "password";
                     }
                 }
                 
                 function validateName(){
                let x = document.forms["myform"]["name"].value;
                if(x === ""){
                    alert("Name Field cannot be empty");
                    return false;
                }
                let y = document.forms["myform"]["password"].value;
                if(y === ""){
                    alert("Password Field cannot be empty");
                    return false;
                }
                
                let z = document.forms["myform"]["qua"].value;
                if(z === ""){
                    alert("Qualification Field cannot be empty");
                    return false;
                }
                
                 let e = document.forms["myform"]["email"].value;
                if(e === ""){
                    alert("Email Field cannot be empty");
                    return false;
                }
            }
             </script>
 </body>
</html>
