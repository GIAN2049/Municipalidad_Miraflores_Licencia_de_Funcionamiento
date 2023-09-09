<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado RLIC</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"rel="stylesheet"integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"crossorigin="anonymous">
<!-- Estilos de las Tablas -->
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
		<h1 class="text-center">Listado de RLIC</h1>
	</div>
	
	<!-- Tabla -->
	<div class="table-container">
		<table id="tableRLIC" class="table-custom" style="width:100%">
        <thead>
            <tr>
                <th>Código</th>
                <th>Numero de RUC</th>
                <th>Razon Social</th>
                <th>Inicio Actividad</th>
                <th>Giro</th>
                <th>Nomnbre Comercial</th>          
                <th>Direcsion</th>
                <th>Distrito</th>
                <th>Tipo de Licencia</th>
                <th>Firma SubGerente</th>
                <th>Fecha de Firma</th>
                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
                <c:forEach items="${requestScope.listado_RLIC}" var="row">
                	<tr>       
		                <td>${row.codRlic}</td>
		                <td>${row.numeroRuc}</td>
		                <td>${row.razonSocial}</td>
		                <td>${row.inicioActividad}</td>
		                <td>${row.actividadComercial}</td>
		                <td>${row.nombreComercial}</td>
		                <td>${row.direcsionNegocio}</td>
		                <td>${row.distrito}</td>
		                <td>${row.tipoLicencia}</td>
		                <td>${row.firmaSubgerente}</td>
		                <td>${row.fechaFirma}</td>
						<td><button type="button" class="btn btn-primary btn-sellado">Sellado</button></td>
						<td><button type="button"  class="btn btn-primary btn-editar" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Editar</button></td>
	                </tr>
                </c:forEach>
         </tbody>
    </table>
    
	</div>
	<!-- Fin tabla -->
	
	<!-- Boton del Modal -->
	<button type="button"  class="btn btn-danger mt-3" data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="display: none;">x</button>
	
	<!-- Modal -->
		<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
			data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title fs-5" id="staticBackdropLabel">RSG</h1>
					</div>
					<div class="modal-body">
						<form id="frmModifyRLIC" method="post" action="ServletRlic?accion=actualizar" enctype="multipart/form-data">
							<div class="form-group">
								<label for="select1" class="form-label">CODIGO</label>
	            				<input type="text" class="form-control" name="codigo" id="id-codigo" readonly value="0"><!-- Se pone el campo codigo en el modal cuando actualizas -->
							</div>
							<div class="form-group">
								<label for="select1" class="form-label">NUMERO DE RUC</label>
	            				<input type="text" class="form-control" name="numeroRuc1" id="id-numeroRuc1">		
							</div>
							<div class="form-group">
								<label for="select1" class="form-label">RAZON SOCIAL</label>
	            				<input type="text" class="form-control" name="razonSocial1" id="id-razonSocial1">
							</div>
							<div class="form-group">
					            <label for="select1" class="form-label">INICIO DE ACTIVIDAD</label>
	            				<input type="date" class="form-control" name="inicioActividad1" id="id-inicioActividad1">
					        </div>
							<div class="form-group">
					            <label for="select1" class="form-label">ACTIVIDAD COMERCIAL</label>
	            				<input type="text" class="form-control" name="actividadComercial1" id="id-actividadComercial1">
					        </div>
							<div class="form-group">
					            <label for="select1" class="form-label">NOMBRE COMERCIAL</label>
	            				<input type="text" class="form-control" name="nombreComercial1" id="id-nombreComercial1">
					        </div>
							<div class="form-group">
					            <label for="select1" class="form-label">DIRECSION</label>
	            				<input type="text" class="form-control" name="direcsion1" id="id-direcsion1">
					        </div>
							<div class="form-group">
					            <label for="select1" class="form-label">DISTRITO</label>
					            <select class="form-select" name="distrito1" id="id-distrito1">
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
							<div class="form-group">
					            <label for="select1" class="form-label">TIPO DE LICENCIA</label>
					            <select class="form-select" name="tipoLicencia1" id="id-tipoLicencia1">
					              <option value=" ">Seleccione</option>
					              <option value="INDETERMINADA">INDETERMINADA</option>
					              <option value="TEMPORAL">TEMPORAL</option>
					            </select>
					        </div>
							<div class="form-group">
					            <label for="select1" class="form-label">FIRMA DEL SUBGERENTE</label>
					            <select class="form-select" name="firmaSubgerente1" id="id-firmaSubgerente1">
					              <option value=" ">Seleccione</option>
					              <option value="PENDIENTE DE FIRMA">PENDIENTE DE FIRMA</option>
					              <option value="Aguilar Mancilla Cristina">Aguilar Mancilla Cristina</option>
					            </select>
					        </div>
					        <div class="form-group">
					        	<label for="select1" class="form-label">FECHA DE FIRMA</label>
	            				<input type="date" class="form-control" name="fechaFirma1" id="id-fechaFirma1">
					        </div>
					        <div class="form-group">
					        	<label for="select1" class="form-label">SELECCIONE SELLADO</label>
	            				<input type="file" class="form-control" name="sellado1" id="id-sellado1">
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
	<hr>
	<a href="Observaciones.html" class="btn btn-secondary">Regresar</a>
	
	
	
	
	
	
	
	
	
	
	
	
	
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
        $('#tableRLIC').DataTable();
    });
    
   
    $(document).on("click",".btn-sellado",function(){
        let cod;
        cod=$(this).parents("tr").find("td")[0].innerHTML;
        let url = "http://localhost:8080/Municipalidad_Lima_Miraflores_Proyecto/ServletRlic?accion=mostrarfirma&codigo=" + cod;
        window.open(url, "_blank");
    });  
    //
    $(document).on("click",".btn-editar",function(){
    	let cod,numRuc,razonSocial,inicioActi,actividadComer,nombreComer,direcsionNego,distrito,tipoLicencia,firmaSubgere,fechaFirma,sellado;
    	//valores de las columnas
    	cod = $(this).parents("tr").find("td")[0].innerHTML;
    	numRuc = $(this).parents("tr").find("td")[1].innerHTML;
    	razonSocial = $(this).parents("tr").find("td")[2].innerHTML;
    	inicioActi = $(this).parents("tr").find("td")[3].innerHTML;
    	actividadComer = $(this).parents("tr").find("td")[4].innerHTML;
    	nombreComer = $(this).parents("tr").find("td")[5].innerHTML;
    	direcsionNego = $(this).parents("tr").find("td")[6].innerHTML;
    	distrito = $(this).parents("tr").find("td")[7].innerHTML;
    	tipoLicencia = $(this).parents("tr").find("td")[8].innerHTML;
    	firmaSubgere = $(this).parents("tr").find("td")[9].innerHTML;
    	fechaFirma = $(this).parents("tr").find("td")[10].innerHTML;
		sellado = $(this).parents("tr").find("td")[11].innerHTML;
    	
    	//mostrar el valor de las variables
    	$("#id-codigo").val(cod);
    	$("#id-numeroRuc1").val(numRuc);
    	$("#id-razonSocial1").val(razonSocial);
    	$("#id-inicioActividad1").val(inicioActi);
    	$("#id-actividadComercial1").val(actividadComer);
    	$("#id-nombreComercial1").val(nombreComer);
    	$("#id-direcsion1").val(direcsionNego);
    	$("#id-distrito1").val(distrito);
    	$("#id-tipoLicencia1").val(tipoLicencia);
    	$("#id-firmaSubgerente1").val(firmaSubgere);
    	$("#id-fechaFirma1").val(fechaFirma);
    	$("#id-sellado1").val(sellado);
    })
</script>	
</body>
</html>