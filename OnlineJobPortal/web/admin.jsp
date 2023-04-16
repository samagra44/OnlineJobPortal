<%-- 
    Document   : admin
    Created on : Apr 4, 2023, 10:35:26 AM
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
        <title>Admin Page</title>
        <style type="text/css">
            .back-img{
                background: url("img/admin.png");
                height: 90vh;
                width: 100%;
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>
    </head>
    <body>
        <c:if test="${userobj.role ne 'admin'}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        <%@include file="all_component/navbar.jsp" %>
        <div class="container-fluid back-img">
            <div class="text-center">
                <h1 class="text-black p-4">Welcome admin</h1>
            </div>
        </div>
    </body>
</html>
