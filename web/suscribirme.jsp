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
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <title>MUSICA ITZ</title>
    </head>
    <body>

        <%@ include file="header.jsp" %>

        <div class="container mt-2">
            <div class="row align-items-center justify-content-center">
                <div class="col-md-8">
                    <div class="contenido p-4">
                        <h2>Pago de Suscripción</h2>
                        <form action="#" method="post" onsubmit="return validar();">
                            <div id="error" class="error"></div>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="text">Nombre</label>
                                    <input type="text" class="form-control" id="nombre" placeholder="Nombre" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="text">Apellido</label>
                                    <input type="text" class="form-control" id="apellido" placeholder="Apellido" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="text">Numero de Tarjeta</label>
                                    <input type="text" class="form-control" id="tarjeta" placeholder="0000 0000 0000 0000" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="text">Seleccióna </label>
                                    <select class="mdb-select md-form form-control">
                                        <option selected="" >Selecciona una opcion</option>
                                        <option value="100">1 Mes $100.00</option>
                                        <option value="1,000">1 Año $1,000.00</option>
                                        <option value="2,000">3 Años $2,000.00</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="text">Fecha de Expiracion</label>
                                    <input type="text" class="form-control" placeholder="MM/AA" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="text">CCV</label>
                                    <input type="text" class="form-control" placeholder="000" required>
                                </div>
                            </div><!-- row -->
                            <button type="submit" id="boton" class="button">Pagar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <%@ include file="footer.jsp" %>

        <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="jquery-1.3.2.min.js" type="text/javascript"></script>   
        <script src="js/vendor/modernizr-3.7.1.min.js" type="text/javascript"></script>
        <script src="js/main.js" type="text/javascript"></script>
        <script src="cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    </body>
</html>
