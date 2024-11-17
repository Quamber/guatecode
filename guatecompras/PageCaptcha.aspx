

<meta aria-label="MONITOREOGC" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge IE=11; IE=9; IE=8; IE=7" />
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-25H8H8TS93"></script>
<script>
    function doSubmit() { return true; }
</script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'G-25H8H8TS93');
</script>

<head>
    <script src="/Scripts/jquery-3.7.1.js"></script>
    <script src="/Scripts/jquery-ui-1.13.2/jquery-ui.js"></script>
    <link href="/Scripts/jquery-ui-1.13.2/jquery-ui.css" rel="stylesheet" />
    <script src="/Scripts/bxslider-4-4.2.12/jquery.bxslider.min.js"></script>
    <title>
	Guatecompras - Captcha
</title><link href="/CSS/responsiveHomeStyle.css" type="text/css" rel="stylesheet" /><link href="/CSS/responsivepage.css" rel="stylesheet" /><link href="/CSS/identificadores.min.css" rel="stylesheet" /><link href="/CSS/pop_menu.min.css" rel="stylesheet" />
    <script src="/packages/popper.js.1.14.3/content/Scripts/umd/popper.min.js"></script>
    <link href="/Content/bootstrap.min.css" rel="stylesheet" />
    <script src="/Scripts/bootstrap.min.js"></script>
    <link href="/CSS/sideNavBar.css" type="text/css" rel="stylesheet" /><link href="/CSS/font-awesome.min.css" type="text/css" rel="stylesheet" /><link href="/CSS/gc-home.css" rel="stylesheet" />
    <style>
        @media(max-width: 766px){
            .site-info {
                margin-right: 0 !important;
            }
        }
    </style>
    <script type="text/javascript" src="/js/sideNavBar.js"></script>
    <script type="text/javascript" src="/js/GCFunction.js"></script>
    <script>
        var $ = jQuery.noConflict();
    </script>
    <script type="text/javascript">
        $('.dropdown').hover(function () {
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
        },
            function () {
                $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
            });
        function updateClock() {
            var local = new Date().toLocaleString("es-ES", { timeZone: "America/Guatemala" });
            var currentTime = local.split(" ")[1];
            var currentHours = currentTime.split(":")[0];
            var currentMinutes = currentTime.split(":")[1];
            var currentSeconds = currentTime.split(":")[2];
            var timeOfDay = (currentHours < 12) ? "AM" : "PM";
            currentHours = (currentHours > 12) ? currentHours - 12 : currentHours;
            currentHours = (currentHours == 0) ? 12 : currentHours;
            var currentTimeString = "  -  " + currentHours + ":" + currentMinutes + ":" + currentSeconds + " " + timeOfDay;

            $("#clock").html(currentTimeString);
        }
        function today() {
            var myDateTime = new Date().toLocaleString("es-ES", { timeZone: "America/Guatemala", year: 'numeric', month: 'long', day: 'numeric' });
            var dateGuate = myDateTime;
            $("#today").html("Guatemala," + " " + dateGuate + " ");
        }
        $(document).ready(function () {
            setInterval('updateClock()', 1000);
            today();
        });
    </script>
</head>
<body>
    <div id="pageHeaderContainer" class="container-fluid">
        <div id="pageheader" class="row mb-0 h-auto">

            <div id="logoBlue" style="background-color: #014684;" class="d-block d-sm-block d-md-none d-lg-none d-xl-none col-xs-12 col-sm-12 mb-2">
                <a href="/">
                    <i class="gch-logo gc-4x gc-inverse m-2" style="margin-left: 0px !important;"></i>
                </a>
                <div class="d-flex justify-content-end" style="background-color: #014684; margin-top: -50px; margin-left: 20px;">
                    <div class="home-icon"><a href="/"><i class="gch-casa gc-inverse" style="margin-top: -4px"></i></a></div>
                    <span style="font-size: 24px; cursor: pointer; color: white; padding-bottom: 15px;" onclick="openNav()">&#9776;</span>
                </div>

            </div>

            <div id="imagen_logo" class="d-none d-md-block d-xl-block col-md-6 col-lg-6" style="display: inline;">

                <div class="barrita"></div>
                <div class="logo-box">
                    <a href="/">
                        <i class="gch-logocolor gc-5x mt-2"></i>
                        <br />
                    </a>

                </div>
            </div>

            <div class="col-md-6 col-lg-6 d-none d-md-block d-xl-block HeaderMaster">
                <br />
                <div class="d-flex justify-content-end">
                    <div id="today" class="date-time"></div>
                    &nbsp
                    <div id="clock" class="date-time"></div>
                </div>
            </div>

        </div>
        <div class="gc-content-no pr-3">
            <i id="MasterGC_iNoCero" class="gch-cero gc-no0 "></i>
            <i id="MasterGC_iNoUno" class="gch-uno gc-no1"></i>
            <i id="MasterGC_iNoDos" class="gch-dos-alt gc-no2 gc-primary"></i>
            <i id="MasterGC_iNoTres" class="gch-tres gc-no3"></i>
            <i id="MasterGC_iNoCuatro" class="gch-cuatro gc-no4"></i>
            <i id="MasterGC_iNoCinco" class="gch-cinco gc-no5"></i>
        </div>
        <br />
        <div class="limpiar">
            

            <div class="limpiar">
            </div>
            <div class="d-sm-block d-md-none" style="z-index: 4000;">
                <div id="mySidenav" class="sidenav">
                    <div class="row">
                        <div class="col-10">
                            <a href="/" class="p-0"><i class="gch-logocolor gc-5x my-2"></i></a>
                        </div>
                        <div class="col-2">
                            <a href="javascript:void(0)" class="closebtn closebox" onclick="closeNav()" style="border: unset; background: unset; color: #055093; font-size: 23px !important; text-shadow: 1px 1px 5px #6c757d;">X</a>
                        </div>
                        <div class="col-12 mt-2" style="display: inline-flex">
                            <a id="btnAutenticar" class="btn btn-default circle-button2 circle-button-orange " style="padding: 1.5px;" href="/priv/sistema/login.aspx" title="Autenticarse" style="-ms-grid-column: 1; -ms-grid-row: 1;">
                                <i class="gch-candado gc-2-5x"></i>
                            </a>
                            <br class="d-block d-md-none" />
                            <a id="btnBoletin" class="btn btn-default circle-button2 circle-button-sky" style="padding: 2px;" href="/servicios/suscripcion.aspx" data-toggle="tooltip" data-placement="top" title="Boletines" style="-ms-grid-column: 1; -ms-grid-row: 2;">
                                <i class="gch-sobre gc-2-5x"></i>
                            </a>
                            <br class="d-block d-md-none" />
                            <a id="btnContacto" class="btn btn-default circle-button2 circle-button-gray" style="padding: 2px" href="/contactenos/contactenos.aspx" title="Contáctenos" style="-ms-grid-column: 1; -ms-grid-row: 3;">
                                <i class="gch-celular gc-2-5x"></i>
                            </a>
                            <br class="d-block d-md-none" />
                            <a id="btnChat" class="btn btn-default circle-button2 circle-button-blue p-1" title="Tutorial" style="padding: 2px !important; -ms-grid-column: 1; -ms-grid-row: 4;" href="javascript:void(0);" onclick="startIntro()">
                                <i class="gch-interrogacion gc-2-5x"></i>
                            </a>
                            <br class="d-block d-md-none" />
                            <a id="MasterGC_linkWhatsapp" class="btn btn-default circle-button2 circle-button-whatsapp p-0" title="WhatsApp DIGAE" style="-ms-grid-column: 1; -ms-grid-row: 6;">
                                <i class="gch-whatsapp-aro gc-3x" style="margin-left: -33px !important; margin-top: 0px !important"></i>
                            </a>
                        </div>
                    </div>

                    <div id="accordian">
                        <ul class="colored">
                            <li>
                                <h3 class="pl-3"><a href="#">Contrato Abierto</a></h3>
                                <ul>
                                    <li>
                                        <a href="#">ABC de Contrato Abierto</a>
                                        <ul style="display: none;">
                                            <li><a href="/Descargas/Contrato_Abierto/Proceso%20para%20contrato%20Abierto%20Nuevo.pdf">¿Qué es el contrato abierto?</a></li>
                                            <li><a href="/Descargas/Contrato_Abierto/Actores%20en%20el%20Contrato%20Abierto%20y%20sus%20Responsabilidades.pdf">Actores y responsabilidades</a></li>
                                            <li><a href="/Descargas/Contrato_Abierto/Gestion%20del%20Contrato%20Abierto.pdf">Gestión del contrato abierto</a></li>
                                            <li><a href="/Descargas/Contrato_Abierto/Proceso%20%20de%20%20prórroga%20en%20Contrato%20Abierto.pdf">Proceso de prórroga en contrato abierto</a></li>
                                        </ul>
                                    </li>

                                    <li><a href="/contrato/consultacontratos.aspx">Productos en Contrato Abierto</a></li>
                                    <li><a href="/contrato/frmContratoAbiertoVigentes.aspx">Informe de Vencimientos</a></li>
                                    <li><a href="/contrato/consultaproductos.aspx">Registro de precios de Productos en Contrato Abierto</a></li>
                                </ul>
                            </li>
                            <li>
                                <h3 class="pl-3"><a href="#">Proveedores</a></h3>
                                <ul style="display: none;">
                                    <li><a href="/proveedores/busquedaProvee.aspx">Búsqueda</a></li>
                                    <li><a href="/inhabilitaciones/consultaProveeInhabRes.aspx">Inhabilitados</a></li>
                                    <li><a href="/PreguntasFrecuentes/ConsultarPreguntasFrecuentes.aspx?op=Provee">Preguntas Frecuentes</a></li>
                                    <li><a href="/proveedores/VerificaCIOUT.aspx">Verificar una Constancia de Inscripción</a></li>
                                </ul>
                            </li>
                            <li>
                                <h3 class="pl-3"><a href="/Compradores/RegistroResumen.aspx?filter=h_EXeWWKWcs.">Compradores</a></h3>
                            </li>
                            <li>
                                <h3 class="pl-3"><a href="/Inconformidad/consultaAvInc.aspx?opt=Home">Inconformidades</a></h3>
                            </li>
                            <li>
                                <h3 class="pl-3"><a href="/compradores/ConsultaPAC.aspx">Plan Anual de Compras</a></h3>
                            </li>
                            <li>
                                <h3 class="pl-3"><a href="/info/consultaDocumentosEstadisticos.aspx">Datos Abiertos</a></h3>
                            </li>
                            <li>
                                <h3 class="pl-3"><a href="#">MIPYME</a></h3>
                                <ul style="display: none;">
                                    <li><a href="/MiPymes/frmBusquedaAvanzadaMiPymes.aspx?opt=Home">Búsqueda</a></li>
                                    <li><a href="/MiPymes/frmBusquedaMiPyme.aspx">Concursos Vigentes</a></li>
                                </ul>
                            </li>
                            <li>
                                <h3 class="pl-3"><a href="#">Búsquedas</a></h3>
                                <ul style="display: none;">
                                    <li><a href="/concursos/consultaConAvanz.aspx">Concursos</a></li>
                                    <li><a href="/concursos/ConsultaAvanzProyBase.aspx">Proyectos de Base</a></li>
                                    <li><a href="/proveedores/consultaadvprovee.aspx">Adjudicaciones</a></li>
                                    <li><a href="/Inconformidad/consultaAvInc.aspx?opt=Search">Inconformidades</a></li>
                                    <li><a href="/PubSinConcurso/ConsultaAdjSN.aspx?o=1">Publicaciones (NPG)</a></li>
                                    <li><a href="/contrato/BusquedaAvanz.aspx">Productos contrato abierto</a></li>
                                    <li><a href="/proveedores/consultaadvprovee.aspx?o=1">Contratos Infraestructura</a></li>
                                </ul>
                            </li>
                            <li>
                                <h3 class="pl-3"><a href="#">Definiciones</a></h3>
                                <ul style="display: none;">
                                    <li>
                                        <a href="/Descargas/Informacion/Generales Guatecompras.junio2013.pdf">Conoce GUATECOMPRAS</a>
                                    </li>
                                    <li>
                                        <a href="/Descargas/Informacion/Info DNCAE.pdf">¿Qué es DIGAE?</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <h3 class="pl-3">
                                    <a href="/info/MarcoLegal.aspx" target="_blank">Marco Legal</a></h3>
                            </li>
                            

                            <li>
                                <h3 class="pl-3"><a href="#">Enlaces de Interés</a></h3>
                                <ul style="display: none;">
                                    <li>
                                        <a href="https://www.rgae.gob.gt">RGAE</a>
                                    </li>
                                    <li>
                                        <a href="https://formacion.minfin.gob.gt">DIFODA</a>
                                    </li>
                                    <li>
                                        <a href="https://ocds.guatecompras.gt">OCDS</a>
                                    </li>
                                    <li>
                                        <a href="/info/preciosDeReferencia.aspx">Precios de Referencia INE</a>
                                    </li>
                                </ul>

                            </li>
                            <li>
                                <h3 class="pl-3"><a href="/PreguntasFrecuentes/ConsultarPreguntasFrecuentes.aspx">FAQ</a></h3>
                            </li>
                            <li>
                                <h3 class="pl-3"><a href="/PreguntasFrecuentes/VideoTutoriales.aspx">¡VideoTutoriales para todos!</a></h3>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- toggle meu -->
            
    <link href="/CSS/gc-pantalla.css" rel="stylesheet" />
    <script src="https://challenges.cloudflare.com/turnstile/v0/api.js" defer></script>

        </div>
    </div>
    <form name="aspnetForm" method="post" action="./PageCaptcha.aspx?tk=ZY3SwuFEeG0DBBA_WE8JtEsieiThE2_vRvTPwynnmaRyC3NMqYiwYao7-9d70ogdjzD_oTqn2j-ZWj7CPAlM8BQxUvFNF1EVxCWojL5U1QY." id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTI5ODc2Nzg2Ng8WAh4LdXJsUmVkaXJlY3QFTGh0dHBzOi8vd3d3Lmd1YXRlY29tcHJhcy5ndC9jb25jdXJzb3MvY29uc3VsdGFDb25jdXJzby5hc3B4P25vZz0xMzkyMzc4MSZvPTUWAmYPDxYEHgx2c3RTcnZMb2dpY2ECAh4SdnN0U3J2UHJlc2VudGFjaW9uAgJkFgQCAQ9kFgICBQ8WAh4FY2xhc3MFHWdjaC1kb3MtYWx0IGdjLW5vMiBnYy1wcmltYXJ5ZAIFD2QWCAIBD2QWAgIDDw8WAh4EVGV4dAVMaHR0cHM6Ly93d3cuZ3VhdGVjb21wcmFzLmd0L2NvbmN1cnNvcy9jb25zdWx0YUNvbmN1cnNvLmFzcHg/bm9nPTEzOTIzNzgxJm89NWRkAgIPFgQeBXRpdGxlBRVGYWNlYm9vayBHdWF0ZWNvbXByYXMeBGhyZWYFJmh0dHA6Ly93d3cuZmFjZWJvb2suY29tL0d1YXRlY29tcHJhc0dDZAIDDxYEHwUFFFR3aXR0ZXIgR3VhdGVjb21wcmFzHwYFHGh0dHBzOi8veC5jb20vR3VhdGVjb21wcmFzZ3RkAgQPFgQfBQUVV2hhdHNBcHAgR3VhdGVjb21wcmFzHwYFMmh0dHBzOi8vd2EubWUvKzUwMjU1OTMyNDAyLz90ZXh0PUhvbGEgR3VhdGVjb21wcmFzZGRdBL/w5v7WvlD2ses4rMZQmA46aA==" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['aspnetForm'];
if (!theForm) {
    theForm = document.aspnetForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/WebResource.axd?d=9IM--sSFUVv8KmisleA8x0C0A4pPnT0dNS4GYorjox4pMD3vaFLuRBE8iAMFlRcloqniMxjVfwnUAz-PCofvYyn7QiY1&amp;t=638459608569584809" type="text/javascript"></script>


<script type="text/javascript">
//<![CDATA[
var __cultureInfo = {"name":"es-GT","numberFormat":{"CurrencyDecimalDigits":2,"CurrencyDecimalSeparator":".","IsReadOnly":true,"CurrencyGroupSizes":[3],"NumberGroupSizes":[3],"PercentGroupSizes":[3],"CurrencyGroupSeparator":",","CurrencySymbol":"Q","NaNSymbol":"NaN","CurrencyNegativePattern":1,"NumberNegativePattern":1,"PercentPositivePattern":0,"PercentNegativePattern":0,"NegativeInfinitySymbol":"-∞","NegativeSign":"-","NumberDecimalDigits":2,"NumberDecimalSeparator":".","NumberGroupSeparator":",","CurrencyPositivePattern":0,"PositiveInfinitySymbol":"∞","PositiveSign":"+","PercentDecimalDigits":2,"PercentDecimalSeparator":".","PercentGroupSeparator":",","PercentSymbol":"%","PerMilleSymbol":"‰","NativeDigits":["0","1","2","3","4","5","6","7","8","9"],"DigitSubstitution":1},"dateTimeFormat":{"AMDesignator":"a.m.","Calendar":{"MinSupportedDateTime":"\/Date(-62135575200000)\/","MaxSupportedDateTime":"\/Date(253402300799999)\/","AlgorithmType":1,"CalendarType":1,"Eras":[1],"TwoDigitYearMax":2029,"IsReadOnly":true},"DateSeparator":"/","FirstDayOfWeek":0,"CalendarWeekRule":0,"FullDateTimePattern":"dddd, d \u0027de\u0027 MMMM \u0027de\u0027 yyyy HH:mm:ss","LongDatePattern":"dddd, d \u0027de\u0027 MMMM \u0027de\u0027 yyyy","LongTimePattern":"HH:mm:ss","MonthDayPattern":"d \u0027de\u0027 MMMM","PMDesignator":"p.m.","RFC1123Pattern":"ddd, dd MMM yyyy HH\u0027:\u0027mm\u0027:\u0027ss \u0027GMT\u0027","ShortDatePattern":"d/MM/yyyy","ShortTimePattern":"HH:mm","SortableDateTimePattern":"yyyy\u0027-\u0027MM\u0027-\u0027dd\u0027T\u0027HH\u0027:\u0027mm\u0027:\u0027ss","TimeSeparator":":","UniversalSortableDateTimePattern":"yyyy\u0027-\u0027MM\u0027-\u0027dd HH\u0027:\u0027mm\u0027:\u0027ss\u0027Z\u0027","YearMonthPattern":"MMMM \u0027de\u0027 yyyy","AbbreviatedDayNames":["dom.","lun.","mar.","mié.","jue.","vie.","sáb."],"ShortestDayNames":["DO","LU","MA","MI","JU","VI","SA"],"DayNames":["domingo","lunes","martes","miércoles","jueves","viernes","sábado"],"AbbreviatedMonthNames":["ene.","feb.","mar.","abr.","may.","jun.","jul.","ago.","sep.","oct.","nov.","dic.",""],"MonthNames":["enero","febrero","marzo","abril","mayo","junio","julio","agosto","septiembre","octubre","noviembre","diciembre",""],"IsReadOnly":true,"NativeCalendarName":"calendario gregoriano","AbbreviatedMonthGenitiveNames":["ene.","feb.","mar.","abr.","may.","jun.","jul.","ago.","sep.","oct.","nov.","dic.",""],"MonthGenitiveNames":["enero","febrero","marzo","abril","mayo","junio","julio","agosto","septiembre","octubre","noviembre","diciembre",""]},"eras":[1,"d. C.",null,0]};//]]>
</script>

<script src="/ScriptResource.axd?d=nW36HyD4A0gy-YyD_C_5VshaiZKB8GnXL4e9Mz7fZf8f0IHpovFXkz-t2-MsngOgyfz_Hv0FtCN8tjT3PAY9i4P6xA603VnJVVBmOkES9VbPF7GGBoIGLkGpZbywL_bvswPQPyXHG8WLc77lKTxXgxAPOP7lBJl_OmdRRZJ-Oz0-h9-U0&amp;t=74258c30" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=GS-Vof0k9ZopAnuZtNF_qrvR6UkwbkH8r_WJ8ZRMQ8N849BIFM4cZL4WN3GgX7ICeakluVTXG6a3a9MnABrQzadA4enAb0G6vDj3e9UYgnK6l7It3YA6A-hPSMAKjW6tGgF8Oo7DUY5cEqzi4YS8HQ9G4RsZzKXb2Y8Ly8Gchlxn3Xvn0&amp;t=74258c30" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=aiOJ9B3xBBkmAPyuF0v8AZgsETTN0g_DPvVwKNWUbEDIO4iZTDdVjNqGbgznvbco3--zLHfNrgOmfhpqwYunEtz58Wu0Z47qwIBlrhE22H4octgiApDUnVox_WlmyXIDDdO9NQ2&amp;t=7d5986a" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=PyXBXPyM3bSf3OmtKuQBWBhEm3So1iXnZP54E-0RjVKDrwg8DLAUDyO98rI5lxIq4KWzgAZgCF7FbvPBxGTVO3EkZ4fTqFCMts7r21z_FLzEvwcIzed2jf-qqhAYk4h_S6W6Rb-AUvRyurZ_AQSAeF1aDHo1&amp;t=7d5986a" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=pL5llxuFRhBMstMIhwE1jvsTV5G3BCs8fmQ69quvaLWqjHRA4A5p9RBTbqhlOG1LrEFM7u5-uGaD4MvLJqgME_ME4ydMlVxI028Isd65tyaFb-Iy0&amp;t=7d5986a" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=4VQg8KbC8vrjdG5WMn0v1kynohqR6zu3v_Sc1hwR8I5iYoX3isUXG8qGcEw5A2V6KTVG0Wh6bw1YkhvHp7L8Rygjt8_UM-lb2_2CYu_goXbAjO3Rg0uGVxOYpAG_BpYzEFrzaA2&amp;t=7d5986a" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=1auaBJ4AAD8HA7tAd3yQDtcsx1IxF5YMYU_QJC4Kp_lSyIA0tuRl6D0yZ-v5qgk-nDR6R8aHqEqX0GWmNJYVRtTpdFNpKgqbFxKm4ZM0JRteeaEoII1If-UEaRxoCV6LZAbKfA2&amp;t=7d5986a" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=9Cp2nVyI5H-rRjWBxQoQLM3Rpv-FAX-hj0TxJBAkwGOsJUrjPr_Km5vv_mR_TYo0Gs85imrMSLP1kI3KsHcD3S7D0M8Cim4jl1r1u6sl6FdaH89YkphFaDNqLbuXMtmnQku-FQ2&amp;t=7d5986a" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=B89mUPjC2FKcuYFI8PXFEBR9t068mLQYBtmDtwF_WIRBqeZUJLS2M-qgPPpfo7oRjO50G-e_NUiO2bIl4yNVM8uSeSy1gvb-spGcI7wsXpgeXwMK9JcQsegxP4xibi1Oc2-Xmw2&amp;t=7d5986a" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=yNH0mQuDJY0Px79q_9wZlxMvB47uLpJ7XJuVgqU41b7kUkCEIf1a5SWAQ4WiWBA3Oq4vm7UNu4NCx0P3UsmFqNBTmEBfWaDjUAu3RbAOARcQXi2ybzU3c-QrYDK0hGehH5_XkA2&amp;t=7d5986a" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=A4kPTe_yPlu16t7rbN2KPDz0afZU1uV6MvVCMVDFU4abkAk59RUnz2cFYX4Y87uM2v_qkNCMEtJFDoElVMuRfN3XkAfsMk-gga7Dl3I7HK_xqoRs78q1X5W2geU-WVAzg2-LCA2&amp;t=7d5986a" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=KUgJGz_-NOSSXdH_gZnuEHlqD31PEP-ECQl9A4yC8tSsnhv8Ow2JJhWp8sC3slFcv46pgjN1r5eDOM9f8BU4Q5-b0nEywWMfcz_UhAzMY_aPu9ZJzQFlezp2N1YpqWt-_Be9cg2&amp;t=7d5986a" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=03OKVXG0NYs6E7VKEjnwE2zE3y0ImfPt3DwmGfSjUSpmgzQERRKWpK3AtwZS0g6t0fmIOVwoFE1Dk9B4rfr83RyYc9ZpOV-BUUB4po8DLsbmwvB8O01gAovrAd3Nv6QsmRhgbw2&amp;t=7d5986a" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=LTc0KpTFHJRz-WsWINETjpa3cAbDkFzeztn5ToVo13vi0sHBFl-uliEvDFvo4mNmhRdI6KqUKya8WR4wqj5gna0i1wDednTkJrAjkgxS0ZOhnKdFBDjt07rFTi5q4O31MAsqeA2&amp;t=7d5986a" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=ilWGBbZRwTXZSzhHzWqaepsWAyrma9GzOUsGSHf4Ki_B96euawJz4LBp1mdYBeXXXGVZjo1v6YVO1ZKtMz8G-kq91YNbne_WBLBWawwXdbLbfur58rbi066vk-H4E9RhEPo9xw2&amp;t=7d5986a" type="text/javascript"></script>
<script src="/ScriptResource.axd?d=ztVpCi33KBt9TIF3LMAgMeX_BhoR13DcmqGnE6pYj_Pu0kVQuh3wRhcOttU3MBEC98cSZooYlgGetbeYckUTOHOhjKMXhvaWFzE7EiFboIf4bm7KDAywn74ZPj61-O83-Ka5Vw2&amp;t=7d5986a" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
var PageMethods = function() {
PageMethods.initializeBase(this);
this._timeout = 0;
this._userContext = null;
this._succeeded = null;
this._failed = null;
}
PageMethods.prototype = {
_get_path:function() {
 var p = this.get_path();
 if (p) return p;
 else return PageMethods._staticInstance.get_path();},
ValidarCaptcha:function(token,urlRedirect,succeededCallback, failedCallback, userContext) {
return this._invoke(this._get_path(), 'ValidarCaptcha',false,{token:token,urlRedirect:urlRedirect},succeededCallback,failedCallback,userContext); }}
PageMethods.registerClass('PageMethods',Sys.Net.WebServiceProxy);
PageMethods._staticInstance = new PageMethods();
PageMethods.set_path = function(value) { PageMethods._staticInstance.set_path(value); }
PageMethods.get_path = function() { return PageMethods._staticInstance.get_path(); }
PageMethods.set_timeout = function(value) { PageMethods._staticInstance.set_timeout(value); }
PageMethods.get_timeout = function() { return PageMethods._staticInstance.get_timeout(); }
PageMethods.set_defaultUserContext = function(value) { PageMethods._staticInstance.set_defaultUserContext(value); }
PageMethods.get_defaultUserContext = function() { return PageMethods._staticInstance.get_defaultUserContext(); }
PageMethods.set_defaultSucceededCallback = function(value) { PageMethods._staticInstance.set_defaultSucceededCallback(value); }
PageMethods.get_defaultSucceededCallback = function() { return PageMethods._staticInstance.get_defaultSucceededCallback(); }
PageMethods.set_defaultFailedCallback = function(value) { PageMethods._staticInstance.set_defaultFailedCallback(value); }
PageMethods.get_defaultFailedCallback = function() { return PageMethods._staticInstance.get_defaultFailedCallback(); }
PageMethods.set_enableJsonp = function(value) { PageMethods._staticInstance.set_enableJsonp(value); }
PageMethods.get_enableJsonp = function() { return PageMethods._staticInstance.get_enableJsonp(); }
PageMethods.set_jsonpCallbackParameter = function(value) { PageMethods._staticInstance.set_jsonpCallbackParameter(value); }
PageMethods.get_jsonpCallbackParameter = function() { return PageMethods._staticInstance.get_jsonpCallbackParameter(); }
PageMethods.set_path("PageCaptcha.aspx");
PageMethods.ValidarCaptcha= function(token,urlRedirect,onSuccess,onFailed,userContext) {PageMethods._staticInstance.ValidarCaptcha(token,urlRedirect,onSuccess,onFailed,userContext); }
//]]>
</script>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="F2221472" />
</div>

        <div class="container-fluid">
            <div class="d-none d-md-block">
                <div id="submodulo_menu_gc_compradoresb" class="row">
                    <div class="d-none d-md-block d-lg-block d-xl-block col-md-2 col-lg-2">
                        <div class="home-icon bg-menu">
                            <a href="/"><i class="gch-casa gc-inverse gc-3x" style="margin-top: -4px" title="Inicio"></i></a>
                        </div>
                    </div>
                    <div id="submodulo_menu_iconos_laterales" class="col-xs-12 col-sm-12 col-md-10 col-lg-10" style="text-align: right; margin-top: 25px; height: 50px;">
                        <div id="imagenes_sub_modulo" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="padding: 0; display: inline;">
                            <div id="upperMenu" class="" style="position: relative; float: right; bottom: 11px;">
                                <div class="borde-llave"></div>
                                <fieldset class="menu-border">
                                    <legend class="menu-border">Menu</legend>
                                    <div class="dropdown">
                                        <a href="/proveedores/busquedaProvee.aspx">
                                            <div class="gc-aro-modulo gc-provee gc-sub-modulo" title="Proveedores"></div>
                                        </a>
                                        <div class="dropdown-menu  box-proveedor submenu-proveedor upper-line-proveedor" aria-labelledby="dropdownMenuButton">
                                            <div class="submenu-header header-color-proveedor">Proveedor</div>
                                            <a class="dropdown-item" href="/proveedores/busquedaProvee.aspx">Búsqueda</a>
                                            <a class="dropdown-item" href="/inhabilitaciones/consultaProveeInhabRes.aspx">Inhabilitados</a>
                                            <a class="dropdown-item" href="/PreguntasFrecuentes/ConsultarPreguntasFrecuentes.aspx?op=Provee">Preguntas Frecuentes</a>
                                            <a class="dropdown-item" href="/proveedores/VerificaCIOUT.aspx">Verificar una Constancia de Inscripción</a>
                                        </div>
                                    </div>
                                    <div class="dropdown">
                                        <a href="/Compradores/RegistroResumen.aspx?filter=h_EXeWWKWcs.">
                                            <div class="gc-aro-modulo gc-compra gc-sub-modulo" title="Compradores"></div>
                                        </a>
                                        <div class="dropdown-menu  box-comprador submenu-comprador upper-line-comprador" aria-labelledby="dropdownMenuButton">
                                            <div class="submenu-header header-color-comprador">Comprador</div>
                                            <a class="dropdown-item" href="/Compradores/RegistroResumen.aspx?filter=h_EXeWWKWcs.">Registro de Compradores</a>
                                        </div>
                                    </div>
                                    <div class="dropdown">
                                        <a href="/Inconformidad/consultaAvInc.aspx?opt=Home">
                                            <div class="gc-aro-modulo gc-inconformidades gc-sub-modulo" title="Inconformidades"></div>
                                        </a>
                                        <div class="dropdown-menu  box-inconformidades submenu-inconformidades upper-line-inconformidades" aria-labelledby="dropdownMenuButton">
                                            <div class="submenu-header header-color-inconformidades">Inconformidades</div>
                                            <a class="dropdown-item" href="/Inconformidad/consultaAvInc.aspx?opt=Home">Inconformidades</a>
                                        </div>
                                    </div>
                                    <div class="dropdown">
                                        <a href="/compradores/ConsultaPAC.aspx">
                                            <div class="gc-aro-modulo gc-pac gc-sub-modulo" title="Plan Anual de Compras"></div>
                                        </a>
                                        <div class="dropdown-menu  box-pac submenu-pac upper-line-pac" aria-labelledby="dropdownMenuButton">
                                            <div class="submenu-header header-color-pac">PAC</div>
                                            <a class="dropdown-item" href="/compradores/ConsultaPAC.aspx">Consulta PAC</a>
                                        </div>
                                    </div>

                                    <div class="dropdown">
                                        <a href="/concursos/consultaConAvanz.aspx">
                                            <div class="gc-aro-modulo gc-search gc-sub-modulo" title="Búsquedas"></div>
                                        </a>
                                        <div class="dropdown-menu  box-busquedas submenu-busquedas upper-line-busquedas" aria-labelledby="dropdownMenuButton">
                                            <div class="submenu-header header-color-busquedas">Búsquedas</div>
                                            <a class="dropdown-item" href="/concursos/consultaConAvanz.aspx">Concursos</a>
                                            <a class="dropdown-item" href="/concursos/ConsultaAvanzProyBase.aspx">Proyectos de Base</a>
                                            <a class="dropdown-item" href="/proveedores/consultaadvprovee.aspx">Adjudicaciones</a>
                                            <a class="dropdown-item" href="/Inconformidad/consultaAvInc.aspx?opt=Search">Inconformidades</a>
                                            <a class="dropdown-item" href="/PubSinConcurso/ConsultaAdjSN.aspx?o=1">Publicaciones (NPG)</a>
                                            <a class="dropdown-item" href="/contrato/BusquedaAvanz.aspx">Productos contrato abierto</a>
                                            <a class="dropdown-item" href="/proveedores/consultaadvprovee.aspx?o=1">Contratos Infraestructura</a>
                                        </div>
                                    </div>

                                    <div class="dropdown">
                                        <a href="/info/MarcoLegal.aspx">
                                            <div class="gc-aro-modulo gc-baselegal gc-sub-modulo" title="Marco Legal"></div>
                                        </a>
                                        <div class="dropdown-menu  box-legal submenu-legal upper-line-legal" aria-labelledby="dropdownMenuButton">
                                            <div class="submenu-header header-color-legal">Marco Legal</div>
                                            <a class="dropdown-item" href="/info/MarcoLegal.aspx">Marco Legal</a>
                                        </div>
                                    </div>

                                    <div class="dropdown">
                                        <a href="/contrato/consultacontratos.aspx">
                                            <div class="gc-aro-modulo gc-contabi gc-sub-modulo" title="Contrato Abierto"></div>
                                        </a>
                                        <div class="dropdown-menu  box-contrato submenu-contrato upper-line-contrato" aria-labelledby="dropdownMenuButton">
                                            <div class="submenu-header header-color-contrato">Contrato</div>
                                            <a class="dropdown-item" href="/Descargas/Contrato_Abierto/Proceso%20para%20contrato%20Abierto%20Nuevo.pdf">¿Qué es el contrato abierto?</a>
                                            <a class="dropdown-item" href="/Descargas/Contrato_Abierto/Actores%20en%20el%20Contrato%20Abierto%20y%20sus%20Responsabilidades.pdf">Actores y responsabilidades</a>
                                            <a class="dropdown-item" href="/Descargas/Contrato_Abierto/Gestion%20del%20Contrato%20Abierto.pdf">Gestión del contrato abierto</a>
                                            <a class="dropdown-item" href="/Descargas/Contrato_Abierto/Proceso%20%20de%20%20prórroga%20en%20Contrato%20Abierto.pdf">Proceso de prórroga en contrato abierto</a>
                                            <a class="dropdown-item" href="/contrato/consultacontratos.aspx">Productos en Contrato Abierto</a>
                                            <a class="dropdown-item" href="/contrato/frmContratoAbiertoVigentes.aspx">Informe de Vencimientos</a>
                                            <a class="dropdown-item" href="/contrato/consultaproductos.aspx">Registro de precios de Productos en Contrato Abierto</a>
                                        </div>
                                    </div>

                                    <div class="dropdown">
                                        <a href="/contactenos/contactenos.aspx?opt=Home">
                                            <div class="gc-aro-modulo gc-infoasis gc-sub-modulo" title="Información y Asistencia"></div>
                                        </a>
                                        <div class="dropdown-menu  box-contacto submenu-contacto upper-line-contacto" aria-labelledby="dropdownMenuButton">
                                            <div class="submenu-header header-color-contacto">Contacto</div>
                                            <a class="dropdown-item" href="/contactenos/contactenos.aspx?opt=Home">Contáctanos</a>
                                        </div>
                                    </div>

                                    <div class="dropdown">
                                        <a href="/MiPymes/frmBusquedaAvanzadaMiPymes.aspx">
                                            <div class="gc-aro-modulo gc-mipymes gc-sub-modulo" title="Mi Pymes"></div>
                                        </a>
                                        <div class="dropdown-menu  box-mipyme submenu-mipyme upper-line-mipyme" aria-labelledby="dropdownMenuButton">
                                            <div class="submenu-header header-color-mipyme">MIPYME</div>
                                            <a class="dropdown-item" href="/MiPymes/frmBusquedaAvanzadaMiPymes.aspx?opt=Home">Búsqueda</a>
                                            <a class="dropdown-item" href="/MiPymes/frmBusquedaMiPyme.aspx">Concursos Vigentes</a>
                                        </div>
                                    </div>

                                    <div class="dropdown" style="margin-right: -10px;">
                                        <a href="/priv/sistema/login.aspx">
                                            <div class="gc-aro-modulo gc-autenticarse gc-sub-modulo" title="Login"></div>
                                        </a>
                                        <div class="dropdown-menu  box-autenticarse submenu-autenticarse upper-line-autenticarse" aria-labelledby="dropdownMenuButton">
                                            <div class="submenu-header header-color-autenticarse">Acceso</div>
                                            <a class="dropdown-item" href="/priv/sistema/login.aspx">Autenticarse</a>
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                            <!-- upper menu-->



                        </div>
                    </div>
                </div>
                <div id="idCategoria" class="row d-none d-md-block barra-categoria">
                </div>
            </div>
            

            <span id="MasterGC_BarraNav"><a class="Barra" href='http://www.guatecompras.gt/'>Inicio</a></span>
            <br />
            

    <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('MasterGC$ContentBlockHolder$scriptManager', 'aspnetForm', ['tMasterGC$ContentBlockHolder$UpdatePanelGeneral','','tMasterGC$ContentBlockHolder$updBuscar',''], [], [], 90, 'MasterGC');
//]]>
</script>

    <style>
        #MasterGC_ContentBlockHolder_CaptchaValidacion_CaptchaImage {
            #height : 75px !important;
            width: 100% !important;            
        }
    </style>
    <script type="text/javascript" language="javascript">
        var ModalProgress = 'MasterGC_ContentBlockHolder_ModalProgress';
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(beginRequest);
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(endRequest);
        function beginRequest(sender, args) {
            $find(ModalProgress).show();
        }
        function endRequest(sender, args) {
            $find(ModalProgress).hide();
        }
        $(document).ready(function () {
            $(function () {
                $('[data-toggle="tooltip"]').tooltip()
            })

            $("#MasterGC_ContentBlockHolder_CaptchaValidacion_CaptchaTextBox").addClass("form-control mt-2");
            $("#MasterGC_ContentBlockHolder_CaptchaValidacion_CaptchaTextBox").focus();
        });
        function pageLoad(sender, args) {
            if (args.get_isPartialLoad()) {
                $('[data-toggle="tooltip"]').tooltip()
                $("#MasterGC_ContentBlockHolder_CaptchaValidacion_CaptchaTextBox").addClass("form-control mt-2");
            }
        }
    </script>
    <div id="MasterGC_ContentBlockHolder_panelUpdateProgress" class="updateProgress">
	
        <div id="MasterGC_ContentBlockHolder_UpdateProgress1" style="display:none;">
		
                <div class="alert alert-info">
                    <img src="/imagenes/misc/indicator.gif" style="vertical-align: middle" alt="Procesando" />
                    <span class="TextoAzul">Por favor espere, se está verificando...</span>
                </div>
            
	</div>
    
</div>
    

    

    <div class="row mt-2 text-center">
        <div class="col-12">
            <img src="/images/chatio_buscando.png" class="img-fluid img-captcha" style="vertical-align: middle" alt="img-search" />
        </div>
        <div class="col-12 mb-4">
            <h3 style="font-weight: bold; color: #01509c;">Revisaremos tu navegador antes de acceder</h3>
            <small class="mb-0" style="color: #3B497A;font-weight:bold;">Este es un proceso automático, tu navegador te redirigirá en breve a tu contenido solicitado.</small>            
        </div>
    </div>

    <div id="MasterGC_ContentBlockHolder_UpdatePanelGeneral" class="">
	
            <div class="row">
                <div class="col-md-4 col-xs-12 mx-auto text-center">
                    <div id="MasterGC_ContentBlockHolder_divCaptcha" class="cf-turnstile" data-size="flexible" data-callback="validarCaptcha" data-sitekey="0x4AAAAAAAkTlA-D0wbwNM0Z"></div>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-12">
                    <div id="MasterGC_ContentBlockHolder_updBuscar">
		
                            
                            <div id="MasterGC_ContentBlockHolder_DivMsgError" class="alert alert-danger text-left" style="display:none">
                                <span id="MasterGC_ContentBlockHolder_lblError" style="font-size: unset; font-weight: normal"></span>
                            </div>
                            
                        
	</div>
                </div>
            </div>
        
</div>

    <div class="captcha">
        <div class="linecolor">
            <hr>
            <hr>
            <hr>
            <hr>
            <hr>
        </div>
    </div>
    <script>
        function validarCaptcha(token) {
            const params = new Proxy(new URLSearchParams(window.location.search), {
                get: (searchParams, prop) => searchParams.get(prop),
            });
            // Get the value of "some_key" in eg "https://example.com/?some_key=some_value"
            let tk = params.tk;
            $.ajax({
                type: "POST",
                url: "/sistema/PageCaptcha.aspx/ValidarCaptcha",
                data: JSON.stringify({ token: token, urlRedirect: tk }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data != "") {
                        let res = JSON.parse(data.d)
                        if ((/true/i).test(res.resultado.resultado.exito)) {
                            window.location.replace(res.resultado.resultado.redirect)
                        } else {
                            $("#MasterGC_ContentBlockHolder_DivMsgError").show()
                            $("#MasterGC_ContentBlockHolder_lblError").text(res.resultado.resultado.mensaje);
                            turnstile.reset(MasterGC_ContentBlockHolder_divCaptcha)
                        }
                    }
                },
                error: function (error) {
                    $("#MasterGC_ContentBlockHolder_DivMsgError").show()
                    $("#MasterGC_ContentBlockHolder_lblError").text(res.resultado.resultado.mensaje);
                }
            })
        }
    </script>

            <div id="footerContainerInterno">
                <div class="row GC-default-color" style="padding-top: 20px; margin-top: 30px;">
                    <div class="lnk-footer">
                        <div>
                            <a style="color: white !important; text-decoration: underline !important; font-size: 14px;" href="/info/TerminosDeUso.aspx">Términos y Referencias</a> &nbsp &nbsp &nbsp
                                <a href="/info/tipsparawebmasters.aspx" style="color: white !important; text-decoration: underline !important; font-size: 14px;">Tips para Webmasters</a>
                        </div>
                    </div>
                </div>
                <div class="row" style="background-color: #055093">

                    <div class="col-6">

                        <div id="texto_footer" style="text-align: left; font-size: 12px; margin-left: 25px; padding-bottom: 30px; margin-top: 20px">

                            <span>Ministerio de Finanzas Públicas</span><br />
                            <span>Dirección General de Adquisiciones del Estado</span><br />
                            <span>8 Av. 20-59 Zona 1, Ciudad de Guatemala</span><br />
                            <span>PBX (502) 2374-2872, (502) 2374-3000 ext. 10953</span><br />
                            <span><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="5c3d38313532352f282e3d38332e3b3f1c3135323a3532723b333e723b28">[email&#160;protected]</a></span>
                        </div>
                    </div>

                    <div class="col-6" style="padding-right: 5%; margin-top: 4px;">
                        <br />

                        <div class="text-right mr-1 mb-1">
                            <span class="footer-tx">REDES SOCIALES </span>
                            <br />
                        </div>
                        <div class="text-right">
                            <div style="float: right; border-left: 1px solid white;">
                                <a href="http://www.facebook.com/GuatecomprasGC" id="MasterGC_urlFacebook" title="Facebook Guatecompras" class="ml-1" target="_blank"><i class="gch-facebook gc-3-5x"></i></a>
                                <a href="https://x.com/Guatecomprasgt" id="MasterGC_urlTwitter" title="Twitter Guatecompras" class="ml-1" target="_blank"><i class="gch-twitter gc-3-5x"></i></a>
                                <a href="https://wa.me/+50255932402/?text=Hola Guatecompras" id="MasterGC_urlWhatsapp" title="WhatsApp Guatecompras" class="ml-1" target="_blank"><i class="gch-whatsapp gc-3-5x"></i></a>
                            </div>
                        </div>

                        <div class="row" style="margin-top: 50px;">
                            <div class="col-12 text-right>">
                                <div class="footer-tx text-right" style="text-align: justify; font-size: 12px;">
                                    www.guatecompras.gt pertenece al Estado de la República de Guatemala
                                     <br />
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
                <div class="d-flex justify-content-start">
                    <span class="out-footer">Compatible con Internet Explorer 10 en adelante, Mozilla Firefox y Chrome</span>
                </div>
            </div>
        </div>
    

<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script type="text/javascript">
//<![CDATA[
Sys.Extended.UI.Localization.SetLocale("es");Sys.Application.add_init(function() {
    $create(Sys.UI._UpdateProgress, {"associatedUpdatePanelId":null,"displayAfter":0,"dynamicLayout":true}, null, null, $get("MasterGC_ContentBlockHolder_UpdateProgress1"));
});
Sys.Application.add_init(function() {
    $create(Sys.Extended.UI.ModalPopupBehavior, {"backgroundCssClass":"modalProcessBackground","dynamicServicePath":"/sistema/PageCaptcha.aspx","id":"MasterGC_ContentBlockHolder_ModalProgress","popupControlID":"MasterGC_ContentBlockHolder_panelUpdateProgress"}, null, null, $get("MasterGC_ContentBlockHolder_panelUpdateProgress"));
});
//]]>
</script>
</form>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/vcd15cbe7772f49c399c6a5babf22c1241717689176015" integrity="sha512-ZpsOmlRQV6y907TI0dKBHq9Md29nnaEIPlkf84rnaERnq6zvWvPUqr2ft8M1aS28oN72PdrCzSjY4U6VaAw1EQ==" data-cf-beacon='{"rayId":"8e2e417e5f858807","serverTiming":{"name":{"cfExtPri":true,"cfL4":true,"cfSpeedBrain":true,"cfCacheStatus":true}},"version":"2024.10.5","token":"17218350a2264c8e9357724053110c4e"}' crossorigin="anonymous"></script>
</body>
</html>
