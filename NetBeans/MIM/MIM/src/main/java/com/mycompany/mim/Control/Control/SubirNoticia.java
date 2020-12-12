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
import javax.servlet.http.HttpSession;

/**
 *
 * @author amg05
 */
@WebServlet(name = "SubirNoticia", urlPatterns = {"/SubirNoticia"})
public class SubirNoticia extends HttpServlet {

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
        HttpSession session = request.getSession();
        int UsuN_id = (int)session.getAttribute("id");
        String N_Title = request.getParameter("TituloNoti");
        String N_Descr = request.getParameter("DescriNoti");
        String N_Content = request.getParameter("ContentNoti");
        String N_Img1 = request.getParameter("ImagenN1");
        String N_Img2 = request.getParameter("ImagenN2");
        String N_Img3 = request.getParameter("ImagenN3");
        String Cate = request.getParameter("categorianoti");
        String N_Vid = request.getParameter("Video");
        Noticias NuevaNoti = new Noticias(0, UsuN_id, N_Title, N_Descr, N_Content, N_Img1, N_Img2, N_Img3, Cate, N_Vid);
        if(Noticion.SubirNoti(NuevaNoti) == 1){
            response.sendRedirect("MainPageCont");
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