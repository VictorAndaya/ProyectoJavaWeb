<%-- 
    Document   : header
    Created on : 13/11/2019, 11:05:31 PM
    Author     : andaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="cache.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald|PT+Sans&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
        <title>Header</title>
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
                <nav class="navegacion-principal clearfix topnav">
                    <a href="Redireccion?pagina=eventos">Eventos</a>
                    <a href="Redireccion?pagina=nosotros">Nosotros</a>
                    <a href="Redireccion?pagina=contacto">Contacto</a>
                    <a href="Redireccion?pagina=encuesta">Encuesta</a>
                    <!-- comparar si esta logeado y cambiar 'login' por nombre de usuario-->
                    <%                        String user = (String) session.getAttribute("nombre");
                        String email = (String) session.getAttribute("email");
                        String nombreEncus = (String) session.getAttribute("nombreEncuesta");
                        
                        if (user != null) {
                    %>

                    <a href="Redireccion?pagina=suscribirme" class="dropdown-item">Suscribirme</a>
                    <a href="#" data-toggle="dropdown"><%=user%> <i style="font-size:24px" class="fa">&#xf2bd;</i></a>
                    <a href="CerrarSesion?cerrar=true" class="dropdown-item">Log Out</a>

                    <%
                        Integer tipo = (Integer) session.getAttribute("tipo");
                        if (tipo != 0) {
                    %>
                    <a href="nuevaEncuesta.jsp" class="dropdown-item">Nueva Encuesta</a>
                    <%
                            }
                    %>

                    <%                    
                            } else {
                    %>

                    <a href="Redireccion?pagina=registro">Registrarme</a>
                    <a href="Redireccion?pagina=login">Login</a>
                    <%
                        }
                    %>
                </nav>
            </div>
        </div>
    </body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</html>
