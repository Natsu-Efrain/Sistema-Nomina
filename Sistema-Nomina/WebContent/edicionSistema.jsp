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

<title>Edición Sistema</title>

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

	<header>
		<nav>
			<section class="contenedor nav">
				<div class="logo">
					<img src="img/portfolio/imagen/logo.png">
				</div>
				<div class="enlaces-header">
					<a href="menu.jsp">Inicio</a> <a href="/Sistema-Nomina/Index">Datos
						personales</a> <a href="nomina.jsp">Calculo Nomina</a> <a
						href="finiquitoLiquidacion.jsp">Finiquitos y Liquidaciones</a> <a
						href="catalogoMenu.jsp">Catálogo</a> <a
						href="/Sistema-Nomina/edicionSistema">Sistema</a>
				</div>

			</section>
		</nav>
		<br> <br>
	</header>
	<%
		String opcion = (String) request.getAttribute("opcion");

	if (opcion != null)
	{
		int op = Integer.parseInt(opcion);
		switch (op) {
			case 1 :
				out.print("<div class='alert alert-warning alert-dismissible fade show' role='alert'>"
						+ "<strong>Se ha registrado!</strong> La base de datos se ha actualizado correctamente con sus registro"
						+ "<button type='button' class='close' data-dismiss='alert' aria-label='Close'>"
						+ "<span aria-hidden='true'>&times;</span>" + "</button>" + "</div>");
		break;
			case 2 :
				out.print("<div class='alert alert-warning alert-dismissible fade show' role='alert'>"
						+ "<strong>Se ha registrado!</strong> La base de datos se ha actualizado correctamente con sus registro"
						+ "<button type='button' class='close' data-dismiss='alert' aria-label='Close'>"
						+ "<span aria-hidden='true'>&times;</span>" + "</button>" + "</div>");
		break;
			case 3 :
				out.print("<div class='alert alert-warning alert-dismissible fade show' role='alert'>"
						+ "<strong>Se ha registrado!</strong> La base de datos se ha actualizado correctamente con sus registro"
						+ "<button type='button' class='close' data-dismiss='alert' aria-label='Close'>"
						+ "<span aria-hidden='true'>&times;</span>" + "</button>" + "</div>");
		break;
			case 4 :
				out.print("<div class='alert alert-warning alert-dismissible fade show' role='alert'>"
						+ "<strong>Se ha registrado!</strong> La base de datos se ha actualizado correctamente con sus registro"
						+ "<button type='button' class='close' data-dismiss='alert' aria-label='Close'>"
						+ "<span aria-hidden='true'>&times;</span>" + "</button>" + "</div>");
		break;
			default :
				out.print("<div class='alert alert-warning alert-dismissible fade show' role='alert'>"
						+ "<strong>No Se ha registrado o modificado!</strong> Debido algun dato erroneo o que no se pude repetir como correo,numero de telefono y nombre de puesto :D"
						+ "<button type='button' class='close' data-dismiss='alert' aria-label='Close'>"
						+ "<span aria-hidden='true'>&times;</span>" + "</button>" + "</div>");
		break;
		}
	}
	%>
	<div class="row">
		<div class="col-3">
			<div class="nav flex-column nav-pills" id="v-pills-tab"
				role="tablist" aria-orientation="vertical">

				<a class="nav-link active" id="v-pills-messages-tab"
					data-toggle="pill" href="#editarUsuario" role="tab"
					aria-controls="editarUsuario" aria-selected="false">Editar
					Usuario</a> <a class="nav-link" id="v-pills-profile-tab"
					data-toggle="pill" href="#v-pills-profile" role="tab"
					aria-controls="v-pills-profile" aria-selected="false">Agregar
					Puesto</a> <a class="nav-link" id="v-pills-messages-tab"
					data-toggle="pill" href="#v-pills-messages" role="tab"
					aria-controls="v-pills-messages" aria-selected="false">Crear
					Area</a> <a class="nav-link" id="v-pills-home-tab" data-toggle="pill"
					href="#v-pills-home" role="tab" aria-controls="v-pills-home"
					aria-selected="true">Agregar Empleado</a>

			</div>
		</div>

		<div class="col-9">
			<div class="tab-content" id="v-pills-tabContent">

				<!-- Codigo de Primer Pill - 'Editar' -->

				<div class="tab-pane fade show active" id="editarUsuario"
					role="tabpanel" aria-labelledby="editarUsuario">

					<h2>Edicion de Datos Empresariales</h2>
					<form method="get" action="/Sistema-Nomina/BuscarEmpleado"
						onsubmit="return valforms(this)">
						<div class="form-group row">

							<label for="id_empleado" class="col-sm-2 col-form-label">Id
								Empleado:</label>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="id_empleado"
									name="id_empleado" onChange="return valforms(this.form,this)"
									editcheck="type=int=Ingrese un ID de empleado valido;"
									maxlength="25" required="required">
							</div>

							<button type="submit" class="btn btn-primary" data-toggle="modal"
								data-target="#staticBackdrop">Buscar</button>
						</div>

					</form>
					<div class="container" style="padding-top: 30px;">

						<div class="row">
							<div class="col-lg-5 mb-5">
								<div class="card h-100">
									<h4 class="card-header">Datos Actuales</h4>
									<div class="card-body">

										<div class="form-group row">
											<label for="claseE" class="col-sm-4 col-form-label">Clase</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="claseE" disabled
													value="${claseE}">
											</div>

											<label for="tipoPago" class="col-sm-4 col-form-label">Tipo
												Pago</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="tipoPago"
													disabled value="${tipoPago}">
											</div>

											<label for="puesto" class="col-sm-4 col-form-label">Puesto</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="puesto" disabled
													value="${puesto}">
											</div>

											<label for="area" class="col-sm-4 col-form-label">Area</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="area" disabled
													value="${area}">
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

										<form name="nuevosDatos" onsubmit="return valforms(this)"
											action="/Sistema-Nomina/EditarEmpresariales" method="get">


											<!-- Añadido onchange para cargar los tipo_pagos -->
											<label for="claseE">Clase de Empleado</label> <br> <select
												class="custom-select my-1 mr-sm-2 col-5 mb-5" name="clase"
												id="clase" onchange="cargaTipo_Pago();" required="required">
												<!-- Hay que terminar los options -->
												<!-- 
                   Eliminado de value la llamada a la función,
                   si eso funciona lo desconocía, y aunque 
                   lo haga es totalmente innecesario, 
                   lo correcto es usar el evento onchange 
                -->
												<option value="" disabled="disabled">Seleccione una
													clase...</option>
											</select><br> <label for="Tipo_de_pagos">Tipo de pagos</label><br>
											<select class="custom-select my-1 mr-sm-2 col-5 mb-5"
												name="tipo_pago" id="tipo_pago" required="required">
												<!-- Hay que terminar los options -->
												<!-- 
                   Eliminado de value la llamada a la función,
                   si eso funciona lo desconocía, y aunque 
                   lo haga es totalmente innecesario, 
                   lo correcto es usar el evento onchange 
                -->
												<option value="" disabled="disabled">Seleccione un
													tipo_pago...</option>
											</select> <br>
											<!-- Se genera una lista depegable de forma dinamica -->
											<label for="Puestos">Puestos</label> <br> <select
												class="custom-select my-1 mr-sm-2 col-5 mb-5" id="puesto"
												name="puesto" required>
												<%
													ArrayList<String> puestos_Editar = (ArrayList<String>) request.getAttribute("puestos_editar");
												int e = 0;

												for (int x = 0; x < puestos_Editar.size(); x++) {
													e = e + 1;

													out.print("<option value='" + puestos_Editar.get(x) + "'>" + puestos_Editar.get(x) + "</option>");
												}
												%>
											</select> <br>

											<!--  Dependiendo del area que se eligio se deberan cargar los puestos que existen en dicha area-->

											<br>
											<button type="submit" class="btn btn-primary"
												data-toggle="modal">Confirmar Edición</button>
										</form>
									</div>
								</div>
							</div>
						</div>


						<br> <br>

					</div>


				</div>

				<!-- Codigo de Segundo Pill - Creacion de Puestos-->

				<div class="tab-pane fade" id="v-pills-profile" role="tabpanel"
					aria-labelledby="v-pills-profile-tab">

					<h2>Creación de Puestos</h2>

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
									editcheck="type=alpha=Ingrese un nombre de puesto;"
									maxlength="30">
							</div>
							<div class="col-md-2 mb-3">
								<label for="Salario">Salario del Puesto</label> <input
									type="text" class="form-control" id="Salario" value="" required
									name="Salario" onChange="return valforms(this.form,this)"
									editcheck="type=NUM=Ingrese un parametro salario valido;"
									maxlength="8">
							</div>
						</div>
						<label for="Salario">Horas</label> <br> <select
							class="custom-select my-1 mr-sm-2 col-5 mb-5" id="Horas"
							name="Horas">
							<option selected disabled>Seleccion el numero de horas</option>
							<option value="4">4 Horas diarias</option>
							<option value="5">5 Horas diarias</option>
							<option value="6">6 Horas diarias</option>
							<option value="7">7 Horas diarias</option>
							<option value="8">8 Horas diarias</option>
						</select> <br>
						<button type="submit" class="btn btn-primary" data-toggle="modal"
							data-target="#creacionPuesto">Agregar nuevo puesto</button>
					</form>
				</div>

				<!-- Creacion del tercel Pill - Creacion de Nuevas Areas -->


				<div class="tab-pane fade" id="v-pills-messages" role="tabpanel"
					aria-labelledby="v-pills-messages-tab">

					<!-- Se genera una lista depegable de forma dinamica -->
					<label for="Areas_Existentes">Areas Existentes</label> <br> <select
						class="custom-select my-1 mr-sm-2 col-5 mb-5" id="nombre_area"
						name="nombre_area" required>
						<%
							ArrayList<String> areas_existentes = (ArrayList<String>) request.getAttribute("areas_existentes");
						int ea = 0;

						for (int x = 0; x < areas_existentes.size(); x++) {
							ea = ea + 1;

							out.print("<option disabled='disabled' value='" + areas_existentes.get(x) + "'>" + areas_existentes.get(x)
							+ "</option>");
						}
						%>
					</select>
					<form method="get" action="/Sistema-Nomina/AgregarArea"
						onsubmit="return valforms(this)">
						<div class="form-group">

							<div class="col-md-3 mb-3">
								<label for="nuevaArea" class="col-form-label">Nombre de
									nueva Area:</label> <input type="text" class="form-control"
									id="nombre_area" name="nombre_area" required
									onchange="return valforms(this.form,this)"
									editcheck="type=alpha=Ingrese un nombre de area valido;"
									maxlength="30">
							</div>
						</div>

						<div class="form-group">

							<div class="col-md-4 mb-3">
								<label for="valesDespensa" class="col-form-label">Vales
									de despensa correspondiente ($):</label> <input type="text"
									class="form-control" id="valesDespensa"
									onChange="return valforms(this.form,this)"
									editcheck="type=num=Ingrese un valor valido;" maxlength="8"
									name="vales_despensa" required="required">
							</div>
						</div>
						<button type="submit" class="btn btn-primary" data-toggle="modal"">Crear</button>
					</form>


				</div>

				<!-- Creacion del cuarto Pill - Agregar Nuevos Empleados -->

				<div class="tab-pane fade" id="v-pills-home" role="tabpanel"
					aria-labelledby="v-pills-home-tab">

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

						<!-- Añadido onchange para cargar los tip_ps -->
						<label for="claE">Clase de Empleado</label> <br> <select
							name="cla" id="cla" onchange="cargatip_p();"
							class="custom-select my-1 mr-sm-2 col-5 mb-5" required="required">
							<!-- Hay que terminar los options -->
							<!-- 
                   Eliminado de value la llamada a la función,
                   si eso funciona lo desconocía, y aunque 
                   lo haga es totalmente innecesario, 
                   lo correcto es usar el evento onchange 
                -->
							<option value="" disabled="disabled">Seleccione una
								clase...</option>
						</select><br> <label for="Tipo_de_pagos">Tipo de pagos</label><br>
						<select class="custom-select my-1 mr-sm-2 col-5 mb-5" name="tip_p"
							id="tip_p" required="required">
							<!-- Hay que terminar los options -->
							<!-- 
                   Eliminado de value la llamada a la función,
                   si eso funciona lo desconocía, y aunque 
                   lo haga es totalmente innecesario, 
                   lo correcto es usar el evento onchange 
                -->
							<option value="" disabled="disabled">Seleccione un tip
								de pago...</option>
						</select> <br>
						<script type="text/javascript">
							function cargarcla() {
								var array = [ "Base", "Confianza" ];
								array.sort();
								addOptions("cla", array);
							}

							//Función para agregar opciones a un <select>.
							function addOptions(domElement, array) {
								var selector = document
										.getElementsByName(domElement)[0];
								for (cla in array) {
									var opcion = document
											.createElement("option");
									opcion.text = array[cla];
									// Añadimos un value a los option para hacer mas facil escoger los tip_ps
									opcion.value = array[cla].toLowerCase()
									selector.add(opcion);
								}
							}

							function cargatip_p() {
								// Objeto de clas con tip_ps
								var listatip_ps = {
									base : [ "Semanal", "Quincenal" ],
									confianza : [ "Quincenal" ]
								}

								var clas = document.getElementById('cla')
								var tip_ps = document.getElementById('tip_p')
								var claSeleccionada = clas.value

								// Se limpian los tip_ps
								tip_ps.innerHTML = '<option value="" required="required" disabled="disabled">Seleccione un Tipo de pago...</option>'

								if (claSeleccionada !== '') {
									// Se seleccionan los tip_ps y se ordenan
									claSeleccionada = listatip_ps[claSeleccionada]
									claSeleccionada.sort()

									// Insertamos los tip_ps
									claSeleccionada.forEach(function(tip_p) {
										let opcion = document
												.createElement('option')
										opcion.value = tip_p
										opcion.text = tip_p
										tip_ps.add(opcion)
									});
								}

							}

							// Iniciar la carga de clas solo para comprobar que funciona
							cargarcla();
						</script>

						<br>

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
							<label for="contrasena">Contraseña</label> <input type="text"
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
						<!-- Añadido onchange para cargar los Tipo_Infonavits -->
						<select name="infonavit" id="infonavit"
							onchange="cargaTipo_Infonavit();"
							class="custom-select my-1 mr-sm-2 col-5 mb-5" name="clase"
							required="required">
							<!-- Hay que terminar los options -->
							<!-- 
                   Eliminado de value la llamada a la función,
                   si eso funciona lo desconocía, y aunque 
                   lo haga es totalmente innecesario, 
                   lo correcto es usar el evento onchange 
                -->
							<option value="" disabled="disabled">Seleccione si tiene
								infonavit...</option>
						</select> <select name="Tipo_Infonavit" id="Tipo_Infonavit"
							class="custom-select my-1 mr-sm-2 col-5 mb-5" name="clase">
							<!-- Hay que terminar los options -->
							<!-- 
                   Eliminado de value la llamada a la función,
                   si eso funciona lo desconocía, y aunque 
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



			</div>
		</div>
	</div>

	<!-- Portfolio Modal 1 -->






	<!-- Modal - Creacion de puesto -->

	<div class="modal fade" id="creacionPuesto" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Confirmacion
						Puesto</h5>
					<hr>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

			</div>
		</div>
	</div>

	<!-- Modal - Creacion de Areas -->

	<div class="portfolio-modal modal fade" id="creacionArea"
		data-backdrop="static" tabindex="-1" role="dialog"
		aria-labelledby="portfolioModal1Label" aria-hidden="true">

		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Confirmacion
						Area</h5>
					<hr>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

			</div>
		</div>

	</div>


	<!-- Modal - Edicion de Datos -->

	<div class="portfolio-modal modal fade" id="edicionDatos"
		data-backdrop="static" tabindex="-1" role="dialog"
		aria-labelledby="edicionDatos" aria-hidden="true">

		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Confirmacioón</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

			</div>
		</div>

	</div>



	<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
	<div class="scroll-to-top d-lg-none position-fixed ">
		<a class="js-scroll-trigger d-block text-center text-white rounded"
			href="#page-top"> <i class="fa fa-chevron-up"></i>
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
	<script src="js/clase.js"></script>
	<script src="js/infonavit.js"></script>

</body>
</html>