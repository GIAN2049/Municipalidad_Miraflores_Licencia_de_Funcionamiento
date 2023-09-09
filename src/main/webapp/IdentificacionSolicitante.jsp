<!-- Indicar con que sub libreria de JSTL va a trabajar la pagina "CORE" -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Identificacion del Solicitante</title>
<!-- Link Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/dataTables.bootstrap5.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/AlertifyJS/1.13.1/css/alertify.css" rel="stylesheet">
</head>
<style>
	.modal-header{
		color:#fff;
		background: #428bca;
		display: flex;
  		justify-content: center;
  		
	}
	.help-block {
	  		color: red;
	}
	.form-group.has-error .form-control-label {
	  color: red;
	}
	.form-group.has-error .form-control {
	  border: 1px solid red;
	  box-shadow: 0 0 0 0.2rem rgba(250, 16, 0, 0.18);
	}
</style>
<body>
	<div class="container">
	<c:if test="${param.MENSAJE!=NULL}">
	  <div class="alert alert-warning alert-dismissible fade show" role="alert">
	    <strong>Sistema : </strong> ${param.MENSAJE}
	    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
	  </div>
	</c:if>
	</div>

	<!-- Section Header -->
	<header class="bg-primary text-white">
	  <div class="container py-3">
	    <h1>Registro de Solicitud</h1>
	  </div>
	</header>
	<!-- Fin section Header -->
	
	<!-- Section Texto -->
	<section style="padding-top: 20px;">
	  <div class="container text-center">
	    <div class="rounded-circle bg-secondary text-white d-inline-flex align-items-center justify-content-center" style="width: 100px; height: 100px;">
	      <h2 class="m-0">2/7</h2>
	    </div>
	    <h3 class="mt-3">II. IDENTIFICACION DEL SOLICITANTE</h3>
	  </div>
	</section>
	<!-- Fin Section Texto -->
	
	<!-- Formulario -->
	<div class="container-fluid">
	  <div class="row">
	    <div class="col-12">
	      <div class="bg-info p-3 mb-3">
	        <h3 class="text-white mb-0">II. IDENTIFICACION DEL SOLICITANTE</h3>
	      </div>
	      <form id="frmFormulario" method="post" action="ServletSolicitante?accion=grabar">
	        <div class="row mb-3">
	          <div class="col-6 form-group">
	            <label for="select1" class="form-label">TIPO DE CONTRIBUYENTE</label>
	            <select class="form-select" name="tipoContribuyente" id="id-tipoContribuyente">
	              <option value=" ">Seleccione</option>
	              <option value="PERSONA NATURAL">PERSONA NATURAL</option>
	              <option value="PERSONA JURIDICA">PERSONA JURIDICA</option>
	            </select>
	          </div>
	        </div>
	        <hr>
	        <div class="row mb-3">
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">NUMERO DE RUC</label>
	            <input type="text" class="form-control" name="numeroRuc" id="id-numeroRuc">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">RAZON SOCIAL</label>
	            <input type="text" class="form-control" name="razonSocial" id="id-razonSocial">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">INICIO DE ACTIVIDAD</label>
	            <input type="date" class="form-control" name="inicioActividad" id="id-inicioActividad">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">NUMERO DNI</label>
	            <input type="text" class="form-control" name="numeroDni" id="id-numeroDni">
	          </div>
	        </div>
	        <div class="row mb-3">
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">CONDICION DE CONTRIBUYENTE</label>
	            <select class="form-select" name="contribuyente" id="id-contribuyente">
	              <option value=" ">Seleccione</option>
	              <option value="HABIDO">HABIDO</option>
	              <option value="NO HALLADO">NO HALLADO</option>
	              <option value="NO HALLADO">NO HABIDO</option>
	            </select>
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">ESTADO DE CONTRIBUYENTE</label>
	            <select class="form-select" name="estadoContribuyente" id="id-estadoContribuyente">
	              <option value=" ">Seleccione</option>
	              <option value="ACTIVO">ACTIVO</option>
	              <option value="SUSPENCION TEMPORAL">SUSPENCION TEMPORAL</option>
	              <option value="BAJO PROVISIONAL">BAJO PROVISIONAL</option>
	              <option value="BAJA DEFINITIVA">BAJA DEFINITIVA</option>
	              <option value="BAJO PROVISIONAL DE OFICIO">BAJO PROVISIONAL DE OFICIO</option>
	              <option value="BAJA DEFINITIVA DE OFICIO">BAJA DEFINITIVA DE OFICIO</option>
	            </select>
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">FECHA DE INSCRIPCION</label>
	            <input type="date" class="form-control" name="fechaInscripcion" id="id-fechaInscripcion">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">SISTEMA DE EMISION DE COMPROBANTE</label>
	            <select class="form-select" name="emisionComprobante" id="id-emisionComprobante">
	            	<option value=" ">Seleccione</option>
	            	<option value="Factura">Factura</option>
	            	<option value="Boleta de Venta">Boleta de Venta</option>
	            	<option value="Factura y Boleta">Factura y Boleta</option>
	            	<option value="Comprobante de Pago">Comprobante de Pago</option>
	            	<option value="Recibo por Honorarios">Recibo por Honorarios</option>
	            	<option value="Notas de Credito">Notas de Credito</option>
	            	<option value="Comprobante de Retenciones">Comprobante de Retenciones</option>
	            	<option value="Comprobante de Percepciones">Comprobante de Percepciones</option>
	            	<option value="Guia de Remision">Guia de Remision</option>
	            	<option value="Guía de remisión de bienes fiscalizados">Guía de remisión de bienes fiscalizados</option>
	            	<option value="Liquidación de compra">Liquidación de compra</option>
	            </select>
	          </div>
	        </div>
	        
	        <div class="row mb-3">
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">DIRECSION DE NOTIFICACION</label>
	            <input type="text" class="form-control" name="direcsionNotificacion" id="id-direcsionNotificacion">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">DISTRITO DE NOTIFICACION</label>
	            <select class="form-select" name="distritoNotificacion" id="id-distritoNotificacion">
	              <option value=" ">Seleccione</option>
	              <option value="San Isidro">San Isidro</option>
	              <option value="Miraflores">Miraflores</option>
	              <option value="Barranco">Barranco</option>
	              <option value="San Borja">San Borja</option>
	              <option value="La Molina">La Molina</option>
	              <option value="Surco">Surco</option>
	              <option value="San Miguel">San Miguel</option>
	              <option value="Lince">Lince</option>
	              <option value="Jesús María">Jesús María</option>
	              <option value="Magdalena del Mar">Magdalena del Mar</option>
	              <option value="Pueblo Libre">Pueblo Libre</option>
	              <option value="Breña">Breña</option>
	              <option value="Rimac">Rimac</option>
	              <option value="Comas">Comas</option>
	              <option value="Los Olivos">Los Olivos</option>
	              <option value="San Juan de Lurigancho">San Juan de Lurigancho</option>
	              <option value="San Juan de Miraflores">San Juan de Miraflores</option>
	              <option value="Villa El Salvador">Villa El Salvador</option>
	              <option value="Villa María del Triunfo">Villa María del Triunfo</option>
	            </select>
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">CORREO ELECTRONICO</label>
	            <input type="text" class="form-control" name="correoElectronico" id="id-correoElectronico">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">TELEFONO</label>
	            <input type="text" class="form-control" name="telefono" id="id-telefono">
	          </div>
	        </div>
	        <!-- El <hr> sirve para la linea de separacion -->
	        <hr>
	        <div class="row d-flex justify-content-between">
	          <div class="col-5 pe-0">
	            <a href="LicenciaFuncionamiento.html" class="btn btn-danger w-45 ms-2">Cancelar</a>
	          </div>
	          <div class="col-1 ps-0">
	            <a href="RegistroSolicitud.jsp" class="btn btn-primary w-45 ms-2">Regresar</a>
	          </div>
	          <div class="col-1 ps-0">
	            <button type="submit" class="btn btn-success w-45 ms-2">Siguiente</button>
	          </div>
	        </div>
	      </form>
	    </div>
	  </div>
	</div>
	<!-- Fin Formulario -->
	
	<!-- Llamando al boton Eliminar -->
	<form id="frmEliminar" method="post" action="" class="eliminar-formulario">
		<input type="hidden" class="form-control" name="codigoEliminar" id="codigo-eliminar">
	</form>
	<!-- Fin llamando al boton Eliminar -->

	<!-- DIV de separacion -->
	<div style="padding-top: 30px;"></div>
	<!-- Fin DIV separacion -->


<!-- libreria JS general -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<!-- Scrip JS Boostrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<!-- librerias de la tabla "datatable" -->	
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>	
<!-- libreria para validar -->
<!-- La libreria moment.js/2.29 es para utilizada para manipular y formatear fechas "IMPORTANTE" si no el input de fecha te parpedeara rojo y no podras grabar  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script> <!-- Si no se importa esta libreria no se podra hacer el registrar el error no te botara en cosola solo en el ispecsionar de la pagina -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>
<!-- Scrip alerta mensaje -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/AlertifyJS/1.13.1/alertify.js"></script>


<!-- Validacion Jquery -->
<script>
$(document).ready(function() {
  $('#frmFormulario').bootstrapValidator({
    fields: {
      tipoContribuyente: {
        validators: {
          notEmpty: {
            message: 'El campo tipo de contribuyente es obligatorio'
          }
        }
      },
      numeroRuc: {
        validators: {
          notEmpty: {
            message: 'El campo número de RUC es obligatorio'
          },
          regexp: {
            regexp: /^[0-9]{11}$/,
            message: 'El campo número de RUC debe contener solo números y ser obligatoriamente de 11 dígitos'
          }
        }
      },
      razonSocial: {
        validators: {
          notEmpty: {
            message: 'El campo razón social es obligatorio'
          },
          regexp: {
            regexp: /^[a-zA-Z\s]{5,40}$/,
            message: 'El campo razón social debe contener entre 5 y 40 letras, sin caracteres especiales ni números'
          }
        }
      },
      inicioActividad: {
    	  validators: {
    	    notEmpty: {
    	      message: 'El campo inicio de actividad es obligatorio'
    	    },
    	    date: {
    	      format: 'YYYY-MM-DD',
    	      message: 'El campo inicio de actividad debe tener el formato yyyy-mm-dd'
    	    },
    	    callback: {
    	      message: 'La fecha debe estar entre 01/01/1985 y 30/12/2023',
    	      callback: function (value, validator, $field) {
    	        if (value === '') {
    	          return true;
    	        }
    	        var date = moment(value, 'YYYY-MM-DD');
    	        var minDate = moment('1985-01-01', 'YYYY-MM-DD');
    	        var maxDate = moment('2023-12-30', 'YYYY-MM-DD');
    	        return date.isValid() && date.isBetween(minDate, maxDate, 'day', '[]');
    	      }
    	    }
    	  }
    	},
      numeroDni: {
        validators: {
          notEmpty: {
            message: 'El campo número de DNI es obligatorio'
          },
          regexp: {
            regexp: /^\d{8}$/,
            message: 'El campo número de DNI debe contener solo números y tener 8 dígitos'
          }
        }
      },
      contribuyente: {
        validators: {
          notEmpty: {
            message: 'El campo Condicion Contribuyente es obligatorio'
          }
        }
      },
      estadoContribuyente: {
        validators: {
          notEmpty: {
            message: 'El campo Estado Contribuyente es obligatorio'
          }
        }
      },
      fechaInscripcion: {
    	  validators: {
    	    notEmpty: {
    	      message: 'El campo fecha de inscripción es obligatorio'
    	    },
    	    date: {
    	      format: 'YYYY-MM-DD',
    	      message: 'El campo fecha de inscripción debe tener el formato yyyy-mm-dd'
    	    },
    	    callback: {
    	      message: 'La fecha debe estar entre 1985-01-01 y 2023-12-30',
    	      callback: function (value, validator, $field) {
    	        if (value === '') {
    	          return true;
    	        }
    	        var date = moment(value, 'YYYY-MM-DD');
    	        var minDate = moment('1985-01-01', 'YYYY-MM-DD');
    	        var maxDate = moment('2023-12-30', 'YYYY-MM-DD');
    	        return date.isValid() && date.isBetween(minDate, maxDate, 'day', '[]');
    	      }
    	    }
    	  }
    	},
      emisionComprobante: {
          validators: {
            notEmpty: {
              message: 'El campo Emision Comprobante es obligatorio'
            }
          }
        },
      direcsionNotificacion: {
        validators: {
          notEmpty: {
            message: 'El campo dirección de notificación es obligatorio'
          },
          regexp: {
            regexp: /^[a-zA-Z0-9._%+-\s]{1,45}$/,
            message: 'El campo dirección de notificación debe contener un máximo de 25 caracteres'
          }
        }
      },
      distritoNotificacion: {
        validators: {
          notEmpty: {
            message: 'El campo distrito de Notificación es obligatorio'
          }
        }
      },
      correoElectronico: {
        validators: {
          notEmpty: {
            message: 'El campo correo electrónico es obligatorio'
          },
          regexp: {
            regexp: /^[a-zA-Z0-9._%+-]{1,30}@(gmail\.com|hotmail\.com)$/,
            message: 'El campo correo electrónico debe tener el formato de correo válido y ser de @gmail.com o @hotmail.com'
          }
        }
      },
      telefono: {
        validators: {
          notEmpty: {
            message: 'El campo teléfono es obligatorio'
          },
          regexp: {
            regexp: /^\d{9}$/,
            message: 'El campo teléfono debe contener solo números y tener un máximo de 9 dígitos'
          }
        }
      }
    }
  });
});
</script>
<!-- Fin Validacion Jquery -->

<!-- Scrip Adicionales -->
<script>
$(document).on("click","#btn-eliminar",function(){
let cod=$("#id-codigo").val();
$("#codigo-eliminar").val(cod);			
alertify.confirm("Al regresar se Eliminara su registro Donde regresara",
	function(){
	$("#frmEliminar").submit();
	},
	function(){
	alertify.error('Cancel');
	});
})
</script>
<!-- Fin Scrip Adicional -->
</body>
</html>