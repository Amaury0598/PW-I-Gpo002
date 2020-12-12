<%-- 
    Document   : NavBar
    Created on : 22 nov 2020, 19:19:30
    Author     : amg05
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.mim.Control.Model.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Category> categories = (List<Category>) request.getAttribute("Categories");
%>
<!DOCTYPE html>

<nav

    class="navbar navbar-expand-lg mx-sm-auto navbar-light mr-auto"
    style="background-color:#cf3b3b; padding-top: 0rem; padding-bottom: 0rem;">
    <div class="container-fluid">
        <a class="Logo nabvar-brand text-light text-decoration-none" href="MainPageCont" style="font-size: 22px;">
            <img src="Img/Logo-1-White.png" width="60" height="60" class="d-inline-block" alt="Logo" loading="lazy">
            <b style="color: white;">Music In Movies</b>
        </a>  
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-target="#navi">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navi">
            <ul class="navbar-nav me-auto ml-md-auto">  

                <% if (session.getAttribute("NUser") == null) {%>

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
                <% } else {%>
                <div style="padding-right: 10px">
                    <img src="Img/<%= session.getAttribute("NImague")%>" alt="" class="bd-placeholder-img rounded-circle" width="48" height="48">
                </div>
                <li class="nav-item dropdown" style="padding-top: 6px">
                    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" data-display="static" aria-haspopup="true" aria-expanded="false" 
                            style="color: white;"> <%= session.getAttribute("NUser")%>
                    </button>
                    <div class="dropdown-menu" >   
                        <form action="ModProfile" method="GET">
                            <input type="submit" class="dropdown-item" value="Modificar">
                        </form>
                        <form action="LogOffCont" method="POST">
                            <input type="submit" class="dropdown-item" value="Salir">
                        </form>   
                    </div>     
                </li>    

                <% if (session.getAttribute("NUser") != null) {
                        if (session.getAttribute("Puesto").equals(2)) {%>

                <div style="padding-top: 5px; padding-left: 5px; color:white">
                    <form action="SubmitNews" method="GET">
                        <button class="btn btn-info my-2 my-xl-0" type="submit">
                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pen" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M13.498.795l.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>   
                            </svg>
                        </button>
                    </form>
                </div>

                <% } else {
                    if (session.getAttribute("Puesto").equals(3)) { %> 


                <div style="padding-top: 5px; padding-left: 5px; color:white">
                    <form action="SubmitNews" method="GET">
                        <button class="btn btn-info my-2 my-xl-0" type="submit">
                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pen" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" d="M13.498.795l.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>   
                            </svg>
                        </button>
                    </form>
                </div>
                <div style="padding-top: 5px; padding-left: 5px; color:white">
                    <form action="AprovarContr" method="GET">
                        <button class="btn btn-info my-2 my-xl-0" type="submit">
                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-journal-check" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                            <path d="M3 0h10a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-1h1v1a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v1H1V2a2 2 0 0 1 2-2z"/>
                            <path d="M1 5v-.5a.5.5 0 0 1 1 0V5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V8h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0v.5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1z"/>
                            <path fill-rule="evenodd" d="M10.854 6.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 8.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                            </svg>
                        </button>
                    </form>
                </div>
                <% }%>
                <% }%>
                <% }%>
                <% }%>

                <div clas="dropdown" style="padding-left: 20px">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false" style="color: white;"><b>Categorías</b></a>  
                    <li class="nav-item dropdown">
                        <div class="dropdown-menu">
                            <%
                                for (Category category : categories) {
                            %>  
                            <a class="dropdown-item" href="#" aria-haspopup="true" aria-expanded="false" style="color: black;"> <%= category.getName_Cat()%> </a>
                            <%
                                }
                            %>
                        </div>
                    </li>
                </div>
                <form action="BuscarCont" method="GET" class="form-inline" style="padding-left: 20px">
                    <input class="form-control mr-xl-2" type="text" name="BuscarNoti" placeholder="Buscar Película/Artista" aria-label="Search">
                    <button class="btn btn-success my-2 my-xl-0" type="submit">Buscar</button>
                </form>
            </ul> 
        </div>
    </div>
</nav>