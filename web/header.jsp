<%-- 
    Document   : header
    Created on : 13/11/2019, 11:05:31 PM
    Author     : andaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald|PT+Sans&display=swap" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
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
    </body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</html>
