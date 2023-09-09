<!-- Indicar con que sub libreria de JSTL va a trabajar la pagina "CORE" -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mofifica tus datos de establecimiento</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet">
</head>
<style>
    /* Estilos personalizados para la tabla */
    .table-container {
        margin-top: 20px;
    }

    .table-custom {
        width: 90%; /* Reducir el ancho de la tabla */
        border: 1px solid #ccc;
        border-collapse: collapse;
        font-family: "Arial", sans-serif;
        font-size: 12px; /* Reducir el tamaño de la fuente */
    }

    .table-custom thead th {
        background-color: #f8f8f8;
        border-bottom: 2px solid #ccc;
        padding: 8px; /* Reducir el espaciado interno */
        font-weight: bold;
        text-align: left;
    }

    .table-custom tbody td {
        border-bottom: 1px solid #ccc;
        padding: 6px; /* Reducir el espaciado interno */
    }

    .table-custom tbody tr:nth-child(even) {
        background-color: #f2f2f2;
    }
</style>
<body>
	<div class="container">
		<h1 class="text-center">Modifica los Datos de tu Establecimiento</h1>
	</div>
	
	<!-- Tabla -->
	<div class="table-container">
		<table id="tableSolicitante" class="table-custom" style="width:100%">
        <thead>
            <tr>
                <th>Código</th>
                <th>Ubicacion</th>
                <th>Area Utilizada</th>
                <th>Aforo</th>
                <th>Antiguedad</th>
                <th>Nombre Comercial</th>
                <th>N. Pisos</th>
                <th>Referencia</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
                <c:forEach items="${requestScope.Establecimiento}" var="row">
				    <tr>       
				        <td>${row.codEstablecimiento}</td>
				        <td>${row.ubicacionNegocio}</td>
				        <td>${row.areaUtilizada}</td>
				        <td>${row.capacidadAforo}</td>
				        <td>${row.antiguedad}</td>
				        <td>${row.nomComercial}</td>
				        <td>${row.numPisos}</td>
				        <td>${row.referencia}</td>
				        <td><button type="button" class="btn btn-primary btn-editar" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Editar</button></td>
				    </tr>
				    
				</c:forEach>

         </tbody>
    </table>
    
	</div>
	
	<!-- Boton del Modal -->
	<button type="button" class="btn btn-danger mt-3" data-bs-toggle="modal" data-bs-target="#staticBackdrop">x</button>
	
	<!-- Modal -->
		<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
			data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title fs-5" id="staticBackdropLabel">Establecimiento</h1>
					</div>
					<div class="modal-body">
						<form id="frmEstablecimiento" method="post" action="ServletEstablecimiento?accion=grabar">
							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Código</label>
								<input type="text" class="form-control" name="codigo" id="id-codigo" readonly value="0">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Ubicacion</label>
								<input type="text" class="form-control" name="ubicacion" id="id-ubicacion">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">Area Utilizada</label>
								<input type="text" class="form-control" name="utilizada" id="id-utilizada">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">Aforo</label>
								<input type="text" class="form-control"  name="aforo" id="id-aforo">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">Antiguedad</label>
								<input type="text" class="form-control"  name="antiguedad" id="id-antiguedad">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">Nombre Comercial</label>
								<input type="text" class="form-control"  name="comercial" id="id-comercial">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">N. Pisos</label>
								<input type="text" class="form-control"  name="pisos" id="id-pisos">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">Referencia</label>
								<input type="text" class="form-control"  name="referencia" id="id-referencia">
							</div>									
							<div class="modal-footer">
								<button type="submit" class="btn btn-primary">Grabar</button>
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="btn-cerrar">Cerrar</button>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
		<!-- fin modal -->
	<!-- Fin tabla -->




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
    $(document).ready(function() {
        $('#tableSolicitante').DataTable();
    });
    $(document).on("click",".btn-editar",function(){
    	let cod,ubicacion,utilizada,aforo,antiguedad,comercial,pisos,referencia;
    	//valores de las columnas
    	cod = $(this).parents("tr").find("td")[0].innerHTML;
	    ubicacion = $(this).parents("tr").find("td")[1].innerHTML;
	    utilizada = $(this).parents("tr").find("td")[2].innerHTML;
	    aforo = $(this).parents("tr").find("td")[3].innerHTML;
	    antiguedad = $(this).parents("tr").find("td")[4].innerHTML;
	    comercial = $(this).parents("tr").find("td")[5].innerHTML;
	    pisos = $(this).parents("tr").find("td")[6].innerHTML;
	    referencia = $(this).parents("tr").find("td")[7].innerHTML;
    	//mostrar el valor de las variables
    	$("#id-codigo").val(cod);
    	$("#id-ubicacion").val(ubicacion);
    	$("#id-utilizada").val(utilizada);
    	$("#id-aforo").val(aforo);
    	$("#id-antiguedad").val(antiguedad);
    	$("#id-comercial").val(comercial);
    	$("#id-pisos").val(pisos);
    	$("#id-referencia").val(referencia);
    })
</script>
</body>
</html>