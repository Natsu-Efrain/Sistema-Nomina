function cargarClase() {
    var array = ["Base", "Confianza"];
    array.sort();
    addOptions("clase", array);
}


//Función para agregar opciones a un <select>.
function addOptions(domElement, array) {
    var selector = document.getElementsByName(domElement)[0];
    for (clase in array) {
        var opcion = document.createElement("option");
        opcion.text = array[clase];
        // Añadimos un value a los option para hacer mas facil escoger los tipo_pagos
        opcion.value = array[clase].toLowerCase()
        selector.add(opcion);
    }
}



function cargaTipo_Pago() {
    // Objeto de clases con tipo_pagos
    var listatipo_pagos = {
      base: ["Semanal", "Quincenal"],
      confianza: ["Quincenal"]
    }
    
    var clases = document.getElementById('clase')
    var tipo_pagos = document.getElementById('tipo_pago')
    var claseSeleccionada = clases.value
    
    // Se limpian los tipo_pagos
    tipo_pagos.innerHTML = '<option value="" required="required" disabled="disabled">Seleccione un Tipo de pago...</option>'
    
    if(claseSeleccionada !== ''){
      // Se seleccionan los tipo_pagos y se ordenan
      claseSeleccionada = listatipo_pagos[claseSeleccionada]
      claseSeleccionada.sort()
    
      // Insertamos los tipo_pagos
      claseSeleccionada.forEach(function(tipo_pago){
        let opcion = document.createElement('option')
        opcion.value = tipo_pago
        opcion.text = tipo_pago
        tipo_pagos.add(opcion)
      });
    }
    
  }
  
 // Iniciar la carga de clases solo para comprobar que funciona
cargarClase();
