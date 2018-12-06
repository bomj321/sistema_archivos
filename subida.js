function crearPeticion () {
  var peticion = null;
  try {
    peticion = new XMLHttpRequest();
  }catch (IntentarMs) {
    try{
      peticion = new ActiveXObject("Msxml2.XMLHTTP");
    }catch (OtroMs){
      try{
        peticion = new ActiveXObject("Microsoft.XMLHTTP");
      } catch (fallo) {
        peticion = null;
      }
    }
  }
  return peticion;
}


window.onload = function () {
  var archivo    = document.getElementById("subir_archivo");
  var formulario = document.getElementById("formulario");


  archivo.addEventListener("change", function () {
    var numFiles = archivo.files.length;

    for (i = 0; i < numFiles; i++) {

        var informacion = new FormData();
        informacion.append("subir_archivo", archivo.files[i]);
       var peticion = crearPeticion();
        if(peticion == null){
          alert("Tu navegador no es compatible");
          return;
        }
/*MOSTRAR BARRA Y BOTON*/
          var cantidad_barra           = document.getElementById("cantidad_barra");
          var boton_recarga            = document.getElementById("boton_recarga");
          cantidad_barra.style.display = "block";
          boton_recarga.style.display = "block";
/*MOSTRAR BARRA Y BOTON*/
/*COLOCAR EN EL DOM LA BARRA*/
        $("#cantidad_barra").append("<div value='0' max='100' class='progress-bar bg-info' width='' id='barra"+i+"'></div>");
/*COLOCAR EN EL DOM LA BARRA*/

        var barra          = document.getElementById("barra"+i);


       peticion.addEventListener("load", function() {
          barra.value = 0;
          barra.style.display = "none";
        });
        peticion.upload.addEventListener("progress", function(e) {
          barra.style.display = "block";
          var p = Math.round((e.loaded/e.total)*100);
          barra.value = p;
          barra.innerHTML = p+'%';
          barra.style.width = p+'%';
          barra.innerHTML = p + "%";
        });
        peticion.addEventListener("error", function() {
          alert("Error al subir el archivo");
        });
        peticion.addEventListener("abort", function() {
          alert("La subida se aborto, por favor intenta de nuevo");
        });
        peticion.open("POST", "subida.php");
        peticion.send(informacion);


    }
  });

}
