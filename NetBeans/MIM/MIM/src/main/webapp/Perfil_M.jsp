<%-- 
    Document   : Perfil_M
    Created on : 23 nov 2020, 18:13:54
    Author     : amg05
--%>

<%@page import="com.mycompany.mim.Control.Model.Favorites"%>
<%@page import="com.mycompany.mim.Control.Model.Noticias"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Noticias> noticias = (List<Noticias>) request.getAttribute("Noticiones");
%>
<%
    List<Favorites> favoritas = (List<Favorites>) request.getAttribute("Favorites");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
              integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
                integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
                integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>

        <link rel="stylesheet" href="Assets/css/main.css">

        <title>Music in Movies</title>
    </head>

    <body>

        <jsp:include page="NavBar.jsp"/>

        <div class="container" style="padding-top: 1rem; padding-bottom: 1rem;">
            <div class="jumbotron Jumps-B">

                <h3>Configurar</h3>
                <form action="Config_UsuCont" method="POST">
                    <div class="row" style="padding-top: 1rem;">

                        <div class="col-lx-12 col-md-8">
                            <a aria-haspopup="true" aria-expanded="false"> ID del Usuario: <input type="text" name="ANUser" class="form-control" style="margin-bottom: 3px;"
                                                                                                  placeholder="<%= session.getAttribute("id")%>" readonly></a>
                            <a aria-haspopup="true" aria-expanded="false"> Nombre del Usuario: <input type="text" name="ANUser" class="form-control" style="margin-bottom: 3px;"
                                                                                                      placeholder="<%= session.getAttribute("NUser")%>" readonly></a>
                            <a aria-haspopup="true" aria-expanded="false"> Correo del Usuario: <input type="text" name="ANUser" class="form-control" style="margin-bottom: 5px;"
                                                                                                      placeholder="<%= session.getAttribute("NEmail")%>" readonly></a>
                            <input type="text" name="CUsuario" class="form-control" style="margin-bottom: 1rem;"
                                   placeholder="Nuevo Nombre de Usuario"></a>
                            <input type="password" name="CPassword" class="form-control" placeholder="Nueva Contraseña">
                            <div class="row" style="padding-top: 1rem; padding-bottom: 1rem;">
                                <div class="col col-md-6">
                                    <input type="text" class="form-control" placeholder="Nuevo Avatar" readonly>
                                </div>
                                <div class="col-6" style="padding-left: .1rem;">
                                    <input class="btn btn-info btn-md " style="opacity: 90%;" name="Imagen" type="file"/>
                                    <a>Cargar Archivo</a>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6 col-sm-6">
                                <div class="card" style="width: 12rem;">
                                    <img src="Img/<%= session.getAttribute("NImague")%>" class="card-img-top" alt="Avatar-Icon">
                                </div>
                            </div>
                        </div>
                        <div class="container">
                            <div class="form-group">
                                <label for="Comments" style="font-size: 20px;">Agregar Descripción</label>
                                <textarea class="form-control" id="Comments" name="CDescr" rows="3"><%= session.getAttribute("NDescr")%></textarea>

                                <button class="btn btn-info btn-md" style="margin-top: .5rem; opacity: 75%;" type="submit">Guardar</button>             
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <% if (!favoritas.isEmpty()) {%>
        <div class="container" style="padding-top: 1rem;">
            <h3>Tus Notícias Guardadas</h3>
        </div>
        <div class="container" style="padding-top: 1rem;">
            <div class="row">
                <% for (Favorites favs : favoritas) {
                for (Noticias VetNoti : noticias) {%>
                <% if ((session.getAttribute("id").equals(favs.getID_FavUser())) && (VetNoti.getNoti_id() == favs.getID_FavNoti())) {%>

                <div class="col-md-3">
                    <form action="InterNoti" method="GET">
                        <div class="card mb-4 shadow">
                            <img src="Img/<%= VetNoti.getImg_1()%>" class="card-img-top Card-Img" alt="SW-S">
                            <div class="card-body">
                                <h3 class="card-tittle"><%= VetNoti.getN_Title()%></h3>
                                <p class="card-text"><%= VetNoti.getN_Descsr()%> </p>
                                <input type="hidden" name="VerNoti_ID" class="form-control" style="margin-bottom: 3px;" value="<%= VetNoti.getNoti_id()%>">
                                <button class="btn btn-success" type="submit">Ir a la Noticia</button>   
                            </div>
                        </div>
                    </form>
                </div>
                <% }
                        }
                    }
                } else {%>

                <div class="container" style="padding-top: 1rem;">
                    <h3>Aún no tienes noticias Guardadas</h3>
                </div>

                <% }%>
            </div>
        </div>   

        <% if (noticias != null) {%>
        <div class="container" style="padding-top: 1rem;">
            <h3>Tus Notícias</h3>
        </div>
        <div class="container" style="padding-top: 1rem;">
            <div class="row">
                <% for (Noticias VetNoti : noticias) { %>
                <% if (session.getAttribute("id").equals(VetNoti.getUsu_id())) {%>
                <div class="col-md-3">
                    <form action="InterNoti" method="GET">
                        <div class="card mb-4 shadow">
                            <img src="Img/<%= VetNoti.getImg_1()%>" class="card-img-top Card-Img" alt="SW-S">
                            <div class="card-body">
                                <h3 class="card-tittle"><%= VetNoti.getN_Title()%></h3>
                                <p class="card-text"><%= VetNoti.getN_Descsr()%> </p>
                                <input type="hidden" name="VerNoti_ID" class="form-control" style="margin-bottom: 3px;" value="<%= VetNoti.getNoti_id()%>">
                                <% if (VetNoti.getN_Status() == 2) { %>
                                <button class="btn btn-success" type="submit">Ver Aceptada</button>   
                                <%} else if (VetNoti.getN_Status() == 1) {%>
                                <button class="btn btn-warning" type="submit">Ver Pendiente</button>
                                <%} else if (VetNoti.getN_Status() == 3) {%>
                                <p class="card-text"><%= VetNoti.getComent_Recha() %> </p>
                                <button class="btn btn-danger" type="submit">Ver Rechazada</button>  
                                <%}%>
                            </div>
                        </div>
                    </form>
                </div>
                <% }
                    }
                } else {%>

                <div class="container" style="padding-top: 1rem;">
                    <h3>Aún no tienes noticias</h3>
                </div>


                <% }%>
            </div>
        </div>                               

        <div class="container-fluid" style="padding-top: 17.7rem;">
            <hr class="my-2">
            <div class="row">
                <div class="col-md-10">
                    <p>© 2020 MusicinMovies.Inc</p>
                </div>
                <div class="col-sm-2">
                    <img class="img-fluid" src="Img/FB-I-Med.png" width="35px" height="35px" alt="FB-I">
                    <img class="img-fluid" src="Img/Twitter-I-Med.png" width="35px" height="35px" alt="TW-I-I">
                    <img class="img-fluid" src="Img/YT-I-Med.png" width="35px" height="35px" alt="YT-I">
                    <p style="text-align: center;">Help</p>
                </div>
            </div>
        </div>   
    </body>
</html>
