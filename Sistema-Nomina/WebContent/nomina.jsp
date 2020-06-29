<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Liquidacion</title>

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
                                      <a href="menu.jsp">Inicio</a>               
                     <a href="/Sistema-Nomina/Index">Datos personales</a>                   
                     <a href="nomina.jsp">Calculo Nomina</a>
                     <a href="finiquitoLiquidacion.jsp">Finiquitos y Liquidaciones</a>      
                     <a href="catalogoMenu.jsp">Catálogo</a>
                     <a href="/Sistema-Nomina/edicionSistema">Sistema</a>
                 </div>

             </section>
         </nav>
       
         <div class="contenedor">
            <section class="contenido-header">
                <section class="textos-header">
                    <h1>Liquidacion</h1>
                      <div class="form-group row">
                          
                          <form>
     
  <fieldset disabled>                     
  <div class="form-group row">
    <label for="idEmpleado" class="col-sm-4 col-form-label">Id Empleado:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="idEmpleado">
    </div><br><br>
      
          <label for="sueldo" class="col-sm-4 col-form-label">Sueldo:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="sueldo">
    </div><br><br>
      
          <label for="aguinaldo" class="col-sm-4 col-form-label">Aguinaldo:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="aguinaldo">
    </div><br><br>
      
          <label for="primaVacacional" class="col-sm-4 col-form-label">Prima Vacacional:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="primaVacacional">
    </div><br><br>
      
                <label for="vacaciones" class="col-sm-4 col-form-label">Dias de Vacaciones:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="vacaciones">
    </div><br><br>
      
                <label for="indemnizacion" class="col-sm-4 col-form-label">Indemnizacion:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="indemnizacion">
    </div><br><br>
      
      
  </div> 
  </fieldset>   
                                       
</form> 
                          
                          
                    </div>
                    
                    
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">Finzalizar Liquidacion
                    </button>
                </section>
                <img class="imgM"  src="img/portfolio/imagen/primera.svg">
            </section>
        </div>
    </header>
    
    
    <!-- Portafolio Modal -->
    
    <div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Aviso</h5>
      </div>
      <div class="modal-body1">
                    ¿Estás seguro que deseas finalizar?<br>
Al finalizar finiquito el empleado se dará
de baja automaticamente
      </div><br><br>
      <div class="modal-footer1">
          
                <div class="btn-group" role="group" aria-label="Basic example" >
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#portfolioModal1" data-dismiss="modal">Aceptar</button>
  <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#portfolioModal2" data-dismiss="modal">Cancelar</button>

</div>
          
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