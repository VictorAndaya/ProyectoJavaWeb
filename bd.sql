create database musicaitz_agk_atv_eha;
use musicaitz_agk_atv_eha;

create table usuarios(
	email varchar(50),
    contrasena varchar(50),
    nombre varchar(30),
    apaterno varchar(30),
    amaterno varchar(30),
    tipo bool
    );

create table eventos(
	nombreEvento varchar(70),
    fechaEvento date,
    horaEvento time
    );
    
 create table encuestaP(
	nombreEncuesta varchar(70),
    pregunta1 varchar(50),
    pregunta2 varchar(50),
    opcion1 varchar(30),
    opcion2 varchar(30),
    opcion3 varchar(30),
    opcion4 varchar(30),
    opcion5 varchar(30),
    opcion6 varchar(30),
    mes varchar(20)
    );
    
create table encuesta(
	respuesta1 varchar(70),
    respuest2 varchar(50),
    comen varchar(150),
    email varchar(50)
    );    
    