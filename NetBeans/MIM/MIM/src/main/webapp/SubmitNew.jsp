<%-- 
    Document   : SubmitNew
    Created on : 7 dic 2020, 20:09:29
    Author     : amg05
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.mim.Control.Model.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Category> categories = (List<Category>) request.getAttribute("Categories");
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
    <script>
        $(function () {
            $("#selectCat").change(function () {
                var catimp = $("#selectCat option:selected").text();
                $("#cargarcat").val(catimp);
            })
        })
    </script>
    <body>
        <jsp:include page="NavBar.jsp"/>

        <div class="container" style="padding-top: 1rem; padding-bottom: 1rem;">
            <div class="jumbotron Jumps-B">
                <form action="SubirNoticia" method="POST">
                    <h3>Publicar nueva Noticia</h3>
                    <div class="row" style="padding-top: 1rem; padding-bottom: 1rem;">
                        <div class="col">
                            <input type="text" name="TituloNoti" class="form-control" placeholder="Título de la Noticia">
                        </div>
                    </div>
                    <input type="text" name="DescriNoti" class="form-control" style="margin-bottom: 1rem;" placeholder="Descripcion Corta">

                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <p class="text-center">Miniatura - Recomendado(720x720)</p>
                                <div class="card mb-4 shadow">
                                    <input class="btn btn-info btn-md " style="opacity: 75%;" name="ImagenN1" type="file"/>
                                    <!--<input class="btn btn-info btn-md " style="opacity: 75%;" type="submit" value="Cargar Archivo" name="upload" id="upload" />-->
                                </div>
                            </div>
                            <div class="col-md-4">
                                <p class="text-center">Cuerpo - Recomendado(1024x720)</p>
                                <div class="card mb-4 shadow">
                                    <input class="btn btn-info btn-md " style="opacity: 75%;" name="ImagenN2" type="file"/>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <p class="text-center">Cuerpo - Recomendado(1024x720)</p>
                                <div class="card mb-4 shadow">
                                    <input class="btn btn-info btn-md " style="opacity: 75%;" name="ImagenN3" type="file"/>
                                </div>
                            </div>                   
                        </div>
                    </div>
                    <div class="container">
                        <div class="row" style="padding-bottom: 1rem;">
                            <div class="col-6">
                                <p class="">Video</p>
                                <input class="btn btn-info btn-md " style="opacity: 75%;" name="Video" type="file"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <select id="selectCat">
                                <%
                                    for (Category category : categories) {
                                %> 
                                <option value="<%= category.getName_Cat()%>"><%= category.getName_Cat()%></option>
                                <%
                                    }
                                %>
                            </select>
                            <input type="text" id="cargarcat" clas="text-muted"  name="categorianoti" readonly="readonly">
                        </div>

                        <div class="form-group" style="padding-top: 1rem;">        
                            <label for="Comments" style="font-size: 20px;">Noticia</label>
                            <textarea class="form-control" name="ContentNoti" id="Comments" rows="5"></textarea>
                            <button class="btn btn-info my-2 my-xl-0" style="margin: 2px; opacity: 75%;" type="submit">
                                <a role="button">Publicar</a>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <footer class="mastfoot mt-auto">
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
        </footer>

    </body>
</html>
