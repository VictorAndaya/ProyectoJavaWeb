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
        <title>Contacto</title>
    </head>
    <body>
        
        <%@ include file="header.jsp" %>

        <div class="container mt-2">
            <div class="row align-items-center justify-content-center">
                <div class="col-md-8">
                    <div class="contenido p-4">
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
        
        <%@ include file="footer.jsp" %>s
        
        <script src="js/main.js"></script>
        <script src="js/vendor/modernizr-3.7.1.min.js" type="text/javascript"></script>
    </body>
</html>
