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
