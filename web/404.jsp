<%-- 
    Document   : 404
    Created on : 27/10/2019, 01:50:47 AM
    Author     : andaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina no encontrada</title>
        <style>

            * {
                line-height: 1.2;
                margin: 0;
            }

            html {
                color: #888;
                display: table;
                font-family: sans-serif;
                height: 100%;
                text-align: center;
                width: 100%;
            }

            body {
                display: table-cell;
                vertical-align: middle;
                margin: 2em auto;
                background-color: #333;
            }

            h1 {
                color: #ffffff;
                font-size: 2em;
                font-weight: 400;
            }

            p {
                color: #ffffff;
                margin: 0 auto;
                width: 280px;
            }
            p.error{
                font-size: 5rem;
            }
            a{
                color: #f9491a;
                text-decoration: none;
            }

            @media only screen and (max-width: 280px) {

                body, p {
                    width: 95%;
                }

                h1 {
                    font-size: 1.5em;
                    margin: 0 0 0.3em;
                }

            }

        </style>
    </head>
    <body>
        <p class="error">404</p>
        <h1>Pagina no encontrada</h1>
        <img src="img/logo.png" alt="">
        <p>Puedes volver al sitio presionando <a href="index.jsp">aquí</a></p>
    </body>
</html>
