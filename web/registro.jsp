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
        <title>Registrate</title>
    </head>
    <body>
        
        <%@ include file="header.jsp" %>

        <div class="container mt-2">
            <div class="row align-items-center justify-content-center">
                <div class="col-md-12">
                    <div class="contenido p-4">
                        <h2>Registrarme</h2>
                        <form action="ServletInsercionATV" method="post" onsubmit="return validarFormulario()">
                            <div id="error" class="error"></div>
                            <div class="row">
                                <div class="form-group col-md-4">
                                    <label for="text">Nombre</label>
                                    <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Nombre" >
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="text">Apellido Paterno</label>
                                    <input type="text" class="form-control" name="apaterno" id="apellidoP" placeholder="Apellido Paterno" >
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="text">Apellido Materno</label>
                                    <input type="text" class="form-control" name="amaterno" id="apellidoM" placeholder="Apellido Materno" >
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

        <%@ include file="footer.jsp" %>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="js/vendor/modernizr-3.7.1.min.js" type="text/javascript"></script>

    </body>
</html>
