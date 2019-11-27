<%-- 
    Document   : encuesta
    Created on : 21/11/2019, 11:35:13 PM
    Author     : andaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <section>
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-md-12 mt-4">
                        <h2>Encuesta</h2>
                        <div class="contenido p-4">
                            <form action="action">
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label>Selecciona tu genero preferido</label>
                                        <select class="mdb-select md-form form-control" name="pregunta1">
                                            <option selected="" >Selecciona una opcion</option>
                                            <option value="clasica">Música clásica</option>
                                            <option value="blues">Blues</option>
                                            <option value="jazz">Jazz</option>
                                            <option value="rock">Rock and Roll</option>
                                            <option value="house">House</option>
                                            <option value="pop">Pop</option>
                                        </select>
                                        <span id="error_first_name" class="text-danger"></span>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>Nombre de tu artista favorito</label>
                                        <input type="text" name="pregunta2" id="last_name" class="form-control" />
                                        <span id="error_last_name" class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label>¿A cuantos conciertos asististe este año?</label>
                                        <select class="mdb-select md-form form-control" name="pregunta3">
                                            <option selected="" >Selecciona una opcion</option>
                                            <option value="ninguno">Ninguno</option>
                                            <option value="1">1 - 3</option>
                                            <option value="2">3 - 5</option>
                                            <option value="3">Mas de 5</option>
                                        </select>
                                        <span id="error_last_name" class="text-danger"></span>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>¿Cuanto pagarias por ver a tu artista favorito?</label>
                                        <select class="mdb-select md-form form-control" name="pregunta4">
                                            <option selected="" >Selecciona una opcion</option>
                                            <option value="nada">$0</option>
                                            <option value="1">$500 - $1500</option>
                                            <option value="2">$1500 - $3000</option>
                                            <option value="3">Mas de $3000</option>
                                        </select>
                                        <span id="error_last_name" class="text-danger"></span>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label>Comentarios</label>
                                        <textarea name="comentarios" id="address" class="form-control"></textarea>
                                        <span id="error_address" class="text-danger"></span>
                                    </div                                    
                                </div>
                                <button class="button">Enviar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
