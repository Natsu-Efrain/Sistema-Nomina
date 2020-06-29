<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Calculo de Nómina</title>

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
         </nav> <br><br>
       
       <div class="btn-group" role="group" aria-label="Basic example" >
  <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#portfolioModal1">Deducciones</button>
  <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#portfolioModal2">Percepciones</button>
  <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#portfolioModal3">Calcular Nómina</button>
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
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Deducciones</h2>
                  <hr>
  
                  
                <img class="img-fluid rounded mb-5" src="img/portfolio/MyImg/area_perimetro/triangulo.png" alt="">
                  
                <!-- Portfolio Modal - Text -->
                <!-- Calculo del Perimetro-->
                  <h2>Calculo Deducciones</h2><br>
<form>
     
  <fieldset disabled>                     
  <div class="form-group row">
    <label for="idEmpleado" class="col-sm-4 col-form-label">Id Empleado:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="idEmpleado">
    </div>
  </div> 
  </fieldset>   <br>
    
       <div class="form-group row">
    <label for="faltas" class="col-sm-4 col-form-label">Faltas:</label>
    <div class="col-sm-8">
          <div class="form-row">
    <div class="col-5">
      <input type="number" class="form-control" placeholder="Inserte faltas" id="faltas">
    </div>
    <div class="col-2">
      <input type="text" class="form-control" placeholder="    =" disabled>
    </div>
    <div class="col-5">
      <input type="number" class="form-control" placeholder="0.00"  id="faltasR" disabled>
    </div>
  </div>
        
    </div>
  </div> 
    
    
  <div class="form-group row">
    <label for="retardos" class="col-sm-4 col-form-label">Retardos:</label>
    <div class="col-sm-8">
          <div class="form-row">
    <div class="col-5">
      <input type="number" class="form-control" placeholder="Inserte retardos" id="retardos">
    </div>
    <div class="col-2">
      <input type="text" class="form-control" placeholder="    =" disabled>
    </div>
    <div class="col-5">
      <input type="number" class="form-control" placeholder="0.00"  id="retardosR" disabled>
    </div>
  </div>
        
    </div>
  </div> 
                                        
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
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Percepciones</h2>
                  <hr>
  
                  
                <img class="img-fluid rounded mb-5" src="img/portfolio/MyImg/area_perimetro/triangulo.png" alt="">
                  
                <!-- Portfolio Modal - Text -->
                <!-- Calculo del Perimetro-->
                  <h2>Calculo Percepciones</h2><br>
<form>
     
  <fieldset disabled>                     
  <div class="form-group row">
    <label for="idEmpleado" class="col-sm-4 col-form-label">Id Empleado:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="idEmpleado">
    </div>
  </div> 
  </fieldset>   <br>
    
       <div class="form-group row">
    <label for="horasE" class="col-sm-4 col-form-label">Horas Extra:</label>
    <div class="col-sm-8">
          <div class="form-row">
    <div class="col-5">
      <input type="number" class="form-control" placeholder="Inserte Horas Extra" id="horasE">
    </div>
    <div class="col-2">
      <input type="text" class="form-control" placeholder="    =" disabled>
    </div>
    <div class="col-5">
      <input type="number" class="form-control" placeholder="0.00" id="horasER" disabled>
    </div>
  </div>
        
    </div>
  </div> 
    
                                        
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
    
    
    
         <!-- Portfolio Modal 3 -->
    
  <div class="portfolio-modal modal fade" id="portfolioModal3" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
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
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Nómina</h2>
                  <hr>
  
                  
                <img class="img-fluid rounded mb-5" src="img/portfolio/MyImg/area_perimetro/triangulo.png" alt="">
                  
                <!-- Portfolio Modal - Text -->
                <!-- Calculo del Perimetro-->
                  <h2>Calculo de Nómina</h2><br>
<form>
     
  <fieldset disabled>                     
  <div class="form-group row">
    <label for="idEmpleado" class="col-sm-4 col-form-label">Id Empleado:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="idEmpleado">
    </div><br><br>
      
          <label for="ISR" class="col-sm-4 col-form-label">ISR:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="ISR">
    </div><br><br>
      
          <label for="infonavit" class="col-sm-4 col-form-label">Infonavit:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="infonavit">
    </div><br><br>
      
          <label for="IMSS" class="col-sm-4 col-form-label">IMSS:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="IMSS">
    </div><br><br>
      
          <label for="faltasR" class="col-sm-4 col-form-label">Faltas:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="faltasR">
    </div><br><br>
      
          <label for="retardosR" class="col-sm-4 col-form-label">Retardos:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="retardosR">
    </div><br><br>
      
          <label for="prestamo" class="col-sm-4 col-form-label">Prestamo:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="prestamo">
    </div><br><br>
      
          <label for="fondoAhorro" class="col-sm-4 col-form-label">Fondo Ahorro:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="fondoAhorro">
    </div><br><br>
      
          <label for="horasER" class="col-sm-4 col-form-label">Horas Extra:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="horasER">
    </div><br><br>
      
          <label for="bonoProductividad" class="col-sm-4 col-form-label">Bono Productividad:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="bonoProductividad">
    </div><br><br>
      
          <label for="valesDespensa" class="col-sm-4 col-form-label">Vales de despensa:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="valesDespensa">
    </div><br><br>
      
          <label for="primaVacacional" class="col-sm-4 col-form-label">Prima Vacacional:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="primaVacacional">
    </div><br><br>
      
          <label for="aguinaldo" class="col-sm-4 col-form-label">Aguinaldo:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="aguinaldo">
    </div><br><br>
      
  </div> 
  </fieldset>   
    
    
                                        
</form>        
                <input class="btn btn-primary" type="button" value="Ejecutar Nómina" onclick="";>  

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