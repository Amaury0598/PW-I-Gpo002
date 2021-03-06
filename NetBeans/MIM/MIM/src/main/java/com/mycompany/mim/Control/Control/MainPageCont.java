/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mim.Control.Control;

import com.mycompany.mim.Control.Dao.CategoryDao;
import com.mycompany.mim.Control.Dao.FavoriteDao;
import com.mycompany.mim.Control.Dao.Noticion;
import com.mycompany.mim.Control.Dao.UserDao;
import com.mycompany.mim.Control.Model.Category;
import com.mycompany.mim.Control.Model.Favorites;
import com.mycompany.mim.Control.Model.Noticias;
import com.mycompany.mim.Control.Model.Usuarios;
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
@WebServlet(name = "MainPageCont", urlPatterns = {"/MainPageCont"})
public class MainPageCont extends HttpServlet {

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
        HttpSession session = request.getSession();
        if(session.getAttribute("id") == null){
        session.setAttribute("id", 4);}
        List<Favorites> favoritas = FavoriteDao.getFavs();
        request.setAttribute("Favorites", favoritas);
        List<Noticias> noticias = Noticion.getNotis();
        request.setAttribute("Noticiones", noticias);
        List<Category> categories = CategoryDao.getCategories();
        request.setAttribute("Categories", categories);
        request.getRequestDispatcher("index.jsp").forward(request, response);
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
