<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>CatalogosRH</title>

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
                     <a href="finiquitosLiquidacion.jsp">Finiquitos y Liquidaciones</a>      
                     <a href="catalogoMenu.jsp">Catálogo</a>
                     <a href="/Sistema-Nomina/edicionSistema">Sistema</a>
                 </div>

             </section>
         </nav> <br><br>
       
       
       
            <div class="contenedor">
            <section class="contenido-header">
                <section class="textos-header">
                    <h1 class="h1T">Catalogo de Reportes</h1>
                    <p class="h1T">Selecciona un tipo de Nómina:</p>

                    <div class="btn-group" role="group" aria-label="Basic example" >
  <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#portfolioModal1">Nómina Empeado</button>
  <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#portfolioModal2">Nómina por Area</button>
</div>
                    
                </section>
                <img src="img/portfolio/imagen/tercera.svg">
            </section>
        </div>
       
       
       
    </header>
    
    
    
 <!-- Portfolio Modal 1 -->
  <div class="portfolio-modal modal fade" id="portfolioModal1"  data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">
            <i class="fas fa-times"></i>
          </span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <!-- Portfolio Modal - Title -->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Nómina por Empleado</h2>
                  <hr>
                  
                <!-- Portfolio Modal - Text --><br>
<form>
     
   
      
  <div class="form-group row">
    <label for="idEmpleado" class="col-sm-2 col-form-label">Id Empleado:</label>
    <div class="col-sm-6">
        <div class="btn-group" role="group" arial-label="Basic Example">
        
            <input type="number" class="form-control" id="idEmpleado">
            <button type="button" class="btn btn-secondary">Buscar</button>
            
        </div>
      
    </div>
      
      <div class="col-auto my-1">
      <label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Preference</label>
      <select class="custom-select mr-sm-2" id="periodoE">
        <option selected>Periodo</option>
        <option value="1">One</option>
        <option value="2">Two</option>
        <option value="3">Three</option>
      </select>
    </div> 
      
  </div> 
      
      
   <br>
    
                                        
</form>    <br>       
                <input class="btn btn-primary" type="button" value="Calcular" onclick="";>  
                <input class="btn btn-secondary" type="button" value="Guardar" onclick="";>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
    
    
    
    
     <!-- Portfolio Modal 2 -->
  <div class="portfolio-modal modal fade" id="portfolioModal2" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">
            <i class="fas fa-times"></i>
          </span>
        </button>
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <!-- Portfolio Modal - Title -->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Nómina por área</h2>
                  <hr>
                  
    <div class="form-group row">
      
      <div class="col-auto my-1">
      <label class="mr-sm-3 sr-only" for="inlineFormCustomSelect">Preference</label>
      <select class="custom-select mr-sm-3" id="periodoA">
        <option selected>Periodo</option>
        <option value="1">One</option>
        <option value="2">Two</option>
        <option value="3">Three</option>
      </select>
    </div> 
        
    <div class="col-auto my-1">
      <label class="mr-sm-3 sr-only" for="inlineFormCustomSelect">Preference</label>
      <select class="custom-select mr-sm-3" id="areaA">
        <option selected>Area</option>
        <option value="1">One</option>
        <option value="2">Two</option>
        <option value="3">Three</option>
      </select>
    </div> 
        
        
      
  </div>
                  
                  
    <br>       
                <input class="btn btn-primary" type="button" value="Calcular" onclick="";>  
                <input class="btn btn-secondary" type="button" value="Guardar" onclick="";>

              </div>
            </div>
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