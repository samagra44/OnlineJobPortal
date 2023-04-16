<%-- 
    Document   : index.jsp
    Created on : Apr 3, 2023, 12:39:42 PM
    Author     : Asus
--%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="all_component/aal_css.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Job Portal</title>
        <style>
  .back-img{
    background: url("img/img_1.png");
    width: 100%;
    height: 80vh;
    background-repeat: no-repeat;
    background-size: cover;
}
        </style>
    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %>
        <% // Connection conn = DBConnect.getConn();
        //out.println(conn);
        
        %>
        <div class="container-fluid back-img">
            <div class="text-center">
                <h1 class="text-black p-4">
                    <i class="fa-solid fa-book"></i>  Online Job Portal
                </h1>
            </div>
        </div>
        <%@include file="all_component/footer.jsp"%>
    </body>
</html>
