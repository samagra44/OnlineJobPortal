/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/logout")
public class logoutServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException{
        HttpSession session = req.getSession();
        
        session.removeAttribute("userobj");
        
//        session.setAttribute("succMsg", "Logout Sucessfull");
        res.sendRedirect("login.jsp");
    }
}
    
