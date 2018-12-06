$(document).ready( function () {



  $('#myTable').DataTable({
          responsive: true,
         language: {
            "sProcessing":     "Procesando...",
            "sLengthMenu":     "Mostrar _MENU_ registros",
            "sZeroRecords":    "No se encontraron resultados",
            "sEmptyTable":     "Ningún dato disponible en esta tabla",
            "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
            "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
            "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
            "sInfoPostFix":    "",
            "sSearch":         "Buscar:",
            "sUrl":            "",
            "sInfoThousands":  ",",
            "sLoadingRecords": "Cargando...",
            "oPaginate": {
                "sFirst":    "Primero",
                "sLast":     "Último",
                "sNext":     "Siguiente",
                "sPrevious": "Anterior"
        },
        "oAria": {
            "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
            "sSortDescending": ": Activar para ordenar la columna de manera descendente"
        }
    }
    });




});
/*AJAX PARA EL FORMULARIO*/
function enviarNuevoArchivo(){

var parametros = new FormData($("#form_nuevo_archivo")[0]);
$('#gif_carga').html(
              "<center style='margin-left: 50%;'><img src='loader.gif'/></center>"+
              "<h4 style='margin-left: 23rem;'>Espere Por Favor</h4>"
              );
      $.ajax({
          data: parametros,
          url:"subida.php",
          type:"POST",
          contentType:false,
          processData:false,
          beforesend: function(){
           $('#gif_carga').html(
              "<center style='margin-left: 50%;'><img src='loader.gif'/></center>"+
              "<h4 style='margin-left: 26rem;'>Espere Por Favor</h4>"
              );
          },
          success: function(data){
             location.reload();
          },
           error:function(){
                  $('#gif_carga').html("");
                  $('#gif_carga').html("<center><h4 style='color:red; margin-left: 2rem;'>ERROR EN EL SERVIDOR.POR FAVOR ENVIE UN MENSAJE AL ADMINISTRADOR</h4></center>");
                }
      });

}
/*AJAX PARA EL FORMULARIO*/

/*ANTES DE QUE LA PAGINA SE CARGUE APLICAR EL CSS*/
//$('.btn-desbloqueo').click(function () {return false;});

$('#exampleModalCenter').modal('show');

/*ANTES DE QUE LA PAGINA SE CARGUE APLICAR EL CSS*/
