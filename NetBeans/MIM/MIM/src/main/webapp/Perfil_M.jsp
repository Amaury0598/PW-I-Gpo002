<%-- 
    Document   : Perfil_M
    Created on : 23 nov 2020, 18:13:54
    Author     : amg05
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    
    <jsp:include page="NavBar_2.jsp"/>

<div class="container" style="padding-top: 1rem; padding-bottom: 1rem;">
    <div class="jumbotron Jumps-B">
        <form>
            <h3>Configurar</h3>

            <div class="row" style="padding-top: 1rem;">
                <div class="col-lx-12 col-md-8">
                    <input type="text" class="form-control" style="margin-bottom: 1rem;"
                        placeholder="Nuevo Nombre de Usuario">
                    <input type="password" class="form-control" style="margin-bottom: 1rem;"
                        placeholder="Contraseña Actual">
                    <input type="password" class="form-control" placeholder="Nueva Contraseña">
                    <div class="row" style="padding-top: 1rem; padding-bottom: 1rem;">
                        <div class="col col-md-6">
                            <input type="text" class="form-control" placeholder="Nuevo Avatar" readonly>
                        </div>
                        <div class="col-6" style="padding-left: .1rem;">
                            <a class="btn btn-info btn-md " style="opacity: 90%;" href="#" role="button">Cargar Archivo</a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6 col-sm-6">
                        <div class="card" style="width: 12rem;">
                            <img src="Img/Avatar-Icon.png" class="card-img-top" alt="Avatar-Icon">
                        </div>
                    </div>
                </div>
                <div class="container">
                    <form>
                        <div class="form-group">
                            <label for="Comments" style="font-size: 20px;">Agregar Descripción</label>
                            <textarea class="form-control" id="Comments" rows="3"></textarea>
                            <a class="btn btn-info btn-md" style="margin-top: .5rem; opacity: 75%;" href="#"
                                role="button">Guardar</a>
                        </div>
                    </form>
                </div>
            </div>
        </form>
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
