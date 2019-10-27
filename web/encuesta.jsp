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
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
        <title>JSP Page</title>
    </head>
    <body>

        <div class="barra">
            <div class="contenedor clearfix">
                <div class="logo">
                    <a href="index.jsp" class="index_logo"><img src="img/logo.png" alt=""></a>
                </div>
                <div class="menu-movil">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
                <nav class="navegacion-principal clearfix">
                    <a href="">Eventos</a>
                    <a href="nosotros.jsp">Nosotros</a>
                    <a href="contacto.jsp">Contacto</a>
                    <a href="suscribirme.jsp">Suscribirme</a>
                    <a href="login.jsp">login</a>
                </nav>
            </div>
        </div>
        
        <section class="seccion encuesta">
            <h2>Encuesta</h2>
            <div class="container box">
                <form method="post" id="register_form">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a class="nav-link active_tab1" style="border:1px solid #ccc" id="list_login_details">Datos Personales</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link inactive_tab1" id="list_personal_details" style="border:1px solid #ccc">Encuesta</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link inactive_tab1" id="list_contact_details" style="border:1px solid #ccc">Comentarios</a>
                        </li>
                    </ul>
                    <div class="tab-content" style="margin-top:16px;">
                        <div class="tab-pane active" id="login_details">
                            <div class="panel panel-default">
                                <div class="panel-heading">Datos del encuestado</div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label>Correo Electronico</label>
                                        <input type="text" name="email" id="email" class="form-control" />
                                        <span id="error_email" class="text-danger"></span>
                                    </div>
                                    <div class="form-group">
                                        <label>Nombre Completo</label>
                                        <input type="text" name="nombre" id="nombre" class="form-control" />
                                        <span id="error_password" class="text-danger"></span>
                                    </div>
                                    <div align="center">
                                        <button type="button" name="btn_login_details" id="btn_login_details" class="button">Siguiente</button>
                                    </div>
                                    <br>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="personal_details">
                            <div class="panel panel-default">
                                <div class="panel-heading">Encuesta</div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label>Selecciona tu genero preferido</label>
                                        <select class="mdb-select md-form form-control">
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
                                    <div class="form-group">
                                        <label>Nombre de tu artista favorito</label>
                                        <input type="text" name="last_name" id="last_name" class="form-control" />
                                        <span id="error_last_name" class="text-danger"></span>
                                    </div>
                                    <div class="form-group">
                                        <label>¿A cuantos conciertos asististe este año?</label>
                                        <select class="mdb-select md-form form-control">
                                            <option selected="" >Selecciona una opcion</option>
                                            <option value="ninguno">Ninguno</option>
                                            <option value="1">1 - 3</option>
                                            <option value="2">3 - 5</option>
                                            <option value="3">Mas de 5</option>
                                        </select>
                                        <span id="error_last_name" class="text-danger"></span>
                                    </div>
                                    <div class="form-group">
                                        <label>¿Cuanto pagarias por ver a tu artista favorito?</label>
                                        <select class="mdb-select md-form form-control">
                                            <option selected="" >Selecciona una opcion</option>
                                            <option value="nada">$0</option>
                                            <option value="1">$500 - $1500</option>
                                            <option value="2">$1500 - $3000</option>
                                            <option value="3">Mas de $3000</option>
                                        </select>
                                        <span id="error_last_name" class="text-danger"></span>
                                    </div>
                                    <div align="center">
                                        <button type="button" name="previous_btn_personal_details" id="previous_btn_personal_details" class="button">Regresar</button>
                                        <button type="button" name="btn_personal_details" id="btn_personal_details" class="button">Siguiente</button>
                                    </div>
                                    <br>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="contact_details">
                            <div class="panel panel-default">
                                <div class="panel-heading">Comentarios</div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label>Comentarios</label>
                                        <textarea name="address" id="address" class="form-control"></textarea>
                                        <span id="error_address" class="text-danger"></span>
                                    </div>
                                    <div class="form-group">
                                        <label>Celular</label>
                                        <input type="text" name="mobile_no" id="mobile_no" class="form-control" />
                                        <span id="error_mobile_no" class="text-danger"></span>
                                    </div>
                                    <div align="center">
                                        <button type="button" name="previous_btn_contact_details" id="previous_btn_contact_details" class="button">Regresar</button>
                                        <button type="button" name="btn_contact_details" id="btn_contact_details" class="button">Enviar</button>
                                    </div>
                                    <br>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </section>


        <footer class="site-footer">
            <div class="contenedor clearfix">
                <div class="footer-informacion">
                    <h3>Sobre <span>Musica ITZ</span></h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae, cum, nobis, deserunt, laudantium laborum ea magni sint maxime quis odit iure fuga sapiente esse rem excepturi eum ullam blanditiis expedita.</p>

                </div>
                <div class="ultimos-tweets">
                    <h3>Ultimos <span>Tweets</span></h3>
                    <ul>
                        <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod, aspernatur, ea, reprehenderit alias dolores repudiandae unde voluptatibus perferendis numquam facilis saepe quaerat laboriosam sed suscipit quibusdam autem dicta natus libero.</li>

                    </ul>
                </div>
                <div class="menu">
                    <h3>Redes <span>Sociales</span></h3>
                    <nav class="redes-sociales">
                        <a href=""><i class="fab fa-facebook"></i></a>
                        <a href=""><i class="fab fa-twitter"></i></a>
                        <a href=""><i class="fab fa-youtube"></i></a>
                        <a href=""><i class="fab fa-instagram"></i></a>
                    </nav>
                </div>
            </div>
            <p class="copyright">
                Todos los derechos Reservados Musica ITZ 2019.
            </p>
        </footer>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="jquery-1.3.2.min.js" type="text/javascript"></script>   
        <script src="js/vendor/modernizr-3.7.1.min.js" type="text/javascript"></script>
        <script src="js/main.js" type="text/javascript"></script>
        <script src="js/plugins.js" type="text/javascript"></script>
        <script src="js/main.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>        
        <script src="js/vendor/modernizr-3.7.1.min.js" type="text/javascript"></script>
    </body>
</html>
