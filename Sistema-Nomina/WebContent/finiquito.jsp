<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="es">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Datos Personales</title>
          <link href="css/freelancer.css" rel="stylesheet">
  <link href="css/estilos.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;700&display=swap" rel="stylesheet">

    </head>
    <body>
        <header>
            <nav>
             <section class="contenedor nav">
                 <div class="logo">
                     <img src="img/portfolio/imagen/logo.png">
                 </div>
                 <div class="enlaces-header">
                     <a href="indexEmpleado.html">Inicio</a>
                     <a href="datosPersonalesEmpleado.html">Datos personales</a>
                     
                     <a href="#" data-toggle="modal" data-target="#exampleModal2">Nomina</a>
                     
                     <a href="reportesEmpleado.html">Reportes</a>
                 </div>
                 <div class="hamburguer">
                     <i class="fas fa-bars"></i>
                 </div>
             </section>
         </nav>
            
           <!--HEADER DE DATOS PERSONALES-->
           <section class="about-us">
               <div class="contenedor">
                <section class="contenido-header-generic">
                    <section class="textos-header">
                        <h1>Datos personales</h1>
                    </section>
                    <img src="img/portfolio/imagen/personalinfo.svg">
                    
                </section>
            </div>
        </section>
        
    </header>
        
    <div class="container" style="padding-top: 30px;">
        
        <div class="row">
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">Informacion Personal</h4>
          <div class="card-body">
              
              <div class="form-group row">
                  <label for="idEmpleado" class="col-sm-4 col-form-label">Id Empleado</label>
                  <div class="col-sm-8">
                      <input type="number" class="form-control" id="idEmpleado" disabled>
                  </div>
                  
                  <label for="nombre" class="col-sm-4 col-form-label">Nombre</label>
                  <div class="col-sm-8">
                      <input type="text" class="form-control" id="nombre" disabled>
                  </div>
                  
                  <label for="apellidoP" class="col-sm-4 col-form-label">Apellido Paterno</label>
                  <div class="col-sm-8">
                      <input type="text" class="form-control" id="apellidoP" disabled>
                  </div>
                  
                  <label for="apellidoM" class="col-sm-4 col-form-label">Apellido Materno</label>
                  <div class="col-sm-8">
                      <input type="text" class="form-control" id="apellidoM" disabled>
                  </div>
                  
                  <label for="numTelefono" class="col-sm-4 col-form-label">Numero Telefono</label>
                  <div class="col-sm-8">
                      <input type="number" class="form-control" id="numTelefono" disabled>
                  </div>
              </div>
      
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Editar</a>
          </div>
        </div>
      </div>
            
            
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">Direccion</h4>
          <div class="card-body">
              
              <div class="form-group row">
                  <label for="calle" class="col-sm-4 col-form-label">Calle</label>
                  <div class="col-sm-8">
                      <input type="number" class="form-control" id="calle" disabled>
                  </div>
                  
                  <label for="numExterior" class="col-sm-4 col-form-label">Numero Ext</label>
                  <div class="col-sm-8">
                      <input type="text" class="form-control" id="numeroExterior" disabled>
                  </div>
                  
                  <label for="colonia" class="col-sm-4 col-form-label">Colonia</label>
                  <div class="col-sm-8">
                      <input type="text" class="form-control" id="colonia" disabled>
                  </div>
                  
                  <label for="delegacion" class="col-sm-4 col-form-label">Delegacion</label>
                  <div class="col-sm-8">
                      <input type="text" class="form-control" id="delegacion" disabled>
                  </div>
                  
                  <label for="estado" class="col-sm-4 col-form-label">Estado</label>
                  <div class="col-sm-8">
                      <input type="number" class="form-control" id="estado" disabled>
                  </div>
                  
                  <label for="CP" class="col-sm-4 col-form-label">C.P</label>
                  <div class="col-sm-8">
                      <input type="number" class="form-control" id="CP" disabled>
                  </div>
                  
              </div>
                     
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Editar</a>
          </div>
        </div>
      </div>
            
            
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">Datos Empresariales</h4>
          <div class="card-body">
              
              <div class="form-group row">
                  <label for="claseE" class="col-sm-4 col-form-label">Clase</label>
                  <div class="col-sm-8">
                      <input type="number" class="form-control" id="claseE" disabled>
                  </div>
                  
                  <label for="tipoPago" class="col-sm-4 col-form-label">Tipo Pago</label>
                  <div class="col-sm-8">
                      <input type="text" class="form-control" id="tipoPago" disabled>
                  </div>
                  
                  <label for="fechaIngreso" class="col-sm-4 col-form-label">Fecha Ingreso</label>
                  <div class="col-sm-8">
                      <input type="text" class="form-control" id="fechaIngreso" disabled>
                  </div>
                  
                  <label for="puesto" class="col-sm-4 col-form-label">Puesto</label>
                  <div class="col-sm-8">
                      <input type="text" class="form-control" id="puesto" disabled>
                  </div>
                  
                  <label for="area" class="col-sm-4 col-form-label">Area</label>
                  <div class="col-sm-8">
                      <input type="text" class="form-control" id="area" disabled>
                  </div>
                  
              </div>
                         
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary" style="visibility: hidden">Learn More</a>
          </div>
        </div>
      </div>
    </div>
</div>
        
        <!-- Portfolio Modal 2 -->
    
    <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Aviso!!</h5>
      </div>
      <div class="modal-body1">
          Hay dos modulos que no estan diseñados. Este es el otro :C
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
        
        



<script src="https://kit.fontawesome.com/2480de16dd.js" crossorigin="anonymous"></script>
</body>
</html>