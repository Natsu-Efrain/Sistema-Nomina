<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Edici�n Sistema</title>

<!-- Custom fonts for this theme -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- Theme CSS -->
<link href="css/freelancer.css" rel="stylesheet">
<link href="css/estilos.css" rel="stylesheet">
<script type="text/javascript" src="js/editcheck.js"></script>
</head>
<body id="page-top">
<%
							String error =(String)request.getAttribute("error");
							if(error!=null)
								
							%>
	<header>
		<nav>
			<section class="contenedor nav">
				<div class="logo">
					<img src="img/portfolio/imagen/logo.png">
				</div>
				<div class="enlaces-header">
					<a href="index.html">Inicio</a> <a href="datosPersonales.html">Datos
						personales</a> <a href="#" data-toggle="modal"
						data-target="#exampleModal">Empleados</a> <a href="nomina.html">Calculo
						Nomina</a> <a href="finiquito.html">Finiquitos y Liquidaciones</a> <a
						href="catalogoMenu.html">Cat�logo</a>
				</div>

			</section>
		</nav>
		<br> <br>
	</header>

	<div class="row">
		<div class="col-3">
			<div class="nav flex-column nav-pills" id="v-pills-tab"
				role="tablist" aria-orientation="vertical">
				<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill"
					href="#v-pills-home" role="tab" aria-controls="v-pills-home"
					aria-selected="true">Agregar Empleado</a> <a class="nav-link"
					id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile"
					role="tab" aria-controls="v-pills-profile" aria-selected="false">Agregar
					Puesto</a> <a class="nav-link" id="v-pills-messages-tab"
					data-toggle="pill" href="#v-pills-messages" role="tab"
					aria-controls="v-pills-messages" aria-selected="false">Crear
					Area</a> <a class="nav-link" id="v-pills-messages-tab"
					data-toggle="pill" href="#editarUsuario" role="tab"
					aria-controls="editarUsuario" aria-selected="false">Editar
					Usuario</a>
			</div>
		</div>

		<div class="col-9">
			<div class="tab-content" id="v-pills-tabContent">

				<!-- Codigo de Primer Pill - 'Agregar Empleado' -->
				<div class="tab-pane fade show active" id="v-pills-home"
					role="tabpanel" aria-labelledby="v-pills-home-tab">

					<form method="get" action="/Sistema-Nomina/AgregarEmpleado"
						onsubmit="return valforms(this)">
						<h2>Datos Personales</h2>

						<div class="form-row">
							<div class="col-md-3 mb-3">
								<label for="Nombre">Nombre</label> <input type="text"
									class="form-control" id="Nombre" name="Nombre"
									onChange="return valforms(this.form,this)"
									editcheck="type=ALPHA=Ingrese un nombre valido;" maxlength="25"
									value="" required>
							</div>
							<div class="col-md-2 mb-3">
								<label for="ApellidoP">Apellido Paterno</label> <input
									type="text" class="form-control" id="ApellidoP" value=""
									required name="ApellidoP"
									onChange="return valforms(this.form,this)"
									editcheck="type=ALPHA=Ingrese un apellido paterno valido;"
									maxlength="25">
							</div>
							<div class="col-md-2 mb-3">
								<label for="ApellidoM">Apellido Materno</label> <input
									type="text" class="form-control" id="ApellidoM" value=""
									required name="ApellidoM"
									onChange="return valforms(this.form,this)"
									editcheck="type=ALPHA=Ingrese un apellido materno valido;"
									maxlength="25">
							</div>
							<div class="col-md-2 mb-3">
								<label for="Numero Telefono">Numero Telefono</label> <input
									type="text" class="form-control" id="numeroTelefono" value=""
									required name="numeroTelefono"
									onChange="return valforms(this.form,this)"
									editcheck="type=INT=Ingrese un numero valido;" maxlength="10">
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-5 mb-3">
								<label for="calle">Calle</label> <input type="text"
									class="form-control" id="calle" value="" required name="calle"
									onChange="return valforms(this.form,this)"
									editcheck="type=alpha=Ingrese una calle valida;" maxlength="50">
							</div>
							<div class="col-md-2 mb-3">
								<label for="numExt">Numero Exterior</label> <input type="text"
									class="form-control" id="numExt" value="" required
									name="numeroExterior"
									onChange="return valforms(this.form,this)"
									editcheck="type=INT=Ingrese un numero exterior valido;"
									maxlength="4">
							</div>
							<div class="col-md-2 mb-3">
								<label for="colonia">Colonia</label> <input type="text"
									class="form-control" id="colonia" value="" required
									name="colonia" onChange="return valforms(this.form,this)"
									editcheck="type=alpha=Ingrese una colonia valida;"
									maxlength="25">
							</div>
						</div>

						<div class="form-row">
							<div class="col-md-2 mb-3">
								<label for="calle">Delegacion</label> <input type="text"
									class="form-control" id="delegacion" value="" required
									name="delegacion" onChange="return valforms(this.form,this)"
									editcheck="type=alpha=Ingrese una delegacion valida;"
									maxlength="25">
							</div>
							<div class="col-md-2 mb-3">
								<label for="numExt">Estado</label> <input type="text"
									class="form-control" id="estado" value="" required
									name="estado" onChange="return valforms(this.form,this)"
									editcheck="type=alpha=Ingrese un estado valido;" maxlength="25">
							</div>
							<div class="col-md-1 mb-3">
								<label for="colonia">C.P.</label> <input type="text"
									class="form-control" id="CP" value="" required name="CP"
									onChange="return valforms(this.form,this)"
									editcheck="type=INT=Ingrese un codigo postal valido;"
									maxlength="5">
							</div>
						</div>


						<br>
						<h2>Datos Empresariales</h2>

						<!-- A�adido onchange para cargar los tipo_pagos -->
						<select class="custom-select my-1 mr-sm-2 col-5 mb-5" name="clase"
							id="clase" onchange="cargaTipo_Pago();" required="required">
							<!-- Hay que terminar los options -->
							<!-- 
                   Eliminado de value la llamada a la funci�n,
                   si eso funciona lo desconoc�a, y aunque 
                   lo haga es totalmente innecesario, 
                   lo correcto es usar el evento onchange 
                -->
							<option value="" disabled="disabled">Seleccione una
								clase...</option>
						</select> <select class="custom-select my-1 mr-sm-2 col-5 mb-5"
							name="tipo_pago" id="tipo_pago">
							<!-- Hay que terminar los options -->
							<!-- 
                   Eliminado de value la llamada a la funci�n,
                   si eso funciona lo desconoc�a, y aunque 
                   lo haga es totalmente innecesario, 
                   lo correcto es usar el evento onchange 
                -->
							<option value="" disabled="disabled">Seleccione un
								tipo_pago...</option>
						</select>

						<div class="col-md-2 mb-3">
							<label for="Fecha_ingreso">Fecha Ingreso</label> <input
								type="hidden" class="form-control" id="fechaIngreso"
								name="fechaIngreso" value="${fecha_ingreso}" required> <input
								type="text" class="form-control" id="fechaIngresoVista"
								name="fechaIngresoVista" value="${fecha_ingreso}" required
								disabled>
						</div>

						<div class="col-md-3 mb-3">
							<label for="correo">Correo</label> <input type="text"
								class="form-control" id="correo" value="" required name="correo"
								onChange="return valforms(this.form,this)"
								editcheck="type=email=Ingrese un correo valido;" maxlength="30">
						</div>
						<div class="col-md-3 mb-3">
							<label for="contrasena">Contrase�a</label> <input type="text"
								class="form-control" id="contrasena" value="" required
								name="contrasena" onChange="return valforms(this.form,this)"
								editcheck="type=alphanum=Ingrese un password valido;"
								maxlength="20">
						</div>

						<!-- Se genera una lista depegable de forma dinamica -->
						<label for="Puestos">Puestos</label> <br> <select
							class="custom-select my-1 mr-sm-2 col-5 mb-5" id="puesto"
							name="puesto" required>
							<%
								ArrayList<String> puestos = (ArrayList<String>) request.getAttribute("puestos");
							int i = 0;

							for (int x = 0; x < puestos.size(); x++) {
								i = i + 1;

								out.print("<option value='" + puestos.get(x) + "'>" + puestos.get(x) + "</option>");
							}
							%>
						</select> <br>
						<!-- A�adido onchange para cargar los Tipo_Infonavits -->
						<select name="infonavit" id="infonavit"
							onchange="cargaTipo_Infonavit();"
							class="custom-select my-1 mr-sm-2 col-5 mb-5" name="clase"
							required="required">
							<!-- Hay que terminar los options -->
							<!-- 
                   Eliminado de value la llamada a la funci�n,
                   si eso funciona lo desconoc�a, y aunque 
                   lo haga es totalmente innecesario, 
                   lo correcto es usar el evento onchange 
                -->
							<option value="" disabled="disabled">Seleccione si tiene
								infonavit...</option>
						</select> <select name="Tipo_Infonavit" id="Tipo_Infonavit"
							class="custom-select my-1 mr-sm-2 col-5 mb-5" name="clase">
							<!-- Hay que terminar los options -->
							<!-- 
                   Eliminado de value la llamada a la funci�n,
                   si eso funciona lo desconoc�a, y aunque 
                   lo haga es totalmente innecesario, 
                   lo correcto es usar el evento onchange 
                -->
							<option value="" disabled="disabled">Seleccione un Tipo
								de Infonavit...</option>
						</select>
						<div class="col-md-3 mb-3">
							<label for="info">Indica parametro de infonavit</label> <input
								type="text" class="form-control" id="info" value="" required
								name="info" onChange="return valforms(this.form,this)"
								editcheck="type=NUM=Ingrese un parametro valido;" maxlength="3">
						</div>

						<br> <br>
						<button type="submit" class="btn btn-primary">Agregar
							Usuario</button>

					</form>



				</div>

				<!-- Codigo de Segundo Pill - Creacion de Puestos-->

				<div class="tab-pane fade" id="v-pills-profile" role="tabpanel"
					aria-labelledby="v-pills-profile-tab">

					<h2>Creaci�n de Puestos</h2>

					<form method="get" action="/Sistema-Nomina/AgregarPuesto"
						onsubmit="return valforms(this)">
						<!-- Se genera una lista depegable de forma dinamica -->
						<label for="Areas">Areas</label> <br> <select
							class="custom-select my-1 mr-sm-2 col-5 mb-5" id="nombre_area"
							name="nombre_area" required>
							<%
								ArrayList<String> areas = (ArrayList<String>) request.getAttribute("areas");
							int zm = 0;

							for (int x = 0; x < areas.size(); x++) {
								zm = zm + 1;

								out.print("<option value='" + areas.get(x) + "'>" + areas.get(x) + "</option>");
							}
							%>
						</select> <br>

						<div class="form-row">
							<div class="col-md-3 mb-3">
								<label for="nombrePuesto">Nombre del Puesto</label> <input
									type="text" class="form-control" id="nombrePuesto" value=""
									required name="nombrePuesto"
									onChange="return valforms(this.form,this)"
									editcheck="type=alpha=Ingrese un nombre de puesto;">
							</div>
							<div class="col-md-2 mb-3">
								<label for="Salario">Salario del Puesto</label> <input
									type="text" class="form-control" id="Salario" value="" required
									name="Salario" onChange="return valforms(this.form,this)"
									editcheck="type=NUM=Ingrese un parametro salario valido;">
							</div>
				</div>
							<label for="Salario">Horas</label> 
							<br>
							<select class="custom-select my-1 mr-sm-2 col-5 mb-5" id="Horas" name="Horas">
								<option selected disabled>Seleccion el numero de horas</option>
								<option value="4" >4 Horas diarias</option>
								<option value="5" >5 Horas diarias</option>
								<option value="6" >6 Horas diarias</option>
								<option value="7" >7 Horas diarias</option>
								<option value="8" >8 Horas diarias</option>
							</select>
					
						


<br>
						<button type="submit" class="btn btn-primary" data-toggle="modal"
							data-target="#creacionPuesto">Agregar nuevo puesto</button>
					</form>
				</div>

				<!-- Creacion del tercel Pill - Creacion de Nuevas Areas -->


				<div class="tab-pane fade" id="v-pills-messages" role="tabpanel"
					aria-labelledby="v-pills-messages-tab">

					<!--  En este comboBox se deberan cargar las area que actualmente existen desde la Base de Datos  -->
					<select class="custom-select my-1 mr-sm-2 col-2 mb-3" id="area">
						<option selected disabled>Areas Existentes</option>
						<option value="1" disabled>Recursos Humanos</option>
						<option value="2" disabled>Tecnologia</option>
						<option value="3" disabled>Finanzas</option>
						<option value="4" disabled>Comercial</option>
					</select>

					<form>

						<div class="form-group">

							<div class="col-md-3 mb-3">
								<label for="nuevaArea" class="col-form-label">Nombre de
									nueva Area:</label> <input type="text" class="form-control"
									id="nuevaArea">
							</div>
						</div>

						<div class="form-group">

							<div class="col-md-4 mb-3">
								<label for="valesDespensa" class="col-form-label">Vales
									de despensa correspondiente ($):</label> <input type="number"
									class="form-control" id="valesDespensa">
							</div>
						</div>

					</form>

					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#creacionArea">Crear</button>


				</div>

				<!-- Creacion del cuarto Pill - Editar Datos Empresariales de los Empleados -->


				<div class="tab-pane fade" id="editarUsuario" role="tabpanel"
					aria-labelledby="editarUsuario">

					<h2>Edicion de Datos Empresariales</h2>

					<div class="form-group row">

						<label for="idEmpleado" class="col-sm-2 col-form-label">Id
							Empleado:</label>
						<div class="col-sm-2">
							<input type="number" class="form-control" id="idEmpleado">
						</div>

						<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target="#staticBackdrop">Buscar</button>
					</div>


					<div class="container" style="padding-top: 30px;">

						<div class="row">
							<div class="col-lg-5 mb-5">
								<div class="card h-100">
									<h4 class="card-header">Datos Actuales</h4>
									<div class="card-body">

										<div class="form-group row">
											<label for="claseE" class="col-sm-4 col-form-label">Clase</label>
											<div class="col-sm-8">
												<input type="number" class="form-control" id="claseE"
													disabled>
											</div>

											<label for="tipoPago" class="col-sm-4 col-form-label">Tipo
												Pago</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="tipoPago"
													disabled>
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
								</div>
							</div>

							<!-- Formulario para editar los datos empresariales del empleado cargado -->

							<div class="col-lg-5 mb-5">
								<div class="card h-100">
									<h4 class="card-header">Nuevos Datos</h4>
									<div class="card-body">

										<form name="nuevosDatos" onsubmit="return valforms(this)">

											<div class="form-row">
												<select class="custom-select my-1 mr-sm-2 col-5 mb-5"
													id="claseEmpleado">
													<option selected disabled>Clase Empleado</option>
													<option value="1">Confianza</option>
													<option value="2">Base</option>
												</select> <select class="custom-select my-1 mr-sm-2 col-5 mb-5"
													id="tipoPago">
													<option selected disabled>Tipo Pago</option>
													<option value="1">Semanal</option>
													<option value="2">Quincenal</option>
												</select>



												<!--  Dependiendo del area que se eligio se deberan cargar los puestos que existen en dicha area-->



											</div>

										</form>

									</div>
								</div>
							</div>
						</div>

						<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target="#edicionDatos">Confirmar Edici�n</button>
						<br> <br>

					</div>


				</div>

			</div>
		</div>
	</div>

	<!-- Portfolio Modal 1 -->


</body>
</html>