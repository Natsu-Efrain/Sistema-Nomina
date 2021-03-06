<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Busqueda de Id para nomina</title>

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
         </nav>
       
         <div class="contenedor">
            <section class="contenido-header">
                <section class="textos-header">
                <form action="nominaCalculo.jsp"
						onsubmit="return valforms(this)">
                    <h1>Nómina</h1>
                    <p>Para poder continuar con el proceso de nómina se deberá ingresar el Id del empleado.</p>
                      <div class="form-group row">                        
                          <label for="inputId" class="col-sm-4 col-form-label">Id Empleado:</label>
                          <div class="col-sm-8">
                              <input type="text" class="form-control" id="idEmpleado" name="idEmpleado" required="required" maxlength="25" onChange="return valforms(this.form,this)"
									editcheck="type=INT=Ingrese un id empleado valido" >
                          </div>
                    </div>
                    <button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">Buscar
                    </button>
                    </form>
                </section>
                <img src="img/portfolio/imagen/primera.svg">
            </section>
        </div>
    </header>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
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