/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mim.Control.Control;

import com.mycompany.mim.Control.Dao.CategoryDao;
import com.mycompany.mim.Control.Dao.ComentariosDao;
import com.mycompany.mim.Control.Dao.FavoriteDao;
import com.mycompany.mim.Control.Dao.Noticion;
import com.mycompany.mim.Control.Dao.UserDao;
import com.mycompany.mim.Control.Model.Category;
import com.mycompany.mim.Control.Model.Comentarios;
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
@WebServlet(name = "InterNoti", urlPatterns = {"/InterNoti"})
public class InterNoti extends HttpServlet {

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
        String Vernotis = request.getParameter("VerNoti_ID");
        if (Vernotis != null) {
            int ID_Vernoti = Integer.parseInt(Vernotis);
            Noticias VerNotticia = new Noticias(ID_Vernoti);
            Noticias Ponerrnoti = (Noticias) Noticion.VerNoti(VerNotticia);
            if (Ponerrnoti != null) {

                session.setAttribute("Noti_id", Ponerrnoti.getNoti_id());
            }
        }
        List<Favorites> favoritas = FavoriteDao.getFavs();
        request.setAttribute("Favorites", favoritas);
        List<Usuarios> usuarios = UserDao.getUsuariosL();
        request.setAttribute("UsuariosL", usuarios);
        List<Comentarios> comentarios = ComentariosDao.getNotis();
        request.setAttribute("Comentarios", comentarios);
        List<Noticias> noticias = Noticion.getNotis();
        request.setAttribute("Noticiones", noticias);
        List<Category> categories = CategoryDao.getCategories();
        request.setAttribute("Categories", categories);
        request.getRequestDispatcher("VerNoticia.jsp").forward(request, response);
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
