<!-- Indicar con que sub libreria de JSTL va a trabajar la pagina "CORE" -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modifique su Estado</title>
<!-- Link Boostrap -->
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
		<h1 class="text-center">Modifica los Datos de tu Usuario</h1>
	</div>
	
	<!-- Tabla -->
	<div class="table-container">
		<table id="tableModifyADA" class="table-custom" style="width:100%">
        <thead>
            <tr>
                <th>Código</th>
                <th>Expediente</th>
                <th>Responsable</th>
                <th>DNI</th>
                <th>Monto</th>
                <th>Fecha Recepcion</th>
                <th>Estado</th>
                <th>Observaciones</th>
                <th>Fecha de Revision</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
                <c:forEach items="${requestScope.ADA}" var="row">
				    <tr>       
				        <td>${row.codigo}</td>
				        <td>${row.numeroExpediente}</td>
				        <td>${row.responsable}</td>
				        <td>${row.dni}</td>
				        <td>${row.monto}</td>
				        <td>${row.fechaRecepcion}</td>
				        <td>${row.estado}</td>
				        <td>${row.observaciones}</td>
				        <td>${row.fechaRevision}</td>
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
						<h1 class="modal-title fs-5" id="staticBackdropLabel">SGU</h1>
					</div>
					<div class="modal-body">
						<form id="frmModifyADA" method="post" action="ServletAda?accion=grabar">
							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Código</label>
								<input type="text" class="form-control" name="codigo1" id="id-codigo1" readonly value="0">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Expediente</label>
								<input type="text" class="form-control" name="expediente1" id="id-expediente1">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">Responsable</label>
								<input type="text" class="form-control" name="responsable1" id="id-responsable1">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">DNI</label>
								<input type="text" class="form-control"  name="dni1" id="id-dni1">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">Monto</label>
								<input type="text" class="form-control"  name="monto1" id="id-monto1">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">Fecha de Recepción</label>
								<input type="date" class="form-control"  name="fechaRecepcion1" id="id-fechaRecepcion1">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">ESTADO</label>
								<select class="form-select" name="estado1" id="id-estado1">
					              <option value=" ">Seleccione</option>
					              <option value="EN PROCESO">EN PROCESO</option>
					              <option value="PENDIENTE DE REVISION">PENDIENTE DE REVISION</option>
					              <option value="REVISADO">REVISADO</option>
					              <option value="TERMINADO">TERMINADO</option>
					            </select>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="form-label">Observaciones</label>
								<input type="text" class="form-control"  name="observaciones1" id="id-observaciones1">
							</div>
							<div class="form-group">
					            <label for="select1" class="form-label">FECHA REVISION</label>
					            <input type="date" class="form-control" name="fechaRevision1" id="id-fechaRevision1">
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
<!-- La libreria moment.js/2.29 es para utilizada para manipular y formatear fechas "IMPORTANTE" si no el input de fecha te parpedeara rojo y no podras grabar  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script> <!-- Si no se importa esta libreria no se podra hacer el registrar el error no te botara en cosola solo en el ispecsionar de la pagina -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>

<script>
    $(document).ready(function() {
        $('#tableModifyADA').DataTable();
    });
    $(document).on("click",".btn-editar",function(){
    	let cod,expediente,responsable,dni,monto,fecha,estado,observaciones,fechaRevision;
    	//valores de las columnas
    	cod = $(this).parents("tr").find("td")[0].innerHTML;
	    expediente = $(this).parents("tr").find("td")[1].innerHTML;
	    responsable = $(this).parents("tr").find("td")[2].innerHTML;
	    dni = $(this).parents("tr").find("td")[3].innerHTML;
	    monto = $(this).parents("tr").find("td")[4].innerHTML;
	    fecha = $(this).parents("tr").find("td")[5].innerHTML;
	    estado = $(this).parents("tr").find("td")[6].innerHTML;
	    observaciones = $(this).parents("tr").find("td")[7].innerHTML;
	    fechaRevision = $(this).parents("tr").find("td")[8].innerHTML;
    	//mostrar el valor de las variables
    	$("#id-codigo1").val(cod);
    	$("#id-expediente1").val(expediente);
    	$("#id-responsable1").val(responsable);
    	$("#id-dni1").val(dni);
    	$("#id-monto1").val(monto);
    	$("#id-fechaRecepcion1").val(fecha);
    	$("#id-estado1").val(estado);
    	$("#id-observaciones1").val(observaciones);
    	$("#id-fechaRevision1").val(fechaRevision);
    })
</script>



</body>
</html>