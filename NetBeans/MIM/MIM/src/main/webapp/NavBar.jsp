<%-- 
    Document   : NavBar
    Created on : 22 nov 2020, 19:19:30
    Author     : amg05
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.mim.Control.Model.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Category> categories = (List<Category>)request.getAttribute("Categories");
%>
<!DOCTYPE html>
<nav class="navbar navbar-expand-md mx-sm-auto navbar-light mr-auto"
        style="background-color:#cf3b3b; padding-top: 0rem; padding-bottom: 0rem;">
        <a class="Logo nabvar-brand text-light text-decoration-none" href="#" style="font-size: 22px;">
            <img src="Img/Logo-1-White.png" width="60" height="60" class="d-inline-block" alt="Logo" loading="lazy">
            <b style="color: white;">Music In Movies</b>
        </a>  

        <ul class="navbar-nav ml-md-auto">
                     <%
            for(Category category : categories) {
         %>  
         <li class="nav-item">
             <a class="nav-link" href="#" aria-haspopup="true" aria-expanded="false" style="color: white;"> <%= category.getName_Cat() %> </a>
         </li>
         <%
             }
         %>
            <li class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                    aria-expanded="false" style="color: white;"><b>Ingresar/Registrarse</b>
                </a>  
                <div class="dropdown-menu">
                    <form action="LogInCont" method="POST">
                    <div class="container">
                        <label for="I-mail">E-mail</label>
                        <input type="email" name="NEmail" class="form-control" id="I-email">
                        <label for="I-Contra">Contraseña</label>
                        <input type="password" name="NPassword" class="form-control" id="I-Contra">
                        <button class="btn btn-success my-2 my-xl-6" type="submit">Ingresar</button>                            
                    </div>
                    </form>                    
                    <div class="container">
                        <a href="Registro.jsp">     
                    <button class="btn btn-info my-2 my-xl-6" type="submit">Registrarse</button>
                        </a>    
                    </div>                     
                </div>             
            </li>   
               <li class="nav-item dropdown"s>                      
                   <div class="btn-group">
                        <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" data-display="static" aria-haspopup="true" aria-expanded="false" style="color: white;"> Perfil
                        </button>
                        <div class="dropdown-menu dropdown-menu-left dropdown-menu-lg-left">
                          <a class="nav-link" href="Perfil_M.jsp" aria-haspopup="true" aria-expanded="false">Modificar </a>
                          <a class="nav-link" href="#" aria-haspopup="true" aria-expanded="false">Salir </a>
                        </div>
                  </div>
            </li>   
            <form class="form-inline" style="padding-left: 20px">
                <input class="form-control mr-xl-2" type="text" placeholder="Buscar Película/Artista" aria-label="Search">
                <button class="btn btn-success my-2 my-xl-0" type="submit">Buscar</button>
            </form>
        </ul>      
    </nav>