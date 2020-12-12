<%-- 
    Document   : Busqueda
    Created on : 11 dic 2020, 18:43:38
    Author     : amg05
--%>

<%@page import="com.mycompany.mim.Control.Model.Noticias"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    List<Noticias> noticias = (List<Noticias>) request.getAttribute("BuscasN");
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

        <div class="container "
             style="margin-top: 3.5px; margin-bottom: 5.5px; border-radius: 10px; border-top-right-radius: 10px; background-color: rgba(29, 29, 29, 0.849);">
            <h1 style="margin-bottom: 0rem; color: rgb(255, 223, 197);">Tu Busqueda</h1>
        </div>
        <% for (Noticias VetNoti : noticias) {%> 
        <div class="container" style="padding-top: .2rem; padding-bottom: .2rem;">

            <div class="card col-mb-3 Jumps-A" style="max-width: 540px;">
                <div class="row">

                    <div class="col-md-5">
                        <img class="Aprob-Img" src="Img/<%= VetNoti.getImg_1() %>" alt="TLK-L">
                    </div>
                    <div class="col-md-7">
                        <form action="InterAprobNoti" method="GET">
                            <div class="card-body">
                                <h4 class="card-title"><%= VetNoti.getN_Title()%></h4>
                                <p class="card-text"><%= VetNoti.getN_Descsr()%></p>
                                <input type="hidden" name="VerNoti_ID_Status" class="form-control" style="margin-bottom: 3px;" value="<%= VetNoti.getNoti_id()%>">
                                <p class="card-text"><small class="text-muted">Date Realease -</small></p>
                                <button class="btn btn-success" type="submit">Ver más ...</button>      
                            </div>
                        </form>

                    </div>
                </div>
            </div> 
        </div>
        <%}%>
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