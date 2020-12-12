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
@WebServlet(name = "LogInCont", urlPatterns = {"/LogInCont"})
public class LogInCont extends HttpServlet {

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
        String NPassword = request.getParameter("NPassword");
        Usuarios Iusuario = new Usuarios(NEmail, NPassword);
        Usuarios IngresaUsuario = UserDao.LogIn(Iusuario);
        if(IngresaUsuario == null){
           response.sendRedirect("ErrorIngreso.jsp");
        }else{ 
            HttpSession session = request.getSession();
            session.setAttribute("id", IngresaUsuario.getId());
            session.setAttribute("NEmail", IngresaUsuario.getNEmail());
            session.setAttribute("NUser", IngresaUsuario.getNUser());
            session.setAttribute("NImague", IngresaUsuario.getNImague());
            session.setAttribute("NDescr", IngresaUsuario.getNDescr());
            session.setAttribute("Puesto", IngresaUsuario.getPuesto());
            response.sendRedirect("MainPageCont");
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
