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
        <title>Usuarios</title>
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <%   
            if (email == null) {
                response.sendRedirect("index.jsp");
            }else
            
            if (tipo != 1) {
                response.sendRedirect("index.jsp");
            }
        %>
        <div class="container mt-2">
            <div class="row text-center">
                <div class="col-md-12">
                    <div class="contenido p-4">
                        <h2>Usuarios</h2>
                        <jsp:include page="ServletConsulta2"/>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="footer.jsp" %>
    </body>
</html>
