function cargarinfonavit() {
    var array = ["Si", "No"];
    array.sort();
    addOptions("infonavit", array);
}


//Función para agregar opciones a un <select>.
function addOptions(domElement, array) {
    var selector = document.getElementsByName(domElement)[0];
    for (infonavit in array) {
        var opcion = document.createElement("option");
        opcion.text = array[infonavit];
        // Añadimos un value a los option para hacer mas facil escoger los Tipo_Infonavits
        opcion.value = array[infonavit].toLowerCase()
        selector.add(opcion);
    }
}



function cargaTipo_Infonavit() {
    // Objeto de infonavits con Tipo_Infonavits
    var listaTipo_Infonavits = {
      si: ["%", "C.F","VSM"],
      no: ["Ninguna"]
    }
    
    var infonavits = document.getElementById('infonavit')
    var Tipo_Infonavits = document.getElementById('Tipo_Infonavit')
    var infonavitSeleccionada = infonavits.value
    
    // Se limpian los Tipo_Infonavits
    Tipo_Infonavits.innerHTML = '<option value="" disabled="disabled">Seleccione un Tipo_Infonavit...</option>'
    
    if(infonavitSeleccionada !== ''){
      // Se seleccionan los Tipo_Infonavits y se ordenan
      infonavitSeleccionada = listaTipo_Infonavits[infonavitSeleccionada]
      infonavitSeleccionada.sort()
    
      // Insertamos los Tipo_Infonavits
      infonavitSeleccionada.forEach(function(Tipo_Infonavit){
        let opcion = document.createElement('option')
        opcion.value = Tipo_Infonavit
        opcion.text = Tipo_Infonavit
        Tipo_Infonavits.add(opcion)
      });
    }
    
  }
  
 // Iniciar la carga de infonavits solo para comprobar que funciona
cargarinfonavit();
