<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RSG</title>
<!-- Link Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
	<!-- Section Header -->
	<header class="bg-primary text-white">
	  <div class="container py-3">
	    <h1 class="text-center">PROYECTAR RSG</h1>
	  </div>
	</header>
	<!-- Fin section Header -->
	
	<!-- Section Texto -->
	<section style="padding-top: 20px;">
	  <div class="container text-center">
	    <div class="rounded-circle bg-secondary text-white d-inline-flex align-items-center justify-content-center" style="width: 100px; height: 100px;">
	      <h2 class="m-0">1</h2>
	    </div>
	    <h3 class="mt-3">RSG</h3>
	  </div>
	</section>
	<!-- Fin Section Texto -->
	
	<!-- Formulario -->
	<div class="container-fluid">
	  <div class="row">
	    <div class="col-12">
	      <div class="bg-info p-3 mb-3">
	        <h3 class="text-white mb-0">GENERE RSG</h3>
	      </div>
	      <form id="frmRSG" method="post" action="ServletRsg?accion=grabar" enctype="multipart/form-data">
	        <div class="row mb-3">
	          <div class="col-6 form-group">
	            <label for="select1" class="form-label">TITULO DE RESOLUCION</label>
	            <input type="text" class="form-control" name="tituloResolucion" id="id-tituloResolucion">
	          </div>
	        </div>
	        <hr>
	        <div class="row mb-3">
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">DESCRIPCION</label>
	            <input type="text" class="form-control" name="descripcion" id="id-descripcion">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">NUMERO RESOLUCION</label>
	            <input type="text" class="form-control" name="numeroResolucion" id="id-numeroResolucion">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">RESPONSABLE</label>
	            <select class="form-select" name="responsable" id="id-responsable">
	              <option value=" ">Seleccione</option>
	              <option value="Olano Mesias Hector">Olano Mesias Hector</option>
	            </select>
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">DEPARTAMENTO</label>
	            <select class="form-select" name="departamento" id="id-departamento">
	              <option value=" ">Seleccione</option>
	              <option value="INSPECTOR TECNICO">INSPECTOR TECNICO</option>
	            </select>
	          </div>
	        </div>
	        <div class="row mb-3">
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">FECHA DE EMISION</label>
	            <input type="date" class="form-control" name="fechaEmision" id="id-fechaEmision">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">FIRMA DEL SUBGERENTE</label>
	            <select class="form-select" name="firmaSubgerente" id="id-firmaSubgerente">
	              <option value=" ">Seleccione</option>
	              <option value="PENDIENTE DE FIRMA">PENDIENTE DE FIRMA</option>
	              <option value="Aguilar Mancilla Cristina">Aguilar Mancilla Cristina</option>
	            </select>
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">FECHA DE FIRMA</label>
	            <input type="date" class="form-control" name="fechaFirma" id="id-fechaFirma">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">SELECCIONE SELLADO</label>
	            <input type="file" class="form-control" name="sellado">
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