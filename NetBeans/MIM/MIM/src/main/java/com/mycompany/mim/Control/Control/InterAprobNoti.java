/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mim.Control.Control;

import com.mycompany.mim.Control.Dao.CategoryDao;
import com.mycompany.mim.Control.Dao.Noticion;
import com.mycompany.mim.Control.Model.Category;
import com.mycompany.mim.Control.Model.Noticias;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author amg05
 */
@WebServlet(name = "InterAprobNoti", urlPatterns = {"/InterAprobNoti"})
public class InterAprobNoti extends HttpServlet {
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String Vernotis = request.getParameter("VerNoti_ID_Status");
        int ID_Vernoti =Integer.parseInt(Vernotis);  
        Noticias VerNotticia = new Noticias(ID_Vernoti);
        Noticias Ponerrnoti = (Noticias) Noticion.VerNoti(VerNotticia);
        if(Ponerrnoti != null){
            HttpSession session = request.getSession();
            session.setAttribute("Noti_id", Ponerrnoti.getNoti_id());
        }
        List<Noticias> noticias = Noticion.getNotis();
        request.setAttribute("Noticiones", noticias);
        List<Category> categories = CategoryDao.getCategories();
        request.setAttribute("Categories", categories);
     
        request.getRequestDispatcher("AprobacionStatus.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}