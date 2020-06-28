<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Finiquitos y Liquidaciones</title>

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
                  
                     <a href="/Sistema-Nomina/edicionSistema">Sistema</a>
                     
                     <a href="nomina.jsp">Calculo Nomina</a>
                     <a href="finiquito.jsp">Finiquitos y Liquidaciones</a>      
                     <a href="catalogoMenu.jsp">Catálogo</a>
                 </div>

             </section>
         </nav>
       
         <div class="contenedor">
            <section class="contenido-header">
                <section class="textos-header">
                    <h1>Finiquitos y Liquidaciones</h1>
                      <div class="form-group row">
                          
                          <label for="idEmpleado" class="col-sm-4 col-form-label">Id Empleado:</label>
                          <div class="col-sm-8">
                              <input type="text" class="form-control" id="idEmpleado">
                          </div>
                    </div>
                    
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">Buscar
                    </button><br><br>
                    
                    <form>
                    
                    <fieldset class="form-group">
    <div class="row">
      <legend class="col-form-label col-sm-2 pt-0">Motivo:</legend>
      <div class="col-sm-10">
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gridRadios" id="finiquitoRB" value="option1" checked>
          <label class="form-check-label" for="gridRadios1">
            Finiquito
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gridRadios" id="liquidacionRB" value="option2">
          <label class="form-check-label" for="gridRadios2">
            Liquidacion
          </label>
        </div>
      </div>
    </div>
  </fieldset>
                    
                    </form>
                    
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop2">Siguiente
                    </button>
                    
                </section>
                <img src="img/portfolio/imagen/primera.svg">
            </section>
        </div>
    </header>
    
    
    <!-- Portafolio Modal staticBackdrop-->
    
    <div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Aviso</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body1">
          El usuario se encontró satisfactoriamente.
      </div>
      <div class="modal-footer1">
          
                          <div class="btn-group" role="group" aria-label="Basic example" >
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#portfolioModal1" data-dismiss="modal">Aceptar</button>
  <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#portfolioModal2" data-dismiss="modal">Cancelar</button>

</div>
          
      </div>
    </div>
  </div>
</div>
    
    <!-- Portafolio Modal staticBackdrop2-->
    
    <div class="modal fade" id="staticBackdrop2" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Aviso</h5>
      </div>
      <div class="modal-body1">
          Dependiendo del checkbox seleccionado se ira a una pantalla u otra. Por el momento elige cual quieres ver.
      </div><br>
      <div class="modal-footer1">
          
                          <div class="btn-group" role="group" aria-label="Basic example" >
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#portfolioModal1" onclick="location.href='finiquito.html'">Finiquito</button>
  <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#portfolioModal2" data-dismiss="modal" onclick="location.href='liquidacion.html'">Liquidacion</button>

</div>
          
      </div>
    </div>
  </div>
</div>
    
    <!-- Portfolio Modal - Modulo no terminado -->
    
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Aviso!!</h5>
      </div>
      <div class="modal-body1">
          Hay dos modulos que no estan diseñados. Este es uno de ellos :C
      </div><br>
      <div class="modal-footer1">
          
                <div class="btn-group" role="group" aria-label="Basic example" >
  <button type="button" class="btn btn-primary" data-dismiss="modal">Aceptar</button>
  <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>

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
