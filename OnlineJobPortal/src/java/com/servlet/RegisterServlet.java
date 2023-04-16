/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlet;

import com.DAO.UserDao;
import com.DB.DBConnect;
import com.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/add_user")
public class RegisterServlet extends HttpServlet{
    public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
        try{
            String name = req.getParameter("name");
            String qua = req.getParameter("qua");
            String email = req.getParameter("email");
            String ps = req.getParameter("ps");
            
            UserDao dao = new UserDao(DBConnect.getConn());
            User u = new User(name,email,ps,qua,"User");
            boolean f = dao.addUser(u);
            HttpSession session = req.getSession();
            if(f){
                session.setAttribute("succMsg","Registration Succesfull");
                res.sendRedirect("Registration.jsp");
            }
            else{
                session.setAttribute("succMsg","Some went wring");
                res.sendRedirect("Registration.jsp");
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
}
