<!-- Indicar con que sub libreria de JSTL va a trabajar la pagina "CORE" -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Datos del Establecimiento</title>
<!-- Link Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
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
	      <h2 class="m-0">3/7</h2>
	    </div>
	    <h3 class="mt-3">III. DATOS DEL ESTABLECIMIENTO</h3>
	  </div>
	</section>
	<!-- Fin Section Texto -->
	
	<!-- Formulario -->
	<div class="container-fluid">
	  <div class="row">
	    <div class="col-12">
	      <div class="bg-info p-3 mb-3">
	        <h3 class="text-white mb-0">III. DATOS DEL ESTABLECIMIENTO</h3>
	      </div>
	      <form id="frmFormulario" method="post" action="ServletEstablecimiento?accion=grabarFormularioDatosEstablecimiento">
	        <div class="row mb-3">
	          <div class="col-6 form-group">
	            <label for="select1" class="form-label">BUSCAR LA UBICACION DEL NEGOCIO</label>
	            <input type="text" class="form-control" name="ubicacionNegocio" id="id-ubicacionNegocio">
	          </div>
	          <div class="col-2">
		        <button type="button" class="btn btn-primary">Buscar</button>
		      </div>
	        </div>
	        <hr>
	        <div class="row mb-3">
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">AREA DEL LOCAL UTILIZADA (M2)</label>
	            <input type="text" class="form-control" name="areaLocal" id="id-areaLocal">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">CAPACIDAD AFORO</label>
	            <input type="text" class="form-control" name="capacidadAforo" id="id-capacidadAforo">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">ANTIGUEDAD EDIFICACION</label>
	            <input type="text" class="form-control" name="antiguedadEdificacion" id="id-antiguedadEdificacion">
	          </div>
	        </div>
	        <div class="row mb-3">
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">NOMBRE COMERCIAL</label>
	            <input type="text" class="form-control" name="nombreComercial" id="id-nombreComercial">
	          </div>	          
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">NUMERO DE PISOS</label>
	            <input type="text" class="form-control" name="numeroPisos" id="id-numeroPisos">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">REFERENCIA</label>
	            <textarea name="referencia" id="id-referencia" rows="" cols=""></textarea>
	          </div>
	        </div>
	        <!-- El <hr> sirve para la linea de separacion -->
	        <hr>
	        <div class="row d-flex justify-content-between">
	          <div class="col-5 pe-0">
	            <a href="LicenciaFuncionamiento.html" class="btn btn-danger w-45 ms-2">Cancelar</a>
	          </div>
	          <div class="col-1 ps-0">
	            <a href="IdentificacionSolicitante.jsp" class="btn btn-primary w-45 ms-2">Regresar</a>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>

<script>
$(document).ready(function(){     
    $('#frmFormulario').bootstrapValidator({      
        fields:{
        	ubicacionNegocio: {
        		  validators: {
        		    notEmpty: {
        		      message: 'El campo ubicación es obligatorio'
        		    },
        		    regexp: {
        		      regexp: /^[a-zA-Z0-9\s.,@#-ñÑáéíóúÁÉÍÓÚ]+$/,
        		      message: 'El campo ubicación debe contener letras, números y caracteres especiales'
        		    }
        		  }
        		},
        		areaLocal: {
        			  validators: {
        			    notEmpty: {
        			      message: 'El campo área local es obligatorio'
        			    },
        			    regexp: {
        			      regexp: /^\d{1,50}$/,
        			      message: 'El campo área local debe contener solo números y tener un máximo de 50'
        			    }
        			  }
        			},
            capacidadAforo:{
                validators:{
                    notEmpty:{
                        message: 'Campo Capacidad Aforo es obligatorio'
                    },
                    regexp:{
                        regexp:/^(?:[1-9]|1[0-9]|20)$/,
                        message:'Campo Capacidad Aforo solo debe contener numeros Maximo 20'
                    }
                }
            },
            antiguedadEdificacion: {
            	  validators: {
            	    notEmpty: {
            	      message: 'El campo antigüedad de edificación es obligatorio'
            	    },
            	    regexp: {
            	      regexp: /^(?:[1-9]|1\d|2[0-9]|30)$/,
            	      message: 'El campo antigüedad de edificación solo permite números del 1 al 30'
            	    }
            	  }
            	},
            nombreComercial:{
                validators:{
                    notEmpty:{
                        message: 'Campo Nombre Comercial es obligatorio'
                    },
                    regexp:{
                        regexp: /^[a-zA-Z0-9\s]{3,30}$/,
                        message:'Campo Nombre Comercial solo permite letras minimo 3 y maximo 30'
                    }
                }
            },
            numeroPisos:{
                validators:{
                    notEmpty:{
                        message: 'Campo Numero De Pisos es obligatorio'
                    },
                    regexp:{
                        regexp:/^(?:[1-9]|1[0-9]|20)$/,
                        message:'Campo Numero de Pisos solo numeros Minimo 1  Maximo 20'
                    }
                }
            }
            
        }
    });
});  
</script>	
</body>
</html>