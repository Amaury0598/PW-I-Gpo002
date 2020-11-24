<%-- 
    Document   : Registro
    Created on : 21 nov 2020, 19:41:20
    Author     : amg05
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

    <div class="container" style="margin-top: 20px">
         <div class="row">
             <h2>Registrate Gratis Aqui</h2>
             <form class="col-12" action="RegistroCont" method="POST" style="margin-top: 20px">
                <div class="form-group">
                  <label for="exampleInputEmail1">Direccion E-mail</label>
                  <input type="email" name="NEmail" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                 <div class="form-group">
                  <label for="exampleInputUser">Nombre de Usuario</label>
                  <input type="user" name="NUser" class="form-control" id="exampleInputUser" aria-describedby="userHelp">     
                 </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Contraseña</label>
                  <input type="password" name="NPassword" class="form-control" id="exampleInputPassword1">
                </div>
                <div class="form-group form-check">
                  <input type="checkbox" class="form-check-input" id="exampleCheck1">
                  <label class="form-check-label" for="exampleCheck1">Check me out</label>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
           </form>
         </div>
    </div>  

        
    <div class="container-fluid" style="padding-top: 22.7rem;">
        <hr class="my-2">
        <div class="row">
            <div class="col-md-10">
                <p>© 2020 MusicinMovies.Inc</p>
            </div>
            <div class="col-sm-2">
                <img class="img-fluid" src="Img/FB-I-Med.png" width="35px" height="35px" alt="FB-I">
                <img class="img-fluid" src="Img/Twitter-I-Med.png" width="35px" height="35px" alt="TW-I-I">
                <img class="img-fluid" src="Img/YT-I-Med.png" width="35px" height="35px" alt="YT-I">
            </div>
        </div>
    </div>
    </body>
</html>
