<%-- 
    Document   : encuesta
    Created on : 21/11/2019, 11:35:13 PM
    Author     : andaya
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="modelo.ConsultaEncuestas"%>
<%@page import="modelo.Encuestas"%>
<%@ page language="java" %>
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

        <title>JSP Page</title>
    </head>
    <body style="background-color: #ffffff;">
        <%@ include file="header.jsp" %>
        <section>
            <div class="container">
                <div class="row">
                    <%                        if (user != null) {

                            LinkedList<Encuestas> lista = ConsultaEncuestas.getEncuestas();
                            
                    %>
                    <div class="col-md-6 mt-4">
                        <h2>Encuesta</h2>
                        <div class="contenido p-4">
                            <form action="ServletInsercionATV1" method="post">
                                <h3 class="text-center"><%=lista.get(0).getNombreEncuesta()%></h3>
                                <input type="text" class="form-control" name="nombreEncu" value="" hidden="">
                                <input type="email" class="form-control"  name="email" value="<%=email%>" hidden="">
                                <div class="form-group col-md-12">
                                    <label><%=lista.get(0).getPregunta1()%></label>
                                    <div class="radio">
                                        <label><input type="radio" value="Bueno" name="pregunta1"><%=lista.get(0).getOpcion1()%></label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" value="REgular" name="pregunta1"><%=lista.get(0).getOpcion2()%></label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" value="Malo" name="pregunta1"><%=lista.get(0).getOpcion3()%></label>
                                    </div> 
                                    <span id="error_first_name" class="text-danger" class="form-control"></span>
                                </div>
                                <div class="form-group col-md-12">
                                    <label><%=lista.get(0).getPregunta2()%></label>
                                    <div class="radio">
                                        <label><input type="radio" value="Bueno" name="pregunta2"><%=lista.get(0).getOpcion4()%></label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" value="regular" name="pregunta2"><%=lista.get(0).getOpcion5()%></label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" value="malo" name="pregunta2"><%=lista.get(0).getOpcion6()%></label>
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
                            <jsp:include page="ServletConsulta1"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%@ include file="footer.jsp" %>
</body>
</html>
