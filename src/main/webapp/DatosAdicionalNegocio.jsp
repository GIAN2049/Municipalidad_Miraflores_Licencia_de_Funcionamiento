<!-- Indicar con que sub libreria de JSTL va a trabajar la pagina "CORE" -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Datos adicionales del Negocio</title>
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
	      <h2 class="m-0">5/7</h2>
	    </div>
	    <h3 class="mt-3">V. DATOS ADICIONALES DEL NEGOCIO</h3>
	  </div>
	</section>
	<!-- Fin Section Texto -->
	
	<!-- Formulario -->
	<div class="container-fluid">
	  <div class="row">
	    <div class="col-12">
	      <div class="bg-info p-3 mb-3">
	        <h3 class="text-white mb-0">V. DATOS ADICIONALES DEL NEGOCIO</h3>
	      </div>
	      <form id="frmFormulario" method="post" action="ServletNegocio?accion=grabar">
	        <div class="row mb-3">
	          <div class="col-4">
	          	<label for="select1" class="form-label">CANTIDAD DE EMPLEADOS</label>
	          </div>
	          <div class="col-4 form-group">
	            <label for="select1" class="form-label">MASCULINO</label>
	            <input type="text" class="form-control" name="masculino" id="id-masculino">
	          </div>
	          <div class="col-4 form-group">
	            <label for="select1" class="form-label">FEMENINO</label>
	            <input type="text" class="form-control" name="femenino" id="id-femenino">
	          </div>
	        </div>	        
	        <!-- El <hr> sirve para la linea de separacion -->
	        <hr>
	        <div class="row d-flex justify-content-between">
	          <div class="col-5 pe-0">
	            <a href="LicenciaFuncionamiento.html" class="btn btn-danger w-45 ms-2">Cancelar</a>
	          </div>
	          <div class="col-1 ps-0">
	            <a href="ActividadesEconomicas.jsp" class="btn btn-primary w-45 ms-2">Regresar</a>
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



<!-- libreria JS general -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<!-- Scrip JS Boostrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<!-- librerias de la tabla "datatable" -->	
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>	
<!-- libreria para validar -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>

<!-- validacion Jquery -->
<script>    
    $(document).ready(function(){     
        $('#frmFormulario').bootstrapValidator({      
        	 fields:{
        		 masculino:{
        			 validators:{
        				 notEmpty:{
        					 message:'Campo masculino es obligatorio'
        				 }, 
        				 regexp:{
            				 regexp:/^[1-9]$/,
            				 message:'campo masculino numero min:1 max:9'
            			 }
        			 }
        		 },
        		 femenino:{
        			 validators:{
        				 notEmpty:{
        					 message:'Campo femenino es obligatorio'
        				 },
        				 regexp:{
            				 regexp:/^[1-9]$/,
            				 message:'campo femenino numero min:1 max:9'
            			 }
        			 }
        		 }  
        	 }
        });   
			
    });    
</script>
<!-- Fin validacion Jquery -->
</body>
</html>