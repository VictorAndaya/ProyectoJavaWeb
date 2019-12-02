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
                <div class="row">
                    <%
                        String nombreEncus = "Mejores Artistas";
                        if (user != null) {

                    %>
                    <div class="col-md-6 mt-4">
                        <h2>Encuesta</h2>
                        <div class="contenido p-4">
                            <form action="ServletInsercionATV1" method="post">
                                <h3 class="text-center"><%=nombreEncus%></h3>
                                <input type="text" class="form-control" name="nombreEncu" value="<%=nombreEncus%>" hidden="">
                                <input type="email" class="form-control"  name="email" value="<%=email%>" hidden="">
                                <div class="form-group col-md-12">
                                    <label>Pregunta 1</label>
                                    <div class="radio">
                                        <label><input type="radio" value="Bueno" name="pregunta1"> Opcion 1</label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" value="REgular" name="pregunta1"> Opcion 2</label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" value="Malo" name="pregunta1"> Opcion 3</label>
                                    </div> 
                                    <span id="error_first_name" class="text-danger" class="form-control"></span>
                                </div>
                                <div class="form-group col-md-12">
                                    <label>Pregunta 2</label>
                                    <div class="radio">
                                        <label><input type="radio" value="Bueno" name="pregunta2"> Opcion 1</label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" value="regular" name="pregunta2"> Opcion 2</label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" value="malo" name="pregunta2"> Opcion 3</label>
                                    </div> 
                                    <span id="error_last_name" class="text-danger"></span>
                                </div>
                                <div class="form-group col-md-12">
                                    <label>Comentarios</label>
                                    <textarea name="comentarios" id="address" class="form-control"></textarea>
                                    <span id="error_address" class="text-danger"></span>
                                </div                                    
                        </div>
                        <button class="button" type="submit">Enviar</button>
                        </form>
                    </div>
                </div>
                <%                    }
                %>
                <div class="col-md-6 mt-4">
                    <h2>Historial de Encuestas</h2>
                    <div class="contenido p-4">
                        <div id="accordion">
                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link" data-toggle="collapse" data-target="#uno" aria-expanded="true" aria-controls="collapseOne">
                                            Encuesta de: Enero
                                        </button>
                                    </h5>
                                </div>
                                <div id="uno" class="collapse collapsed" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingTwo">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#dos" aria-expanded="false" aria-controls="collapseTwo">
                                            Encuesta de: Febrero
                                        </button>
                                    </h5>
                                </div>
                                <div id="dos" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                    <div class="card-body">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingThree">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed text-" data-toggle="collapse" data-target="#tres" aria-expanded="false" aria-controls="collapseThree">
                                            Encuesta de: Marzo
                                        </button>
                                    </h5>
                                </div>
                                <div id="tres" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link" data-toggle="collapse" data-target="#cuatro" aria-expanded="true" aria-controls="collapseOne">
                                            Encuesta de: Abril
                                        </button>
                                    </h5>
                                </div>
                                <div id="cuatro" class="collapse collapsed" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingTwo">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#cinco" aria-expanded="false" aria-controls="collapseTwo">
                                            Encuesta de: Mayo
                                        </button>
                                    </h5>
                                </div>
                                <div id="cinco" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                    <div class="card-body">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingThree">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed text-" data-toggle="collapse" data-target="#seis" aria-expanded="false" aria-controls="collapseThree">
                                            Encuesta de: Junio
                                        </button>
                                    </h5>
                                </div>
                                <div id="seis" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link" data-toggle="collapse" data-target="#siete" aria-expanded="true" aria-controls="collapseOne">
                                            Encuesta de: Julio
                                        </button>
                                    </h5>
                                </div>
                                <div id="siete" class="collapse collapsed" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingTwo">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#ocho" aria-expanded="false" aria-controls="collapseTwo">
                                            Encuesta de: Agosto
                                        </button>
                                    </h5>
                                </div>
                                <div id="ocho" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                    <div class="card-body">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingThree">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed text-" data-toggle="collapse" data-target="#nueve" aria-expanded="false" aria-controls="collapseThree">
                                            Encuesta de: Septiembre
                                        </button>
                                    </h5>
                                </div>
                                <div id="nueve" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link" data-toggle="collapse" data-target="#dies" aria-expanded="true" aria-controls="collapseOne">
                                            Encuesta de: Octubre
                                        </button>
                                    </h5>
                                </div>
                                <div id="dies" class="collapse collapsed" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingTwo">
                                    <h5 class="mb-0">
                                        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#once" aria-expanded="false" aria-controls="collapseTwo">
                                            Encuesta de: Noviembre
                                        </button>
                                    </h5>
                                </div>
                                <div id="once" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                    <div class="card-body">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
