<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sistema PACO</title>
<!-- Link Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"crossorigin="anonymous">
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
	    <h1 class="text-center">Sistema PACO</h1>
	  </div>
	</header>
	<!-- Fin section Header -->
	
	<!-- Section Texto -->
	<section style="padding-top: 20px;">
	  <div class="container text-center">
	    <div class="rounded-circle bg-secondary text-white d-inline-flex align-items-center justify-content-center" style="width: 100px; height: 100px;">
	      <h2 class="m-0">1</h2>
	    </div>
	    <h3 class="mt-3">ELABORACION DE ITEC</h3>
	  </div>
	</section>
	<!-- Fin Section Texto -->
	
	<!-- Formulario -->
	<div class="container-fluid">
	  <div class="row">
	    <div class="col-12">
	      <div class="bg-info p-3 mb-3">
	        <h3 class="text-white mb-0">ELABORE ITEC</h3>
	      </div>
	      <form id="frmPACO" method="post" action="ServletPaco?accion=grabarFormularioPACO">
	        <div class="row mb-3">
	          <div class="col-6 form-group">
	            <label for="select1" class="form-label">FECHA DE EMISION</label>
	            <input type="date" class="form-control" name="fechaEmisionPACO" id="id-fechaEmisionPACO">
	          </div>
	        </div>
	        <hr>
	        <div class="row mb-3">
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">NOMBRE DEL PROYECTO</label>
	            <input type="text" class="form-control" name="nombreProyectoPACO" id="id-nombreProyectoPACO">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">UBICACION</label>
	            <input type="text" class="form-control" name="ubicacionPACO" id="id-ubicacionPACO">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">INSPECTOR TECNICO</label>
	            <select class="form-select" name="inspectorTecnicoPACO" id="id-inspectorTecnicoPACO">
	              <option value=" ">Seleccione</option>
	              <option value="PENDIENTE DE FIRMA">PENDIENTE DE FIRMA</option>
	              <option value="Olano Mesias Hector">Olano Mesias Hector</option>
	            </select>
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">SUBGERENTE</label>
	            <select class="form-select" name="subgerentePACO" id="id-subgerentePACO">
	              <option value=" ">Seleccione</option>
	              <option value="PENDIENTE DE FIRMA">PENDIENTE DE FIRMA</option>
	              <option value="Aguilar Mancilla Cristina">Aguilar Mancilla Cristina</option>
	            </select>
	          </div>
	        </div>
	        <div class="row mb-3">
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">FECHA DE INSPECSION</label>
	            <input type="date" class="form-control" name="fechaInspecsionPACO" id="id-fechaInspecsionPACO">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">ASPECTOS EVALUADOS</label>
	            <input type="text" class="form-control" name="aspectosEvaluadosPACO" id="id-aspectosEvaluadosPACO">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">CUMPLIMIENTO</label>
	            <select class="form-select" name="cumplimientoPACO" id="id-cumplimientoPACO">
	              <option value=" ">Seleccione</option>
	              <option value="CUMPLE">CUMPLE</option>
	              <option value="NO CUMPLE">NO CUMPLE</option>
	            </select>
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">OBSERVACIONES</label>
	            <input type="text" class="form-control" name="observacionesPACO" id="id-observacionesPACO">
	          </div>
	        </div>
	        <!-- El <hr> sirve para la linea de separacion -->
	        <hr>
	        <div class="row d-flex justify-content-between">
	          <div class="col-5 pe-0">
	            <button type="reset" class="btn btn-danger w-45 me-2">Cancelar</button>
	          </div>
	          <div class="col-1 ps-0">
	            <button type="reset" class="btn btn-primary w-45 ms-2">Regresar</button>
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
<!-- La libreria moment.js/2.29 es para utilizada para manipular y formatear fechas "IMPORTANTE" si no el input de fecha te parpedeara rojo y no podras grabar  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script> <!-- Si no se importa esta libreria no se podra hacer el registrar el error no te botara en cosola solo en el ispecsionar de la pagina -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>
</body>
</html>