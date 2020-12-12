/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mim.Control.Control;

import com.mycompany.mim.Control.Dao.ComentariosDao;
import com.mycompany.mim.Control.Model.Comentarios;
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
@WebServlet(name = "ResponderComCont", urlPatterns = {"/ResponderComCont"})
public class ResponderComCont extends HttpServlet {

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
            int UsuCom_id_ = (int)session.getAttribute("id");
            String NotiCom_id = request.getParameter("VerNotiCom_ID");
            int NotiCom_id_I = Integer.parseInt(NotiCom_id);
            String Comment_id = request.getParameter("VerComment_ID");
            int Comment_id_I = Integer.parseInt(Comment_id);
            String C_Content = request.getParameter("Respuesta");        
         Comentarios NuevoCom = new Comentarios(Comment_id_I, NotiCom_id_I, UsuCom_id_, C_Content);
        if (ComentariosDao.SubirRespu(NuevoCom) == 1) {
            response.sendRedirect("InterNoti");
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

