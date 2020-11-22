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

/**
 *
 * @author amg05
 */
@WebServlet(name = "RegistroCont", urlPatterns = {"/RegistroCont"})
public class RegistroCont extends HttpServlet {

   /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String NEmail = request.getParameter("NEmail");
        String NUser = request.getParameter("NUser");
        String NPassword = request.getParameter("NPassword");
        Usuarios Nuevusuario = new Usuarios(NEmail, NUser, NPassword);
        if(UserDao.Registro(Nuevusuario) == 1){
            response.sendRedirect("Registrado.jsp");
        }else{
            response.sendRedirect("FalloRegistro.jsp");
        }
        //response.sendRedirect("index.jsp");
    }   

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
