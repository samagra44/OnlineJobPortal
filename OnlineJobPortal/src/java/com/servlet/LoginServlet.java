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

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException{
        try{
            String em = req.getParameter("em");
            String ps = req.getParameter("ps");
            User u = new User();
            HttpSession session = req.getSession();
            if("com".equals(em) && "admin".equals(ps)){
                session.setAttribute("userobj", u);
                u.setRole("admin");
                res.sendRedirect("admin.jsp");
            }
            else{
                UserDao dao = new UserDao(DBConnect.getConn());
                User user = dao.login(em,ps);
                if(user!=null)
                {
                    session.setAttribute("userobj", user);
                    res.sendRedirect("home.jsp");
                    
                }
                else{
                session.setAttribute("succMsg", "Invalid Email & Password");
                    res.sendRedirect("login.jsp");
            }
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
}
