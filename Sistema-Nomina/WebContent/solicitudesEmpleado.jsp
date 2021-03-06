<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Visualizaci�n N�mina</title>

  <!-- Custom fonts for this theme -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Theme CSS -->
  <link href="css/freelancer.css" rel="stylesheet">
  <link href="css/estilos.css" rel="stylesheet">
</head>
<body id="page-top">

   <header>
            <nav>
             <section class="contenedor nav">
                 <div class="logo">
                     <img src="img/portfolio/imagen/logo.png">
                 </div>
                  <div class="enlaces-header">
                  <a href="menuEmpleado.jsp">Inicio</a>
                     <a href="/Sistema-Nomina/Index">Datos personales</a>               
                     <a href="visualizacionNomina.jsp">Nomina</a>                    
                     <a href="reportesEmpleado.jsp">Reportes</a>
                     <a href="solicitudesEmpleado.jsp">Solicitudes</a>
                 </div>

             </section>
         </nav> <br><br>
    </header>
    
<div class="row">
  <div class="col-3">
    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
      <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Vacaciones</a>
      <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Prestamo</a>
      <a class="nav-link" id="fondoAhorro-tab" data-toggle="pill" href="#fondoAhorro" role="tab" aria-controls="fondoAhorro" aria-selected="false">Fondo Ahorro</a>    
    </div>
  </div>
    
  <div class="col-9">
    <div class="tab-content" id="v-pills-tabContent">
        
        <!-- Codigo de Primer Pill - 'Vacaciones' -->
        <!-- Revisa la informacion sobre las vacaciones que le corresponde -->
        
<div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
 <h2>Informacion - Vacaciones</h2>   
    
<form>   
    <div class="form-row">
    <div class="col-md-2 mb-2">
      <label for="disponibles">Dias Totales</label>
      <input type="text" class="form-control" id="disponibles" name="disponibles" value="" disabled>
    </div>
    <div class="col-md-2 mb-2">
      <label for="solicitados">Dias Tomados</label>
      <input type="text" class="form-control" id="solicitados" name="solicitados" value="" disabled>
    </div>
       <div class="col-md-2 mb-2">
      <label for="restantes">Dias Restantes</label>
      <input type="text" class="form-control" id="restantes" name="restantes" disabled>
    </div>
  </div>
    
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#informacionVacaciones">Ver Disponibilidad</button><br><br>
   </form>
    
    <form onsubmit="return valforms(this)">  
    <h2>Solicitar Vacaciones</h2>
    <div class="form-row">
    <div class="col-md-2 mb-2">
      <label for="solicitud">Dias a Solicitar</label>
        <input type="text"  class="form-control" name="solicitud" id="solicitud" size="20" maxlength="25" onchange="return valforms(this.form,this)" editcheck="type=alphanum;req=Y=Inserte cuantos dias quiere solicitar;cvt=UTC">
    </div>
  </div>
    
    <input type="button" value="Solicitar" class="btn btn-primary" data-toggle="modal" data-target="#aceptarSolicitud">
    </form>
 
          
</div>
        
    <!-- Codigo de Segundo Pill - Creacion de Puestos-->
        
      <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
        
      <h2>Solicitud de Prestamos</h2><br>
          <h3>Prestamo Actual</h3>
          
          <div class="form-row">
              
              <div class="col-md-2 mb-2">
               <label for="prestamo">�Prestamo Activo?</label>
                <input type="text" class="form-control" id="prestamo" name="prestamo" value="" disabled>
             </div>
              
          </div>
  
    <div class="form-row">
    <div class="col-md-2 mb-2">
      <label for="montoSolicitado">Monto Solicitado</label>
      <input type="text" class="form-control" id="montoSolicitado" name="nombreSolicitado" value="" disabled>
    </div>
    <div class="col-md-2 mb-2">
      <label for="mensualidades">Mensualidades</label>
      <input type="text" class="form-control" id="mansualidades" name="mensualidades" value="" disabled>
    </div>
       <div class="col-md-2 mb-2">
      <label for="porPagar">Monto por pagar</label>
      <input type="text" class="form-control" id="porPagar" name="porPagar" disabled>
    </div>
  </div> <br><br>
          
          <h3>Solicitar Prestamo</h3> 
          <form onsubmit="return valforms(this)">  
              <div class="form-row">
                  <div class="col-md-3 mb-2">
                    <label for="montoPrestamo">Solicite Monto (Max. 5000)</label>
                      <input type="text" class="form-control" name="montoPrestamo" id="montoPrestamo" size="20" maxlength="25" onchange="return valforms(this.form,this)" editcheck="type=num;req=Y=Inserte un monto para el prestamo;cvt=UTC">
                   </div>                     
                  <div class="col-md-3 mb-2">
                    <label for="mensualidadPrestamo">Mensualidades (Max. 12 meses)</label>
                      <input type="text" class="form-control" name="mensualidad Prestamo" id="mensualidadPrestamo" size="20" maxlength="25" onchange="return valforms(this.form,this)" editcheck="type=num;req=Y=Inserte la mensualidad;cvt=UTC">
                   </div>
                  <div class="col-md-3 mb-2">
                    <label for="pagoPrestamo">Pago por Mensualidad</label>
                      <input type="text" class="form-control" name="pagoPrestamo" id="pagoPrestamo" disabled>
                   </div>
              </div>         
              <input type="button" value="Calcular" class="btn btn-primary">       
             <input type="button" value="Solicitar Prestamo" class="btn btn-primary" data-toggle="modal" data-target="#solicitudPrestamo"> 
          </form>
      </div>
        
        <!--  Tercer Pill - Fondo de AHorro-->
        
        <div class="tab-pane fade" id="fondoAhorro" role="tabpanel" aria-labelledby="fondoAhorro-tab">
        
      <h2>Fondo de Ahorro</h2><br>
          <h3>Fondo de Ahorro Activo</h3>
          
          <div class="form-row">
              
              <div class="col-md-2 mb-2">
               <label for="fondoActivo">�Fondo Activo?</label>
                <input type="text" class="form-control" id="fondoActivo" name="fondoActivo" value="" disabled>
             </div>
              
          </div>
  
    <div class="form-row">
    <div class="col-md-2 mb-2">
      <label for="montoMensual">Fondo Mensual</label>
      <input type="text" class="form-control" id="montoMensual" name="montoMensual" value="" disabled>
    </div>
    <div class="col-md-2 mb-2">
      <label for="fonfoAcum">Fondo Acumulado</label>
      <input type="text" class="form-control" id="fondoAcum" name="fondoAcum" value="" disabled>
    </div>
  </div> <br><br>
          
          <h3>Solicitar Fondo de Ahorro</h3> 
          <form onsubmit="return valforms(this)">  
              <div class="form-row">
                  <div class="col-md-3 mb-2">
                    <label for="montoFondo">Fondo Mensual (Max. 13% del Salario)</label>
                      <input type="text" class="form-control" name="montoFondo" id="montoFondo" size="20" maxlength="25" onchange="return valforms(this.form,this)" editcheck="type=num;req=Y=Inserte el mondo para el Fondo de Ahorro;cvt=UTC">
                   </div>                     
                  <div class="col-md-2 mb-2">
                    <label for="fondoMaximo">Fondo Maximo</label>
                      <input type="text" class="form-control" name="fondoMaximo" id="fondoMaximo" disabled>
                   </div>
              </div>         
              <input type="button" value="Calcular Maximo" class="btn btn-primary">       
             <input type="button" value="Solicitar Fondo de Ahorro" class="btn btn-primary" data-toggle="modal" data-target="#solicitudFondo"> 
          </form>
      </div>
        

        
    </div>
  </div>
</div>
    
    
    <!-- Modal - Solicitud de Vacaciones -->
    
<div class="modal fade" id="aceptarSolicitud" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Informacion de Vacaciones</h5>
          <hr>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Usted va a solicitar sus vacaciones. <br> �Quiere continuar?
      </div>
      <div class="modal-footer" style="padding-top: 10px; padding-bottom: 15px;">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary">Aceptar</button>
      </div>
    </div>
  </div>
</div>
    
    <!-- Modal - Solicitud Prestamo -->
    
    <div class="portfolio-modal modal fade" id="solicitudPrestamo" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
    
         <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Confirmacion Prestamo</h5>
          <hr>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Usted va a solicitar un prestamo. Este se le descontara de su nomina.<br> �Desea continuar?
      </div>
      <div class="modal-footer" style="padding-top: 10px; padding-bottom: 15px;">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary">Aceptar</button>
      </div>
    </div>
  </div>
        
    </div>
    
    <!-- Modal - Solicitud Fondo de Ahorro -->
    
    <div class="portfolio-modal modal fade" id="solicitudFondo" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
    
         <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Confirmacion Fondo de Ahorro</h5>
          <hr>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Una vez aceptado el fondo de ahorro este no se podra retirar.<br> �Esta seguro que desea continuar?
      </div>
      <div class="modal-footer" style="padding-top: 10px; padding-bottom: 15px;">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary">Aceptar</button>
      </div>
    </div>
  </div>
        
    </div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
  <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
  <div class="scroll-to-top d-lg-none position-fixed ">
    <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
      <i class="fa fa-chevron-up"></i>
    </a>
  </div>

  
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Contact Form JavaScript -->
  <script src="js/jqBootstrapValidation.js"></script>
  <script src="js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/freelancer.min.js"></script>

</body>
</html>