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

        <div class="contenido">
            <setion class="seccion row align-items-center justify-content-center">
                <div class="col-md-8 agregar pt-2">
                    <h2>Agregar Encuesta</h2>
                    <form action="ServletInsercionATV2" method="post">
                        <div class="form-group">
                            <label for="email">Titulo</label>
                            <input type="text" class="form-control" name="nombreEncuesta" placeholder="Nombre de la Encuesta" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Mes de Publicación</label>
                            <select name="mes" id="" class="mdb-select md-form form-control">
                                <option value="Enero">Enero</option>
                                <option value="Febrero">Febrero</option>
                                <option value="Marzo">Marzo</option>
                                <option value="Abril">Abril</option>
                                <option value="Mayo">Mayo</option>
                                <option value="Junio">Junio</option>
                                <option value="Julio">Julio</option>
                                <option value="Agosto">Agosto</option>
                                <option value="Septiembre">Septiembre</option>
                                <option value="Octubre">Octubre</option>
                                <option value="Noviembre">Noviembre</option>
                                <option value="Diciembre">Diciembre</option>
                            </select>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="email">Pregunta 1</label>
                                    <input type="text" class="form-control" name="pregunta1" placeholder="Pregunta" required>
                                </div>
                                <div class="form-group">
                                    <label for="email">Opcion 1</label>
                                    <input type="text" class="form-control" name="opcion1" placeholder="Opcion 1" required>
                                </div>
                                <div class="form-group">
                                    <label for="email">Opcion 2</label>
                                    <input type="text" class="form-control" name="opcion2" placeholder="Opcion 2" required>
                                </div>
                                <div class="form-group">
                                    <label for="email">Opcion 3</label>
                                    <input type="text" class="form-control" name="opcion3" placeholder="Opcion 3" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="email">Pregunta 2</label>
                                    <input type="text" class="form-control" name="pregunta2" placeholder="Pregunta" required>
                                </div>
                                <div class="form-group">
                                    <label for="email">Opcion 1</label>
                                    <input type="text" class="form-control" name="opcion4" placeholder="Opcion 1" required>
                                </div>
                                <div class="form-group">
                                    <label for="email">Opcion 2</label>
                                    <input type="text" class="form-control" name="opcion5" placeholder="Opcion 2" required>
                                </div>
                                <div class="form-group">
                                    <label for="email">Opcion 3</label>
                                    <input type="text" class="form-control" name="opcion6" placeholder="Opcion 3" required>
                                </div>
                            </div>
                            <button type="submit" id="boton" class="button">Subir Encuesta</button>

                        </div>
                    </form>
                </div>
            </setion>
        </div>
        <%@ include file="footer.jsp" %>

    </body>
</html>
