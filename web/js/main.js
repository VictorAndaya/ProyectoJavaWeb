function mostrarPassword() {
    var cambio = document.getElementById("txtPassword");
    if (cambio.type === "password") {
        cambio.type = "text";
        $('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
    } else {
        cambio.type = "password";
        $('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
    }
}


function mostrarPassword2() {
    var cambio = document.getElementById("txtPassword2");
    if (cambio.type === "password") {
        cambio.type = "text";
        $('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
    } else {
        cambio.type = "password";
        $('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
    }
}


$(document).ready(function () {

    $('#btn_login_details').click(function () {
        $('#list_login_details').removeClass('active active_tab1');
        $('#list_login_details').removeAttr('href data-toggle');
        $('#login_details').removeClass('active');
        $('#list_login_details').addClass('inactive_tab1');
        $('#list_personal_details').removeClass('inactive_tab1');
        $('#list_personal_details').addClass('active_tab1 active');
        $('#list_personal_details').attr('href', '#personal_details');
        $('#list_personal_details').attr('data-toggle', 'tab');
        $('#personal_details').addClass('active in');
    });

    $('#previous_btn_personal_details').click(function () {
        $('#list_personal_details').removeClass('active active_tab1');
        $('#list_personal_details').removeAttr('href data-toggle');
        $('#personal_details').removeClass('active in');
        $('#list_personal_details').addClass('inactive_tab1');
        $('#list_login_details').removeClass('inactive_tab1');
        $('#list_login_details').addClass('active_tab1 active');
        $('#list_login_details').attr('href', '#login_details');
        $('#list_login_details').attr('data-toggle', 'tab');
        $('#login_details').addClass('active in');
    });

    $('#btn_personal_details').click(function () {
        $('#list_personal_details').removeClass('active active_tab1');
        $('#list_personal_details').removeAttr('href data-toggle');
        $('#personal_details').removeClass('active');
        $('#list_personal_details').addClass('inactive_tab1');
        $('#list_contact_details').removeClass('inactive_tab1');
        $('#list_contact_details').addClass('active_tab1 active');
        $('#list_contact_details').attr('href', '#contact_details');
        $('#list_contact_details').attr('data-toggle', 'tab');
        $('#contact_details').addClass('active in');
    }
    );

    $('#previous_btn_contact_details').click(function () {
        $('#list_contact_details').removeClass('active active_tab1');
        $('#list_contact_details').removeAttr('href data-toggle');
        $('#contact_details').removeClass('active in');
        $('#list_contact_details').addClass('inactive_tab1');
        $('#list_personal_details').removeClass('inactive_tab1');
        $('#list_personal_details').addClass('active_tab1 active');
        $('#list_personal_details').attr('href', '#personal_details');
        $('#list_personal_details').attr('data-toggle', 'tab');
        $('#personal_details').addClass('active in');
    });

    $('#btn_contact_details').click(function () {
        $('#btn_contact_details').attr("disabled", "disabled");
        $(document).css('cursor', 'prgress');
        $("#register_form").submit();
    });

});

$(function () {

    //Lettering
    $('.nombre-sitio').lettering();
    //Eventos

    $('div.ocultar').hide();
    $('.programa-evento .info-curso:first').show();
    $('.menu-programa a:first').addClass('activo');
    $('.menu-programa a').on('click', function () {
        $('.menu-programa a').removeClass('activo');
        $(this).addClass('activo');
        $('.ocultar').hide();
        var enlace = $(this).attr('href');
        $(enlace).fadeIn(1000);
        return false;
    });

    //Barra estatica

    var windowHeight = $(window).height();
    var barraAltura = $('.barra').innerHeight();

    $(window).scroll(function () {
        var scroll = $(window).scrollTop();
        if (scroll > windowHeight) {
            $('.barra').addClass('fixed');
            $('body').css({'margin-top': barraAltura + 'px'});
        } else {
            $('.barra').removeClass('fixed');
            $('body').css({'margin-top': '0px'});
        }
    });

    //Menu Respponsive
    $('.menu-movil').on('click', function () {
        $('.navegacion-principal').slideToggle();
    });

    //animaciones 

    var resumenLista = jQuery('.resumen-evento');
    if (resumenLista.length > 0) {
        $('.resumen-evento').waypoint(function () {
            $('.resumen-evento li:nth-child(1) p').animateNumber({number: 6}, 1000);
            $('.resumen-evento li:nth-child(2) p').animateNumber({number: 15}, 1500);
            $('.resumen-evento li:nth-child(3) p').animateNumber({number: 3}, 2000);
            $('.resumen-evento li:nth-child(4) p').animateNumber({number: 9}, 2200);
        }, {
            offset: '50%'
        });
    }

    //Cuenta Regresiva

    $('.cuenta-regresiva').countdown('2019/12/16 12:00:00', function (event) {
        $('#dias').html(event.strftime('%D'));
        $('#horas').html(event.strftime('%H'));
        $('#minutos').html(event.strftime('%M'));
        $('#segundos').html(event.strftime('%S'));
    });

});

function validarFormulario() {

    var txtNombre = document.getElementById('nombre').value;
    var txtApellidoP = document.getElementById('apellidoP').value;
    var txtApellidoM = document.getElementById('apellidoM').value;
    var txtCorreo = document.getElementById('email').value;
    var txtPwd = document.getElementById('txtPassword').value;
    var txtPwd2 = document.getElementById('txtPassword2').value;

//    var txtFecha = document.getElementById('fecha').value;
//    var cmbSelector = document.getElementById('selector').selectedIndex;
//    var chkEstado = document.getElementById('checkBox');
//    var rbtEstado = document.getElementsByName('radioButton');

//    var banderaRBTN = false;

    //Test campo obligatorio
    if (txtNombre === null || txtNombre.length === 0 || /^\s+$/.test(txtNombre)) {
        alert('ERROR: El campo nombre no debe ir vacío o lleno de solamente espacios en blanco');
        return false;
    }

    if (txtApellidoP === null || txtApellidoP.length === 0 || /^\s+$/.test(txtApellidoP)) {
        alert('ERROR: El campo Apellido Paterno no debe ir vacío o lleno de solamente espacios en blanco');
        return false;
    }

    if (txtApellidoM === null || txtApellidoM.length === 0 || /^\s+$/.test(txtApellidoM)) {
        alert('ERROR: El campo Apellido Materno no debe ir vacío o lleno de solamente espacios en blanco');
        return false;
    }

    //Test correo
    if (!(/\S+@\S+\.\S+/.test(txtCorreo))) {
        alert('ERROR: Debe escribir un correo válido');
        return false;
    }
    
    //Test campo obligatorio
    if (txtPwd === null || txtPwd.length === 0 || /^\s+$/.test(txtPwd)) {
        alert('ERROR: El campo contraseña no debe ir vacío o lleno de solamente espacios en blanco');
        return false;
    }
    //Test campo obligatorio
    if (txtPwd2 === null || txtPwd2.length === 0 || /^\s+$/.test(txtPwd2)) {
        alert('ERROR: El segundo campo contraseña no debe ir vacío o lleno de solamente espacios en blanco');
        return false;
    }
    
    if (txtPwd !== txtPwd2){
        alert('ERROR: Las contraseñas no coinciden');
        return false;
    }
    
    
    
    

//    //Test edad
//    if (txtEdad == null || txtEdad.length == 0 || isNaN(txtEdad)) {
//        alert('ERROR: Debe ingresar una edad');
//        return false;
//    }

//
//
//    //Test fecha
//    if (!isNaN(txtFecha)) {
//        alert('ERROR: Debe elegir una fecha');
//        return false;
//    }
//
//    //Test comboBox
//    if (cmbSelector == null || cmbSelector == 0) {
//        alert('ERROR: Debe seleccionar una opcion del combo box');
//        return false;
//    }
//
//    //Test checkBox
//    if (!chkEstado.checked) {
//        alert('ERROR: Debe seleccionar el checkbox');
//        return false;
//    }
//
//    //Test RadioButtons
//    for (var i = 0; i < rbtEstado.length; i++) {
//        if (rbtEstado[i].checked) {
//            banderaRBTN = true;
//            break;
//        }
//    }
//    if (!banderaRBTN) {
//        alert('ERROR: Debe elegir una opción de radio button');
//        return false;
//    }

    return true;
}
