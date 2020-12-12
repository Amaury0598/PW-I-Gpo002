/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mim.Control.Control;

import com.mycompany.mim.Control.Dao.Noticion;
import com.mycompany.mim.Control.Model.Noticias;
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
@WebServlet(name = "AceptaNoti", urlPatterns = {"/AceptaNoti"})
public class AceptaNoti extends HttpServlet {

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
        String Vernotis = request.getParameter("VerNoti_ID_Status_2");
        int ID_Vernoti = Integer.parseInt(Vernotis);
        Noticias VerNotticia = new Noticias(ID_Vernoti);
        if (Noticion.AceptoNoti(VerNotticia) == 1) {
            response.sendRedirect("MainPageCont");
        } else {
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
