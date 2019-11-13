<%-- 
    Document   : index
    Created on : 15/09/2019, 03:25:32 PM
    Author     : andaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
        <link href="css/normalize.css" rel="stylesheet" type="text/css"/>
        <link href="css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/all.css" rel="stylesheet" type="text/css"/>
        <script src="js/main.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald|PT+Sans&display=swap" rel="stylesheet"> 
        <title>JSP Page</title>
    </head>
    <body>
        <div class="barra">
            <div class="contenedor clearfix">
                <div class="logo">
                    <a href="index.jsp" class="index_logo"><img src="img/logo.png" alt=""></a>
                </div>
                <div class="menu-movil">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
                <nav class="navegacion-principal clearfix">
                    <a href="Redireccion?pagina=eventos">Eventos</a>
                    <a href="Redireccion?pagina=nosotros">Nosotros</a>
                    <a href="Redireccion?pagina=contacto">Contacto</a>
                    <a href="Redireccion?pagina=suscribirme">Suscribirme</a>
                    <a href="Redireccion?pagina=login">login</a>
                </nav>
            </div>
        </div>

        <div class="container mt-2">
            <div class="row align-items-center justify-content-center">
                <div class="col-md-12">
                    <div class="contenido p-4 bg-light">
                        <h2>Registrarme</h2>
                        <form action="ServletInsercionATV" method="post" onsubmit="return validar();">
                            <div id="error" class="error"></div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label for="text">Nombre</label>
                                    <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Nombre" >
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="text">Apellido Paterno</label>
                                    <input type="text" class="form-control" name="apaterno" id="apellido" placeholder="Apellido Paterno" >
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="text">Apellido Materno</label>
                                    <input type="text" class="form-control" name="amaterno" id="apellido" placeholder="Apellido Materno" >
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="email">Correo</label>
                                    <input type="text" name="correo" class="form-control" id="email" placeholder="Email" >
                                </div>
                                <div class="col-md-4">
                                    <label for="password">Contraseña</label>
                                    <div class="input-group">
                                        <input type="password" name="contrasena" class="form-control" id="txtPassword" placeholder="Contraseña" >
                                        <div class="input-group-append">
                                            <button id="show_password" class="btn boton" type="button" onclick="mostrarPassword()"> <span class="fa fa-eye-slash icon"></span> </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <label for="password">Confirmar Contraseña</label>
                                    <div class="input-group">
                                        <input type="password" class="form-control" id="txtPassword2" placeholder="Contraseña" >
                                        <div class="input-group-append">
                                            <button id="show_password" class="btn boton" type="button" onclick="mostrarPassword2()"> <span class="fa fa-eye-slash icon"></span> </button>
                                        </div>
                                    </div>
                                </div>

                            </div><!-- row -->
                            <button type="submit" id="boton" class="button">Registrarme</button>

                        </form>
                    </div>
                </div>
            </div>
        </div>

        <footer class="site-footer">
            <div class="contenedor clearfix">
                <div class="footer-informacion">
                    <h3>Sobre <span>Musica ITZ</span></h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae, cum, nobis, deserunt, laudantium laborum ea magni sint maxime quis odit iure fuga sapiente esse rem excepturi eum ullam blanditiis expedita.</p>

                </div>
                <div class="ultimos-tweets">
                    <h3>Ultimos <span>Tweets</span></h3>
                    <ul>
                        <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, aspernatur, ea, reprehenderit alias dolores repudiandae unde voluptatibus perferendis numquam facilis saepe quaerat laboriosam sed suscipit quibusdam autem dicta natus libero.</li>

                    </ul>
                </div>
                <div class="menu">
                    <h3>Redes <span>Sociales</span></h3>
                    <nav class="redes-sociales">
                        <a href=""><i class="fab fa-facebook"></i></a>
                        <a href=""><i class="fab fa-twitter"></i></a>
                        <a href=""><i class="fab fa-youtube"></i></a>
                        <a href=""><i class="fab fa-instagram"></i></a>
                    </nav>
                </div>
            </div>
            <p class="copyright">
                Todos los derechos Reservados Musica ITZ 2019.
            </p>
        </footer>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="js/vendor/modernizr-3.7.1.min.js" type="text/javascript"></script>

    </body>
</html>
