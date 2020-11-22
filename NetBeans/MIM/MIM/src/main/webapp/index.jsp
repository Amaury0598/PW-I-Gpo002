<%-- 
    Document   : index
    Created on : 21 nov 2020, 19:37:36
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

    <link rel="stylesheet" href="CSS/main.css">

    <title>Music in Movies</title>
</head>

<body>

    <!--<div class="container-fluid bg-primary py-5">
            <div class="container text-white">
                <h1 class="display-4"><b>Layout</b></h1>
                <p class="lead">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae adipisci consequatur ullam velit odit voluptates repellendus commodi atque. Unde odit impedit in quos laborum officia animi explicabo, necessitatibus hic tempore.
                </p>
            </div>
      </div>-->

    <!--<div class="container">
        <div class="row">
            <div class="col-4 bg-primary">
                <p>Col-4</p>
            </div>
            <div class="col-2 bg-succes">
                <p>Col-4</p>
            </div>
            <div class="col-4 bg-primary">
                <p>Col-4</p>
            </div>
            <div class="col-2 bg-succes">
                <p>Col-4</p>
            </div>
        </div>
    </div>-->

    <nav class="navbar navbar-expand-md mx-sm-auto navbar-light mr-auto"
        style="background-color:#cf3b3b; padding-top: 0rem; padding-bottom: 0rem;">
        <a class="Logo nabvar-brand text-light text-decoration-none" href="#" style="font-size: 22px;">
            <img src="Img/Logo-1-White.png" width="60" height="60" class="d-inline-block" alt="Logo" loading="lazy">
            <b style="color: white;">Music In Movies</b>
        </a>

        <ul class="navbar-nav ml-md-auto">
            <li class="nav-item dropdown" style="padding-bottom: .3rem;">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                    aria-expanded="false" style="color: white;"><b>Usuarios/Registrarse</b>
                </a>          
                <div class="dropdown-menu">
                    <form action="LogInCont" method="POST">
                    <div class="container">
                        <label for="I-mail">Usuario/e-mail</label>
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
        </ul>

        <form class="form-inline">
            <input class="form-control mr-xl-2" type="text" placeholder="Buscar Película/Artista" aria-label="Search">
            <button class="btn btn-success my-2 my-xl-0" type="submit">Buscar</button>
        </form>
    </nav>

    <img class="img-fluid" src="Img/Orchesta-2.jpg" alt="Orchesta">

    <div style="padding-top: 1rem;">
        <div class="jumbotron jumbotron-fluid" style="background-color: rgb(255, 215, 191);">
            <div class="carousel slide  carousel-fade" data-ride="carousel" id="News-Carousel">
                <ol class="carousel-indicators" style="margin-top: 0rem;">
                    <li data-target="#News-Carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#News-Carousel" data-slide-to="1"></li>
                    <li data-target="#News-Carousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active Carousel-text">
                        <img src="Img/HP-O.jpg" class="d-block w-100 Carousel-Img card-img card-img-fil" alt="Black">
                        <div class="carousel-caption d-none d-md-block">
                            <h1>Banda sonora en Harry Potter</h1>
                            <p style="font-size: 22px;">Se van a presentar en vivo</p>
                            <a class="btn btn-info btn-lg" style="opacity: 85%;" href="#" role="button">Ver más</a>
                        </div>
                    </div>
                    <div class="carousel-item Carousel-text">
                        <img src="Img/Hobbit-Logo.jpg" class="d-block w-100 Carousel-Img card-img card-img-fil" alt="Black">
                        <div class="carousel-caption d-none d-md-block">
                            <h1>Remaster del Hobbit</h1>
                            <p style="font-size: 22px;">Revive la Musica de el Hobbit</p>
                            <a class="btn btn-info btn-lg" style="opacity: 85%;" href="#" role="button">Ver más</a>
                        </div>
                    </div>
                    <div class="carousel-item Carousel-text">
                        <img src="Img/Soul2-Logo.jpg" class="d-block w-100 Carousel-Img card-img card-img-fil" alt="Black">
                        <div class="carousel-caption d-none d-md-block">
                            <h1>La nueva película de Disney</h1>
                            <p style="font-size: 22px;">Descubre mas sobre la musica dentro de la película Soul</p>
                            <a class="btn btn-info btn-lg" style="opacity: 85%;" href="#" role="button">Ver más</a>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#News-Carousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Anterior</span>
                </a>
                <a class="carousel-control-next" href="#News-Carousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Siguiente</span>
                </a>
            </div>
        </div>
    </div>
    <div class="container">
        <h2>Recientemente Buscados</h2>
    </div>

    <div class="container" style="padding-top: 1rem;">
        <div class="row">
            <div class="col-md-3">
                <div class="card mb-4 shadow">
                    <img src="Img/SW-S.jpg" class="card-img-top Card-Img" alt="SW-S">
                    <div class="card-body">
                        <h5 class="card-tittle">Star Wars Soundtrack</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit ipsum
                            dicta laboriosam natus, exercitationem delectus?</p>
                        <a href="#" class="btn btn-success">Ver más ...</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card mb-4 shadow">
                    <img src="Img/TLK-S.jpg" class="card-img-top Card-Img" alt="TLK-S">
                    <div class="card-body">
                        <h5 class="card-tittle">The Lion King</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit ipsum
                            dicta laboriosam natus, exercitationem delectus?</p>
                        <a href="#" class="btn btn-success">Ver más ...</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card mb-4 shadow">
                    <img src="Img/TLOTR-S.jpg" class="card-img-top Card-Img" alt="TLK-S">
                    <div class="card-body">
                        <h5 class="card-tittle">The Lord Of The Rings</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit ipsum
                            dicta laboriosam natus, exercitationem delectus?</p>
                        <a href="#" class="btn btn-success">Ver más ...</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card mb-4 shadow">
                    <img src="Img/Coco-S.jpg" class="card-img-top Card-Img" alt="TLK-S">
                    <div class="card-body">
                        <h5 class="card-tittle">Coco Soundtrack</h5>
                        <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit ipsum
                            dicta laboriosam natus, exercitationem delectus?</p>
                        <a href="#" class="btn btn-success">Ver más ...</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

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
