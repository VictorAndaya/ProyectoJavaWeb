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
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
        <link href="css/normalize.css" rel="stylesheet" type="text/css"/>
        <link href="css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/all.css" rel="stylesheet" type="text/css"/>
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
                <div class="col-md-8">
                    <div class="contenido p-4 bg-light">
                        <h2>Contactanos</h2>
                        <form action="#">
                            <div id="error" class="error"></div>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="text">Nombre</label>
                                    <input type="text" class="form-control" id="nombre" placeholder="Nombre" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="email">Correo o Usuario</label>
                                    <input type="text" class="form-control" id="email" placeholder="Email" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Asunto</label>
                                <input type="text" class="form-control" id="asunto" placeholder="Asunto" required>
                            </div>
                            <div class="form-group">
                                <label for="text">Tu Mensaje</label>
                                <textarea name="" id="textarea" cols="30" rows="3" class="form-control" required></textarea>
                            </div>
                            <button type="submit" id="boton" class="button">Enviar</button>

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
        <script src="js/main.js"></script>
        <script src="js/vendor/modernizr-3.7.1.min.js" type="text/javascript"></script>
    </body>
</html>
