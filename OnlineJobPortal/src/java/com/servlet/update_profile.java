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

@WebServlet("/update_profile")
public class update_profile extends HttpServlet {
    public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
        
        try{
            int id = Integer.parseInt(req.getParameter("id"));
            String name = req.getParameter("name");
            String qua = req.getParameter("qua");
            String email = req.getParameter("email");
            String ps = req.getParameter("ps");
            UserDao dao = new UserDao(DBConnect.getConn());
            User u = new User();
            u.setId(id);
            u.setName(name);
            u.setQualification(qua);
            u.setPassword(ps);
            u.setEmail(email);
            boolean f = dao.updateUser(u);
            HttpSession session = req.getSession();
            if(f){
              session.setAttribute("msg", "Profile Updated Successfully..");
              res.sendRedirect("home.jsp");
            }
            else{
                session.setAttribute("msg", "SomeThing wnet Wrong");
              res.sendRedirect("login.jsp");
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    
    
    
    
    }
    
}
