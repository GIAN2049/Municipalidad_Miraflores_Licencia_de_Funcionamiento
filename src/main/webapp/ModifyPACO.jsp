<!-- Indicar con que sub libreria de JSTL va a trabajar la pagina "CORE" -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modify Paco</title>
<!-- Link Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"rel="stylesheet"integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"crossorigin="anonymous">
<!-- Estilos de las Tablas -->
<link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet">
</head>
<style>

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
		<h1 class="text-center">Modifica los Datos de tu ITEC</h1>
	</div>
	
	<!-- Tabla -->
	<div class="table-container">
		<table id="tableModifyPACO" class="table-custom" style="width:100%">
        <thead>
            <tr>
                <th>Código</th>
                <th>Fecha de emision</th>
                <th>Nombre del Proyecto</th>
                <th>Ubicacion</th>
                <th>Inspector Tecnico</th>
                <th>Subgerente</th>
                <th>Fecha de Inspecsion</th>
                <th>aspectos Evaluados</th>
                <th>Cumplimiento</th>
                <th>Observaciones</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
 				<c:forEach items="${requestScope.PACO}" var="row">
				    <tr>       
				        <td>${row.informePACO}</td>
				        <td>${row.fechaEmisionPACO}</td>
				        <td>${row.nomProyectoPACO}</td>
				        <td>${row.ubicacionPACO}</td>
				        <td>${row.inspectorTecnicoPACO}</td>
				        <td>${row.subgerentePACO}</td>
				        <td>${row.fechaInspeccionPACO}</td>
				        <td>${row.aspecEvaluadosPACO}</td>
				        <td>${row.cumplimientoPACO}</td>
				        <td>${row.observaPACO}</td>
				        <td><button type="button" class="btn btn-primary btn-editar" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Editar</button></td>
				    </tr>
				</c:forEach>
				

         </tbody>
    </table>
	</div>
	
	
	<!-- Boton del Modal -->
	<button type="button"  class="btn btn-danger mt-3" data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="display: none;">x</button>
	
	<!-- Modal -->
		<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
			data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title fs-5" id="staticBackdropLabel">ITEC</h1>
					</div>
					<div class="modal-body">
						<form id="frmModifyPACO" method="post" action="ServletPaco?accion=grabar">
							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Código</label>
								<input type="text" class="form-control" name="codigo2" id="id-codigo2" readonly value="0">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1" class="form-label">Fecha de Emision</label>
								<input type="date" class="form-control" name="fechaEmision2" id="id-fechaEmision2">
							</div>
							<div class="form-group">
					            <label for="exampleInputPassword1" class="form-label">NOMBRE DEL PROYECTO</label>
					            <input type="text" class="form-control" name="nombreProyecto2" id="id-nombreProyecto2">
					        </div>
							<div class="form-group">
					            <label for="exampleInputPassword1" class="form-label">UBICACION</label>
					            <input type="text" class="form-control" name="ubicacion2" id="id-ubicacion2">
					        </div>
							<div class="form-group">
					            <label for="exampleInputPassword1" class="form-label">INSPECTOR TECNICO</label>
					            <select class="form-select" name="inspectorTecnico2" id="id-inspectorTecnico2">
					              <option value=" ">Seleccione</option>
					              <option value="PENDIENTE DE FIRMA">PENDIENTE DE FIRMA</option>
					              <option value="Olano Mesias Hector">Olano Mesias Hector</option>
					            </select>
					        </div>
							<div class="form-group">
					            <label for="exampleInputPassword1" class="form-label">SUBGERENTE</label>
					            <select class="form-select" name="subgerente2" id="id-subgerente2">
					              <option value=" ">Seleccione</option>
					              <option value="PENDIENTE DE FIRMA">PENDIENTE DE FIRMA</option>
					              <option value="Aguilar Mancilla Cristina">Aguilar Mancilla Cristina</option>
					            </select>
					        </div>
							<div class="form-group">
					            <label for="exampleInputPassword1" class="form-label">FECHA DE INSPECSION</label>
					            <input type="date" class="form-control" name="fechaInspecsion2" id="id-fechaInspecsion2">
					        </div>
							<div class="form-group">
					            <label for="exampleInputPassword1" class="form-label">ASPECTOS EVALUADOS</label>
					            <input type="text" class="form-control" name="aspectosEvaluados2" id="id-aspectosEvaluados2">
					        </div>
							<div class="form-group">
					            <label for="select1" class="form-label">CUMPLIMIENTO</label>
					            <select class="form-select" name="cumplimiento2" id="id-cumplimiento2">
					              <option value=" ">Seleccione</option>
					              <option value="CUMPLE">CUMPLE</option>
					              <option value="NO CUMPLE">NO CUMPLE</option>
					            </select>
					        </div>
					        <div class="form-group">
					            <label for="exampleInputPassword1" class="form-label">OBSERVACIONES</label>
					            <input type="text" class="form-control" name="observaciones2" id="id-observaciones2">
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
        $('#tableModifyPACO').DataTable();
    });
    $(document).on("click",".btn-editar",function(){
    	let informe,fechaEmision,nomProyecto,ubicac,inspecTecnico,subgerentePACO,fechaInsp,aspecEvalua,cumplimi,observ;
 
    	//valores de las columnas
    	informe = $(this).parents("tr").find("td")[0].innerHTML;
    	fechaEmision = $(this).parents("tr").find("td")[1].innerHTML;
    	nomProyecto = $(this).parents("tr").find("td")[2].innerHTML;
    	ubicac = $(this).parents("tr").find("td")[3].innerHTML;
    	inspecTecnico = $(this).parents("tr").find("td")[4].innerHTML;
    	subgerentePACO = $(this).parents("tr").find("td")[5].innerHTML;
    	fechaInsp = $(this).parents("tr").find("td")[6].innerHTML;
    	aspecEvalua = $(this).parents("tr").find("td")[7].innerHTML;
    	cumplimi = $(this).parents("tr").find("td")[8].innerHTML;
    	observ = $(this).parents("tr").find("td")[9].innerHTML;
    	//mostrar el valor de las variables
    	$("#id-codigo2").val(informe);
    	$("#id-fechaEmision2").val(fechaEmision);
    	$("#id-nombreProyecto2").val(nomProyecto);
    	$("#id-ubicacion2").val(ubicac);
    	$("#id-inspectorTecnico2").val(inspecTecnico);
    	$("#id-subgerente2").val(subgerentePACO);
    	$("#id-fechaInspecsion2").val(fechaInsp);
    	$("#id-aspectosEvaluados2").val(aspecEvalua);
    	$("#id-cumplimiento2").val(cumplimi);
    	$("#id-observaciones2").val(observ);
    })
</script>


</body>
</html>