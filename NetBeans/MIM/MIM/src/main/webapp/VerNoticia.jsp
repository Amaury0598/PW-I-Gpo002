<%-- 
    Document   : VerNoticia
    Created on : 8 dic 2020, 15:09:35
    Author     : amg05
--%>

<%@page import="com.mycompany.mim.Control.Model.Favorites"%>
<%@page import="com.mycompany.mim.Control.Model.Usuarios"%>
<%@page import="com.mycompany.mim.Control.Model.Comentarios"%>
<%@page import="com.mycompany.mim.Control.Model.Noticias"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    List<Noticias> noticias = (List<Noticias>) request.getAttribute("Noticiones");
%>
<%
    List<Comentarios> comentarios = (List<Comentarios>) request.getAttribute("Comentarios");
%>
<%
    List<Usuarios> usuarios = (List<Usuarios>) request.getAttribute("UsuariosL");
%>
<%
    List<Favorites> favoritas = (List<Favorites>) request.getAttribute("Favorites");
%>
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

        <% boolean guardada = false; %>
        <% for (Noticias VetNoti : noticias) {%> 
        <% if (session.getAttribute("Noti_id").equals(VetNoti.getNoti_id())) {%>
        <% for (Usuarios Autor : usuarios) {%><% if (VetNoti.getUsu_id() == Autor.getId()) {%>
        <% if (session.getAttribute("id").equals(4)) {%>  


        <div class="container" style="padding-top: .5rem; padding-bottom: .5rem;">
            <div class="container "
                 style="padding-top: .3rem;padding-bottom: .3rem; border-top-left-radius: 10px; border-top-right-radius: 10px; background-color: rgba(29, 29, 29, 0.849);">
                <h1 style="margin-bottom: 0rem; color: rgb(255, 223, 197);"><%= VetNoti.getN_Title()%></h1>
            </div>  
            <div class="jumbotron Jumps-B">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-0">
                            <img class="Search-Img" src="Img/<%= VetNoti.getImg_1()%>" alt="TLK-L">
                        </div>
                        <div class="col-8">
                            <h1>Autor - <%= Autor.getNUser()%></h1>
                        </div>
                        <div class="col-1">
                            <h4><br>Puntaje: <%= VetNoti.getCalif()%>/10</h4>
                        </div>
                    </div>

                    <hr class="my-2">
                    <h1><%= VetNoti.getN_Title()%></h1><p><%= VetNoti.getN_Descsr()%></p> 
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="card mb-4 shadow">
                                    <img src="Img/<%= VetNoti.getImg_2()%>" class="card-img-top Card-Img" alt="Color">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card mb-4 shadow">
                                    <img src="Img/<%= VetNoti.getImg_3()%>" class="card-img-top Card-Img" alt="Color">
                                </div>
                            </div>
                        </div>
                    </div>
                    <p style="font-size: 20px;"><%= VetNoti.getN_Content()%></p>
                    <div class="ratio ratio-16x9">
                        <iframe src="Videos/<%= VetNoti.getVid_1()%>" title="video" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>

        <% } else { %>
        <% if (favoritas != null) {
                for (Favorites favs : favoritas) {%>
        <% if ((session.getAttribute("id").equals(favs.getID_FavUser())) && (VetNoti.getNoti_id() == favs.getID_FavNoti())) {
                guardada = true;
            } else {
        %>
        <% }
            } %>
        <% if (guardada) {%>


        <div class="container" style="padding-top: .5rem; padding-bottom: .5rem;">
            <div class="container "
                 style="padding-top: .3rem;padding-bottom: .3rem; border-top-left-radius: 10px; border-top-right-radius: 10px; background-color: rgba(29, 29, 29, 0.849);">
                <h1 style="margin-bottom: 0rem; color: rgb(255, 223, 197);"><%= VetNoti.getN_Title()%></h1>
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <form action="EliminarFav" method="POST">
                        <input type="hidden" name="VerNotiF_ID" class="form-control" style="margin-bottom: 3px;" value="<%= VetNoti.getNoti_id()%>">
                        <button class="btn btn-danger btn-md allingleft"  style="margin-top: .5rem;" type="submit">Eliminar de Favoritos</button> 
                    </form>
                </div>
            </div>  
            <div class="jumbotron Jumps-B">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-0">
                            <img class="Search-Img" src="Img/<%= VetNoti.getImg_1()%>" alt="TLK-L">
                        </div>
                        <div class="col-8">
                            <h1>Autor - <%= Autor.getNUser()%></h1>
                        </div>
                        <div class="col-1">
                            <h4><br>Puntaje: <%= VetNoti.getCalif()%>/10</h4>
                        </div>
                    </div>

                    <hr class="my-2">
                    <div class="container" style="font-size: 20px;">
                        <h1><%= VetNoti.getN_Title()%></h1><p><%= VetNoti.getN_Descsr()%></p>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="card mb-4 shadow">
                                    <img src="Img/<%= VetNoti.getImg_2()%>" class="card-img-top Card-Img" alt="Color">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card mb-4 shadow">
                                    <img src="Img/<%= VetNoti.getImg_3()%>" class="card-img-top Card-Img" alt="Color">
                                </div>
                            </div>
                        </div>
                    </div>
                    <p style="font-size: 20px;"><%= VetNoti.getN_Content()%></p>
                    <div class="ratio ratio-16x9">
                        <iframe src="Videos/<%= VetNoti.getVid_1()%>" title="YouTube video" allowfullscreen></iframe>
                    </div>
                    <form action="PuntuarCont" method="POST">
                        <div class="row">
                            <div class="col-2">
                                <input type="hidden" name="VerNotiPunt_ID" class="form-control"value="<%= VetNoti.getNoti_id()%>">
                                <input type="text" name="Califi" class="form-control"placeholder="Puntuacion">
                            </div>
                            <div class="col-0">
                                <button class="btn btn-info btn-md" type="submit">Califcar</button>  
                            </div>   
                        </div>
                    </form>
                </div>
            </div>
        </div> 

        <% guardada = false;
        } else {%>

        <div class="container" style="padding-top: .5rem; padding-bottom: .5rem;">
            <div class="container "
                 style="padding-top: .3rem;padding-bottom: .3rem; border-top-left-radius: 10px; border-top-right-radius: 10px; background-color: rgba(29, 29, 29, 0.849);">
                <h1 style="margin-bottom: 0rem; color: rgb(255, 223, 197);"><%= VetNoti.getN_Title()%></h1>
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <form action="GarudarNoti" method="POST">
                        <input type="hidden" name="VerNotiF_ID" class="form-control" style="margin-bottom: 3px;" value="<%= VetNoti.getNoti_id()%>">
                        <button class="btn btn-success center"  style="margin-top: .5rem;" type="submit">Guardar en Favoritos</button> 
                    </form>
                </div>
            </div> 
            <div class="jumbotron Jumps-B">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-0">
                            <img class="Search-Img" src="Img/<%= VetNoti.getImg_1()%>" alt="TLK-L">
                        </div>   
                        <div class="col-8">
                            <h1>Autor - <%= Autor.getNUser()%></h1>
                        </div>
                        <div class="col-1">
                            <h4><br>Puntaje: <%= VetNoti.getCalif()%>/10</h4>
                        </div>
                    </div>

                    <hr class="my-2">
                    <div class="container" style="font-size: 20px;">
                        <h1><p></p><%= VetNoti.getN_Descsr()%></h1>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="card mb-4 shadow">
                                    <img src="Img/<%= VetNoti.getImg_2()%>" class="card-img-top Card-Img" alt="Color">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card mb-4 shadow">
                                    <img src="Img/<%= VetNoti.getImg_3()%>" class="card-img-top Card-Img" alt="Color">
                                </div>
                            </div>
                        </div>
                    </div>
                    <p style="font-size: 20px;"><%= VetNoti.getN_Content()%></p>
                    <div class="ratio ratio-16x9">
                        <iframe src="Videos/<%= VetNoti.getVid_1()%>" title="YouTube video" allowfullscreen></iframe>
                    </div>
                    <form action="PuntuarCont" method="POST">
                        <div class="row">
                            <div class="col-2">
                                <input type="hidden" name="VerNotiPunt_ID" class="form-control"value="<%= VetNoti.getNoti_id()%>">
                                <input type="text" name="Califi" class="form-control"placeholder="Puntuacion">
                            </div>
                            <div class="col-0">
                                <button class="btn btn-info btn-md" type="submit">Califcar</button>  
                            </div>   
                        </div>
                    </form>                
                </div>
            </div>
        </div>

        <% } %> 
        <% } else {%>

        <div class="container" style="padding-top: .5rem; padding-bottom: .5rem;">
            <div class="container "style="padding-top: .3rem;padding-bottom: .3rem; border-top-left-radius: 10px; border-top-right-radius: 10px; background-color: rgba(29, 29, 29, 0.849);">
                <h1 style="margin-bottom: 0rem; color: rgb(255, 223, 197);"><%= VetNoti.getN_Title()%></h1>
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <form action="GarudarNoti" method="POST">
                        <input type="hidden" name="VerNotiF_ID" class="form-control" style="margin-bottom: 3px;" value="<%= VetNoti.getNoti_id()%>">
                        <button class="btn btn-success center"  style="margin-top: .5rem;" type="submit">Guardar en Favoritos</button> 
                    </form>
                </div>
            </div>
            <div class="jumbotron Jumps-B">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-0">
                            <img class="Search-Img" src="Img/<%= VetNoti.getImg_1()%>" alt="TLK-L">
                        </div>
                        <div class="col-8">
                            <h1>Autor - <%= Autor.getNUser()%></h1>
                        </div>
                        <div class="col-1">
                            <h4><br>Puntaje: <%= VetNoti.getCalif()%>/10</h4>
                        </div>
                    </div>

                    <hr class="my-2">
                    <div class="container" style="font-size: 20px;">
                        <h1><p></p><%= VetNoti.getN_Descsr()%></h1>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="card mb-4 shadow">
                                    <img src="Img/<%= VetNoti.getImg_2()%>" class="card-img-top Card-Img" alt="Color">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card mb-4 shadow">
                                    <img src="Img/<%= VetNoti.getImg_3()%>" class="card-img-top Card-Img" alt="Color">
                                </div>
                            </div>
                        </div>
                    </div>
                    <p style="font-size: 20px;"><%= VetNoti.getN_Content()%></p>
                    <div class="ratio ratio-16x9">
                        <iframe src="Videos/<%= VetNoti.getVid_1()%>" title="YouTube video" allowfullscreen></iframe>
                    </div>
                    <form action="PuntuarCont" method="POST">
                        <div class="row">
                            <div class="col-2">
                                <input type="hidden" name="VerNotiPunt_ID" class="form-control"value="<%= VetNoti.getNoti_id()%>">
                                <input type="text" name="Califi" class="form-control"placeholder="Puntuacion">
                            </div>
                            <div class="col-0">
                                <button class="btn btn-info btn-md" type="submit">Califcar</button>  
                            </div>   
                        </div>
                    </form>                
                </div>
            </div>
        </div>

        <% }
                    }
                }
            }%>
        <div class="container">
            <h2>Comentarios</h2>
        </div>

        <div class="container" style="background-color: rgb(255, 232, 211);">
            <form action="ComentarioCont" method="POST">
                <div class="form-group">      
                    <input type="hidden" name="VerNotiC_ID" class="form-control"value="<%= VetNoti.getNoti_id()%>">
                    <label for="Comments" style="font-size: 20px;">Comenta tu opinión</label>
                    <textarea  name="Comentario" class="form-control" id="Comments" rows="3"></textarea>
                    <button class="btn btn-info btn-md"  style="margin-top: .5rem; opacity: 75%;" type="submit">Publicar</button>  
                </div>
            </form>

            <ul class="list-unstyled">
                <% for (Comentarios VerComments : comentarios) {%>
                <% if (VetNoti.getNoti_id() == VerComments.getID_Noticia_Comemnt()) {%>
                <% for (Usuarios BuscarUsuario : usuarios) {%>
                <% if (VerComments.getUD_Usuario_Comment() == BuscarUsuario.getId()) {%>
                <% if (VerComments.getId_Comment_2() == 0) {%>
                <li class="media" style="margin: 4px">
                    <img src="Img/<%= BuscarUsuario.getNImague()%>" class="mr-3 Avatars-I" alt="Avatar-I">
                    <div class="row">
                        <div class="col-6">
                            <h4 class="mt-0 mb-1"><%= BuscarUsuario.getNUser()%></h4>
                            <a><%= VerComments.getContent_Comment()%></a>
                        </div>
                        <div class="col-6">
                            <a><%= VerComments.getDate()%></a>
                        </div>
                    </div>
                </li>
                <form action="ResponderComCont" method="POST">
                    <div class="row">
                        <div class="col-10">
                            <input type="hidden" name="VerNotiCom_ID" class="form-control"value="<%= VetNoti.getNoti_id()%>">
                            <input type="hidden" name="VerComment_ID" class="form-control"value="<%= VerComments.getID_Comment()%>">
                            <input type="text" name="Respuesta" class="form-control"placeholder="Responder">
                        </div>
                        <div class="col-0">
                            <button class="btn btn-info btn-md" type="submit">Responder</button>  
                        </div>   
                    </div>
                </form>
                <%
                } else {%>
                <% for (Comentarios VerRespo : comentarios) {%>
                <% if (VetNoti.getNoti_id() == VerRespo.getID_Noticia_Comemnt()) {%>
                <% if (VerComments.getId_Comment_2() == VerRespo.getID_Comment()) {%>
                <li class="media" style="margin: 1px; padding-left: 60px;">
                    <img src="Img/<%= BuscarUsuario.getNImague()%>" class="mr-3 Avatars-I" alt="Avatar-I">
                    <div >
                        <h4 class="mt-0 mb-1"><%= BuscarUsuario.getNUser()%></h4>
                        <a><%= VerComments.getContent_Comment()%></a>
                    </div>
                </li>
                <%}
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }%>        
            </ul>
        </div>
        <% }
            }%>
        <div class="container-fluid">
            <hr class="my-2">
            <div class="row">
                <div class="col-md-10">
                    <p>© 2020 MusicinMovies.Inc</p>
                </div>
                <div class="col-sm-1">
                    <img class="img-fluid" src="Img/FB-I-Med.png" width="35px" height="35px" alt="FB-I">
                    <img class="img-fluid" src="Img/Twitter-I-Med.png" width="35px" height="35px" alt="TW-I-I">
                    <img class="img-fluid" src="Img/YT-I-Med.png" width="35px" height="35px" alt="YT-I">
                    <p>Help</p>
                </div>
            </div>
        </div>

    </body>
</html>
