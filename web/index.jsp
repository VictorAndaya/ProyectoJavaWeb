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
        <link rel="stylesheet" href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald|PT+Sans&display=swap" rel="stylesheet"> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>MUSICA ITZ</title>
    </head>
    <body>
        <header class="site-header">
            <div class="hero">
                <div class="contenido-header">
                    <nav class="redes-sociales">
                        <a href=""><i class="fab fa-facebook"></i></a>
                        <a href=""><i class="fab fa-twitter"></i></a>
                        <a href=""><i class="fab fa-youtube"></i></a>
                        <a href=""><i class="fab fa-instagram"></i></a>
                    </nav>
                    <div class="informacion-evento clearfix">
                        <p class="fecha"><i class="fas fa-calendar-times"></i> 10-12 Diciembre</p>
                        <p class="ciudad"><i class="fas fa-map-marked-alt"></i> Zacatepec Morelos</p>
                        <h1 class="nombre-sitio">Musica ITZ</h1>
                    </div>
                    <div class="arrow">
                        <span></span>
                        <span></span>
                        <span></span>

                    </div>
                </div>

            </div>

        </header>
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
                    <a href="">Eventos</a>
                    <a href="nosotros.jsp">Nosotros</a>
                    <a href="contacto.jsp">Contacto</a>
                    <a href="suscribirme.jsp">Suscribirme</a>
                    <a href="login.jsp">login</a>
                </nav>
            </div>
        </div>

        <section class="seccion contenedor">
            <h2>Los Mejores Conciertos</h2>
            <p class="justificado">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nulla, eveniet, tempore, modi, asperiores sunt consequatur aspernatur sed sequi officiis accusamus ea ut repellat dolores! Illum, eos sint doloremque a! Voluptatem.
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur, possimus, voluptatibus quia id eveniet nisi quos error ut autem illum doloremque expedita hic nulla facilis non sint ab suscipit quo!
            </p>
        </section>
        <section class="seccion">
            <h2>Encuesta</h2>
        </section>

        <section class="programa">
            <div class="contenedor-video">
                <img src="img/concierto.jpg" alt="">
            </div>
            <div class="contenido-programa">
                <div class="contenedor">
                    <div class="programa-evento">
                        <h2>Programa del Evento</h2>
                        <nav class="menu-programa">
                            <a href="#intrumental"><i class="fas fa-guitar"></i>Instrumental</a>
                            <a href="#electronica"><i class="fas fa-robot"></i>Electronica</a>
                            <a href="#clasica"><i class="fas fa-music"></i></i>Clasica</a>
                        </nav>
                        <div class="info-curso ocultar clearfix" id="intrumental">
                            <div class="detalle-evento">
                                <h3>Jazz Extravaganza The Show</h3>
                                <p><i class="fas fa-clock"></i> 21:00 hrs</p>
                                <p><i class="fas fa-calendar"></i> 28 de Sep</p>
                                <p></p>
                            </div>
                            <div class="detalle-evento">
                                <h3>Antologia del Bolero</h3>
                                <p><i class="fas fa-clock"></i> 18:00 hrs</p>
                                <p><i class="fas fa-calendar"></i> 22 de Sep</p>
                                <p></p>
                            </div>
                            <a href="#" class="button float-right">Ver todos</a>
                        </div><!--.talleres-->
                        <div class="info-curso ocultar clearfix" id="electronica">
                            <div class="detalle-evento">
                                <h3>Jazz Extravaganza The Show</h3>
                                <p><i class="fas fa-clock"></i> 21:00 hrs</p>
                                <p><i class="fas fa-calendar"></i> 28 de Sep</p>
                                <p></p>
                            </div>
                            <div class="detalle-evento">
                                <h3>Antologia del Bolero</h3>
                                <p><i class="fas fa-clock"></i> 18:00 hrs</p>
                                <p><i class="fas fa-calendar"></i> 22 de Sep</p>
                                <p></p>
                            </div>
                            <a href="#" class="button float-right">Ver todos</a>
                        </div><!--.talleres-->
                        <div class="info-curso ocultar clearfix" id="clasica">
                            <div class="detalle-evento">
                                <h3>Jazz Extravaganza The Show</h3>
                                <p><i class="fas fa-clock"></i> 21:00 hrs</p>
                                <p><i class="fas fa-calendar"></i> 28 de Sep</p>
                                <p></p>
                            </div>
                            <div class="detalle-evento">
                                <h3>Antologia del Bolero</h3>
                                <p><i class="fas fa-clock"></i> 18:00 hrs</p>
                                <p><i class="fas fa-calendar"></i> 22 de Sep</p>
                                <p></p>
                            </div>
                            <a href="#" class="button float-right">Ver todos</a>
                        </div><!--.talleres-->
                    </div><!--.programa-evento-->
                </div><!--.contenedor-->
            </div><!--.contenido-programa-->
        </section><!--.prgorama-->
        <section class="invitados contenedor seccion">
            <h2>Musicos</h2>
            <ul class="lista-invitados clearfix">
                <li>
                    <div class="invitado">
                        <img src="img/invitado1.jpg" alt="imagen invitado">
                        <p>Rafael Bautista</p>
                    </div>
                </li>
                <li>
                    <div class="invitado">
                        <img src="img/invitado2.jpg" alt="imagen invitado">
                        <p>Rafael Bautista</p>
                    </div>
                </li>
                <li>
                    <div class="invitado">
                        <img src="img/invitado3.jpg" alt="imagen invitado">
                        <p>Rafael Bautista</p>
                    </div>
                </li>
                <li>
                    <div class="invitado">
                        <img src="img/invitado4.jpg" alt="imagen invitado">
                        <p>Rafael Bautista</p>
                    </div>
                </li>
                <li>
                    <div class="invitado">
                        <img src="img/invitado5.jpg" alt="imagen invitado">
                        <p>Rafael Bautista</p>
                    </div>
                </li>
                <li>
                    <div class="invitado">
                        <img src="img/invitado6.jpg" alt="imagen invitado">
                        <p>Rafael Bautista</p>
                    </div>
                </li>
            </ul>
        </section>

        <div class="contador parallax">
            <div class="contenedor">
                <ul class="resumen-evento clearfix">
                    <li><p class="numeros">0</p> Invitados</li>
                    <li><p class="numeros">0</p> Invitados</li>
                    <li><p class="numeros">0</p> Invitados</li>
                    <li><p class="numeros">0</p> Invitados</li>
                </ul>

            </div>
        </div>

        <section class="precios seccion">
            <h2>Precios</h2>
            <div class="contenedor">
                <ul class="lista-precios clearfix">
                    <div class="tabla-precio">
                        <h3>Pase por dia</h3>
                        <p class="numeros">$300</p>
                        <li>Camiseta Gratis</li>
                        <li>Todos los Conciertos</li>
                        <a href="#" class="button hollow">Comprar</a>
                    </div>
                </ul>
                <ul class="lista-precios clearfix">
                    <div class="tabla-precio">
                        <h3>Todos los dias</h3>
                        <p class="numeros">$900</p>
                        <li>Camiseta Gratis</li>
                        <li>Todos los Conciertos</li>
                        <a href="#" class="button hollow">Comprar</a>
                    </div>
                </ul>
                <ul class="lista-precios clearfix">
                    <div class="tabla-precio">
                        <h3>Pase por 2 dias</h3>
                        <p class="numeros">$500</p>
                        <li>Camiseta Gratis</li>
                        <li>Todos los Conciertos</li>
                        <a href="#" class="button hollow">Comprar</a>
                    </div>
                </ul>
            </div>
        </section>

        <section class="seccion">
            <h2>Testimoniales</h2>
            <div class="testimoniales contenedor clearfix">
                <div class="testimonial">
                    <blockquote>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam, officiis, quos obcaecati voluptatum aperiam a ea rem eum placeat sit voluptatibus fugit quod in! Praesentium facilis possimus dolor pariatur obcaecati.</p>
                        <footer class="info-testimonial clearfix">
                            <img src="img/testimonial.jpg" alt="">
                            <cite>Arturo Espinoza</cite>
                        </footer>
                    </blockquote>
                </div>
                <div class="testimonial">
                    <blockquote>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam, officiis, quos obcaecati voluptatum aperiam a ea rem eum placeat sit voluptatibus fugit quod in! Praesentium facilis possimus dolor pariatur obcaecati.</p>
                        <footer class="info-testimonial clearfix">
                            <img src="img/testimonial.jpg" alt="">
                            <cite>Arturo Espinoza</cite>
                        </footer>
                    </blockquote>
                </div>
                <div class="testimonial">
                    <blockquote>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam, officiis, quos obcaecati voluptatum aperiam a ea rem eum placeat sit voluptatibus fugit quod in! Praesentium facilis possimus dolor pariatur obcaecati.</p>
                        <footer class="info-testimonial clearfix">
                            <img src="img/testimonial.jpg" alt="">
                            <cite>Arturo Espinoza</cite>
                        </footer>
                    </blockquote>
                </div>
            </div>
        </section>

        <div class="newsletter parallax">
            <div class="contenido contenedor">
                <p>Registrate al newsletter</p>
                <h3>Musica ITZ</h3>
                <a href="#" class="button transparente">Registro</a>
            </div>
        </div>

        <section class="seccion">
            <h2>Faltan</h2>
            <div class="cuenta-regresiva contenedor">
                <ul class="clearfix">
                    <li><p id="dias" class="numeros"></p> dias</li>
                    <li><p id="horas" class="numeros"></p> horas</li>
                    <li><p id="minutos" class="numeros"></p> minutos</li>
                    <li><p id="segundos" class="numeros"></p> segundos</li>
                </ul>
            </div>
        </section>

        <footer class="site-footer">
            <div class="contenedor clearfix">
                <div class="footer-informacion">
                    <h3>Sobre <span>Musica ITZ</span></h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae,rem excepturi eum ullam blanditiis expedita.</p>

                </div>
                <div class="ultimos-tweets">
                    <h3>Ultimos <span>Tweets</span></h3>
                    <ul>
                        <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. numquam facilis saepe quaerat laboriosam sed suscipit quibusdam autem dicta natus libero.</li>

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

        <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="jquery-1.3.2.min.js" type="text/javascript"></script>   
        <script src="js/vendor/modernizr-3.7.1.min.js" type="text/javascript"></script>
        <script src="js/main.js" type="text/javascript"></script>
        <script src="js/plugins.js" type="text/javascript"></script>
        <script src="js/jquery.lettering.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.animateNumber.min.js"></script> 
        <script src="js/jquery.countdown.min.js"></script>
    </body>
</html>
