<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script src="caract.js"></script>
	<!-- Añadido onchange para cargar los tip_ps -->
	<label for="claE">cla de Empleado</label>
	<br>
	<select cla="custom-select my-1 mr-sm-2 col-5 mb-5" name="cla" id="cla"
		onchange="cargatip_p();" required="required">
		<!-- Hay que terminar los options -->
		<!-- 
                   Eliminado de value la llamada a la función,
                   si eso funciona lo desconocía, y aunque 
                   lo haga es totalmente innecesario, 
                   lo correcto es usar el evento onchange 
                -->
		<option value="" disabled="disabled">Seleccione una clase...</option>
	</select>
	<br>
	<label for="Tipo_de_pagos">Tipo de pagos</label>
	<br>
	<select cla="custom-select my-1 mr-sm-2 col-5 mb-5" name="tip_p"
		id="tip_p" required="required">
		<!-- Hay que terminar los options -->
		<!-- 
                   Eliminado de value la llamada a la función,
                   si eso funciona lo desconocía, y aunque 
                   lo haga es totalmente innecesario, 
                   lo correcto es usar el evento onchange 
                -->
		<option value="" disabled="disabled">Seleccione un tip de pago...</option>
	</select>
	<br>
	<script type="text/javascript">
		function cargarcla() {
			var array = [ "Base", "Confianza" ];
			array.sort();
			addOptions("cla", array);
		}

		//Función para agregar opciones a un <select>.
		function addOptions(domElement, array) {
			var selector = document.getElementsByName(domElement)[0];
			for (cla in array) {
				var opcion = document.createElement("option");
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
					let opcion = document.createElement('option')
					opcion.value = tip_p
					opcion.text = tip_p
					tip_ps.add(opcion)
				});
			}

		}

		// Iniciar la carga de clas solo para comprobar que funciona
		cargarcla();
	</script>

</body>
</html>