<%-- 
    Document   : AprobacionStatus
    Created on : 9 dic 2020, 1:06:42
    Author     : amg05
--%>

<%@page import="com.mycompany.mim.Control.Model.Noticias"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    List<Noticias> noticias = (List<Noticias>) request.getAttribute("Noticiones");
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

        <% for (Noticias VetNoti : noticias) {%> 
        <% if (session.getAttribute("Noti_id").equals(VetNoti.getNoti_id())) {%>

        <div class="container" style="padding-top: .5rem; padding-bottom: .5rem;">
            <div class="container "
                 style="padding-top: .3rem;padding-bottom: .3rem; border-top-left-radius: 10px; border-top-right-radius: 10px; background-color: rgba(29, 29, 29, 0.849);">
                <h1 style="margin-bottom: 0rem; color: rgb(255, 223, 197);"><%= VetNoti.getN_Title()%></h1>
            </div>
            <div class="jumbotron Jumps-B">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-0">
                            <img class="Search-Img" src="Img/<%= VetNoti.getImg_1() %>" alt="TLK-L">
                        </div>
                        <div class="col-8" style="font-size: 18px;">
                            <p>Autor</p>
                            <div class="row">
                                <div class="col-6">
                                    <p>Director de Orquesta - </p>
                                </div>
                            </div>
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
                                    <img src="Img/<%= VetNoti.getImg_2() %>" class="card-img-top Card-Img" alt="Color">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card mb-4 shadow">
                                    <img src="Img/<%= VetNoti.getImg_3() %>" class="card-img-top Card-Img" alt="Color">
                                </div>
                            </div>
                        </div>
                    </div>
                    <form action="AceptaNoti" method="POST">
                        <input type="hidden" name="VerNoti_ID_Status_2" class="form-control" style="margin-bottom: 3px;" value="<%= VetNoti.getNoti_id()%>">
                        <p style="font-size: 20px;"><%= VetNoti.getN_Content()%></p>
                        <button class="btn btn-info btn-md" style="margin-top: .5rem; opacity: 75%;" type="submit">Aceptar y Publicar</button> 
                    </form>
                </div>                    
            </div>
        </div>

        <div class="container">
            <h2>Devolver</h2>
        </div>

        <div class="container" style="padding: .5rem; background-color: rgb(255, 232, 211);">
            <form action="RechazaNoti" method="POST">
                <div class="form-group">
                    <input type="hidden" name="VerNoti_ID_Status_3" class="form-control" style="margin-bottom: 3px;" value="<%= VetNoti.getNoti_id()%>">
                    <label for="Comments" style="font-size: 20px;">Retroalimentación</label>
                    <textarea class="form-control" name="Retro_Noti" id="Comments" rows="3"></textarea>
                    <button class="btn btn-danger btn-md" style="margin-top: .5rem; opacity: 75%;" type="submit">Rechazar</button>   
                </div>
            </form> 
        </div>
        <%} else { %>   
        <%}
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
