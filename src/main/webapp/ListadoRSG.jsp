<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado RSG</title>
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
		<h1 class="text-center">Listado de RSG</h1>
	</div>

	<!-- Tabla -->
	<div class="table-container">
		<table id="tableRSG" class="table-custom" style="width:100%">
        <thead>
            <tr>
                <th>Código</th>
                <th>Titulo de Resolucion</th>
                <th>Descripcion</th>
                <th>N. Resolucion</th>
                <th>Responsable</th>
                <th>Departamento</th>          
                <th>Fecha de Emision</th>
                <th>Firma SubGerente</th>
                <th>Fecha de Firma</th>
                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
                <c:forEach items="${requestScope.listado_RSG}" var="row">
                	<tr>       
		                <td>${row.cod_rsg}</td>
		                <td>${row.titulo_resolucion}</td>
		                <td>${row.descripcion}</td>
		                <td>${row.numero_resolucion}</td>
		                <td>${row.responsable}</td>
		                <td>${row.departamento}</td>
		                <td>${row.fecha_emision}</td>
		                <td>${row.firma_subGerente}</td>
		                <td>${row.fecha_firma}</td>
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
						<form id="frmModifyRSG" method="post" action="ServletRsg?accion=actualizar" enctype="multipart/form-data">
							<div class="form-group">
								<label for="select1" class="form-label">CODIGO</label>
	            				<input type="text" class="form-control" name="codigo" id="id-codigo" readonly value="0"><!-- Se pone el campo codigo en el modal cuando actualizas -->
							</div>
							<div class="form-group">
								<label for="select1" class="form-label">TITULO DE RESOLUCION</label>
	            				<input type="text" class="form-control" name="tituloResolucion1" id="id-tituloResolucion1">		
							</div>
							<div class="form-group">
								<label for="select1" class="form-label">DESCRIPCION</label>
	            				<input type="text" class="form-control" name="descripcion1" id="id-descripcion1">
							</div>
							<div class="form-group">
					            <label for="select1" class="form-label">NUMERO RESOLUCION</label>
	            				<input type="text" class="form-control" name="numeroResolucion1" id="id-numeroResolucion1">
					        </div>
							<div class="form-group">
					            <label for="select1" class="form-label">RESPONSABLE</label>
					            <select class="form-select" name="responsable1" id="id-responsable1">
					              <option value=" ">Seleccione</option>
					              <option value="Olano Mesias Hector">Olano Mesias Hector</option>
					            </select>
					        </div>
							<div class="form-group">
					            <label for="select1" class="form-label">DEPARTAMENTO</label>
					            <select class="form-select" name="departamento1" id="id-departamento1">
					              <option value=" ">Seleccione</option>
					              <option value="INSPECTOR TECNICO">INSPECTOR TECNICO</option>
					            </select>
					        </div>
							<div class="form-group">
					            <label for="select1" class="form-label">FECHA DE EMISION</label>
	            				<input type="date" class="form-control" name="fechaEmision1" id="id-fechaEmision1">
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
        $('#tableRSG').DataTable();
    });
    
    //Para abrir la imagen en otra Pagina
    $(document).on("click",".btn-sellado",function(){
        let cod;
        cod=$(this).parents("tr").find("td")[0].innerHTML;
        let url = "http://localhost:8080/Municipalidad_Lima_Miraflores_Proyecto/ServletRsg?accion=mostrarfirma&codigo=" + cod;
        window.open(url, "_blank");
    });
    
    //
    $(document).on("click",".btn-editar",function(){
    	let cod,titulo,descrip,numeroResol,responsable,departamento,fechaEmision,firmaSubge,fechaFirma,sellado;
    	//valores de las columnas
    	cod = $(this).parents("tr").find("td")[0].innerHTML;
    	titulo = $(this).parents("tr").find("td")[1].innerHTML;
    	descrip = $(this).parents("tr").find("td")[2].innerHTML;
    	numeroResol = $(this).parents("tr").find("td")[3].innerHTML;
    	responsable = $(this).parents("tr").find("td")[4].innerHTML;
    	departamento = $(this).parents("tr").find("td")[5].innerHTML;
    	fechaEmision = $(this).parents("tr").find("td")[6].innerHTML;
    	firmaSubge = $(this).parents("tr").find("td")[7].innerHTML;
    	fechaFirma = $(this).parents("tr").find("td")[8].innerHTML;
    	sellado = $(this).parents("tr").find("td")[9].innerHTML;

    	//mostrar el valor de las variables
    	$("#id-codigo").val(cod);
    	$("#id-tituloResolucion1").val(titulo);
    	$("#id-descripcion1").val(descrip);
    	$("#id-numeroResolucion1").val(numeroResol);
    	$("#id-responsable1").val(responsable);
    	$("#id-departamento1").val(departamento);
    	$("#id-fechaEmision1").val(fechaEmision);
    	$("#id-firmaSubgerente1").val(firmaSubge);
    	$("#id-fechaFirma1").val(fechaFirma);
    	$("#id-sellado1").val(sellado);
    })
</script>
</body>
</html>