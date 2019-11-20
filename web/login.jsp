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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald|PT+Sans&display=swap" rel="stylesheet"> 
        <title>Inicia Sesión</title>
    </head>
    <body>
        
        <%@ include file="header.jsp" %>

        <div class="container mt-2">
            <div class="row align-items-center justify-content-center">
                <div class="col-md-8">
                    <div class="contenido p-4 bg-light">
                        <h2>Inicia Sesión</h2>
                        <form action="ServletConsulta" method="post">
                            <div id="error" class="error"></div>
                            <div class="form-group">
                                <label for="email">Correo o Usuario</label>
                                <input type="text" class="form-control" name="correo" id="email" placeholder="Email o Usuario" required>
                            </div>
                            <label for="password">Contraseña</label>
                            <div class="input-group">
                                <input type="password" class="form-control" name="contrasena" id="txtPassword" placeholder="Contraseña" required>
                                <div class="input-group-append">
                                    <button id="show_password"  class="btn boton" type="button" onclick="mostrarPassword()"><span class="fa fa-eye-slash icon"></span> </button>
                                </div>
                            </div>
                            <div class="form-check pt-2">
                                <input type="checkbox" class="form-check-input" id="checkPassword">
                                <label for="password">Recordar</label>
                                <a href="registro.jsp"class="float-right link">Registrate</a>
                            </div>
                            <button type="submit" id="boton" class="button">Iniciar Sesion</button>

                        </form>
                    </div>
                </div>
            </div>
        </div>

        <%@ include file="footer.jsp" %>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="js/main.js" type="text/javascript"></script>
        <script src="js/vendor/modernizr-3.7.1.min.js" type="text/javascript"></script>
    </body>
</html>
