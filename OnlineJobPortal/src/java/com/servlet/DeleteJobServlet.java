/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlet;

import com.DAO.jobDao;
import com.DB.DBConnect;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/delete")
public class DeleteJobServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException{
        try{
            int id = Integer.parseInt(req.getParameter("id"));
            jobDao dao = new jobDao(DBConnect.getConn());
            boolean f = dao.deleteJobs(id);
            
            HttpSession session = req.getSession();
            if(f){
              session.setAttribute("msg", "Job Updated Successfully..");
              res.sendRedirect("view_jobs.jsp");
            }
            else{
                session.setAttribute("msg", "SomeThing wnet Wrong");
              res.sendRedirect("view_jobs.jsp");
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
