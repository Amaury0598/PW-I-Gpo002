/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mim.Control.Control;

import com.mycompany.mim.Control.Dao.UserDao;
import com.mycompany.mim.Control.Model.Usuarios;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "Config_UsuCont", urlPatterns = {"/Config_UsuCont"})
public class Config_UsuCont extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        int CId = (int)session.getAttribute("id");
        String CUsuario = request.getParameter("CUsuario");
        String CPassword = request.getParameter("CPassword");
        String CImage = request.getParameter("Imagen");
        String CDescr = request.getParameter("CDescr");
         Usuarios Cusuario = new Usuarios(CId ,CUsuario, CPassword, CImage, CDescr);
        if(UserDao.Config(Cusuario) == 1){
            session.setAttribute("id", Cusuario.getId());
            session.setAttribute("NUser", Cusuario.getNUser());
            session.setAttribute("CPassword", Cusuario.getNPassword());
            session.setAttribute("NImague", Cusuario.getNImague());
            session.setAttribute("NDescr", Cusuario.getNDescr());
            response.sendRedirect("ModProfile");
        }
        else{
            response.sendRedirect("FalloRegistro.jsp");
        }
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
