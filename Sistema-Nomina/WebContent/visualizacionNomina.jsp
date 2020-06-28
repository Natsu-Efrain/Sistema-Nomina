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

  <title>Visualización Nómina</title>

  <!-- Custom fonts for this theme -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Theme CSS -->
  <link href="css/freelancer.css" rel="stylesheet">
  <link href="css/estilos.css" rel="stylesheet">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  
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
         </nav> <br><br>    
    </header>
    
    <div class="container">
    
    <h2>Estado de Nómina</h2><br> 
    
    <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-download"></span> Descargar
    </button>
    
    </div><br>

<div class="container">     
    
    <div class="row">
      <div class="col-lg-6 mb-6">
        <div class="card h-100">
          <h4 class="card-header">Percepciones</h4>
          <div class="card-body">
              
              
            <div class="card-text">
              
            <fieldset disabled>
                <div class="form-group row">
                    
    <label for="salario" class="col-sm-4 col-form-label">Salario:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="salario">
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
    </div>
                    
                </div>
            </fieldset>
                
            </div>
              
              
          </div>
            
        <div class="card-footer">
 <div class="form-gorup row">
    <label for="sumaDeducciones" class="col-sm-4 col-form-label">Suma Deducciones:</label>
    <div class="col-sm-6" style="padding-top: 15px;">
      <input type="number" class="form-control" id="sumaDeducciones" disabled>
    </div>
</div>  
          </div>
        </div>
      </div>
      <div class="col-lg-6 mb-6">
        <div class="card h-100">
          <h4 class="card-header">Deducciones</h4>
            
          <div class="card-body">
            <div class="card-text">
                
            <fieldset disabled>
                <div class="form-group row">
                    
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
      
          <label for="totalFR" class="col-sm-4 col-form-label">Faltas y Retardos:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="totalFR">
    </div><br><br>
      
          <label for="prestamo" class="col-sm-4 col-form-label">Prestamo:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="prestamo">
    </div><br><br>
      
          <label for="fondoAhorro" class="col-sm-4 col-form-label">Fondo Ahorro:</label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="fondoAhorro">
    </div>
                    
                </div>
            </fieldset>
            
            </div>
          </div>
            
          <div class="card-footer">

 <div class="form-gorup row">
    <label for="sumaDeducciones" class="col-sm-4 col-form-label">Suma Deducciones:</label>
    <div class="col-sm-6" style="padding-top: 15px;">
      <input type="number" class="form-control" id="sumaDeducciones" disabled>
    </div>
</div>       
          </div>
        </div>
      </div>
    </div>
</div><br>
              
<div class="container">
  <div class="form-gorup row" style="align-content: center;">
    <label for="pagoTotal" class="col-sm-2 col-form-label">Pago Neto:</label>
    <div class="col-sm-2">
      <input type="number" class="form-control" id="pagoTotal" disabled>
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