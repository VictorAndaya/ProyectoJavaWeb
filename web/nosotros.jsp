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
        <script src="js/vendor/modernizr-3.7.1.min.js" type="text/javascript"></script>
        <link href="css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/all.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald|PT+Sans&display=swap" rel="stylesheet"> 
        <title>Nosotros</title>
    </head>
    <body>

        <%@ include file="header.jsp" %>

        <div class="contenido pt-4">
            <setion class="seccion">
                <h2>Sobre Nosotros</h2>
                <div class="testimoniales contenedor clearfix">
                    <div class="testimonial">
                        <blockquote>
                            <p>Soy una persona alegre, que le gusta conocer lugares y vivir nuevas experiencias día con día, el motivo de este proyecto parte de la necesidad de dar a conocer los diversos eventos musicales de la zona, así como ofrecer promociones y muchas cosas más que el usuario necesita.</p>
                            <footer class="info-testimonial clearfix">
                                <img src="img/kevin.jpg" alt="">
                                <cite>Aguilar Gomez Kevin Ivan</cite>
                            </footer>
                        </blockquote>
                    </div>
                    <div class="testimonial">
                        <blockquote>
                            <p>Soy estudiante en ingeniería en sistemas computacionales de 7° semestre, me gusta la programación y el desarrollo web, es por ello que creamos este proyecto con la finalidad de ofrecer una revista de eventos musicales y promociones.</p>
                            <footer class="info-testimonial clearfix">
                                <img src="img/andaya.jpg" alt="">
                                <cite>Andaya Tabarez Victor Daniel</cite>
                            </footer>
                        </blockquote>
                    </div>
                    <div class="testimonial">
                        <blockquote>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam, officiis, quos obcaecati voluptatum aperiam a ea rem eum placeat sit voluptatibus fugit quod in! Praesentium facilis possimus dolor pariatur obcaecati.</p>
                            <footer class="info-testimonial clearfix">
                                <img src="img/arturo.jpg" alt="">
                                <cite>Espinoza Herrera Arturo</cite>
                            </footer>
                        </blockquote>
                    </div>
                </div>
            </setion>
        </div>
        <%@ include file="footer.jsp" %>

    </body>
</html>
