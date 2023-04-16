/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlet;

import com.DAO.jobDao;
import com.DB.DBConnect;
import com.entity.Jobs;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/add_job")
public class AddPostServlet extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException{
        try{
            String title = req.getParameter("title");
            String location = req.getParameter("location");
            String category = req.getParameter("category");
            String status = req.getParameter("status");
            String desc = req.getParameter("desc");
            
            Jobs j = new Jobs();
            j.setTitle(title);
            j.setDescription(desc);
            j.setLocation(location);
            j.setCategory(category);
            j.setStatus(status);
            
            HttpSession session = req.getSession();
            
            jobDao dao = new jobDao(DBConnect.getConn());
            boolean f = dao.addJobs(j);
            if(f){
              session.setAttribute("msg", "Job Post Successfully..");
              res.sendRedirect("add_job.jsp");
            }
            else{
                session.setAttribute("msg", "SomeThing wnet Wrong");
              res.sendRedirect("add_job.jsp");
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
}
