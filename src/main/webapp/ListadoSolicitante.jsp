
<!-- Indicar con que sub libreria de JSTL va a trabajar la pagina "CORE" -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado del Solicitante</title>
<!-- Link Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"rel="stylesheet"integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"crossorigin="anonymous">
<!-- Estilos de las Tablas -->
<link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet">

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

</head>
<body>
	<div class="container">
		<h1 class="text-center">Listado Solicitante</h1>
	</div>
	
	<!-- Tabla -->
	<div class="table-container">
		<table id="tableSolicitante" class="table-custom" style="width:100%">
        <thead>
            <tr>
                <th>Código</th>
                <th>Tipo Contribuyente</th>
                <th>Numero RUC</th>
                <th>Razon Social</th>
                <th>Inicio Actividad</th>
                <th>DNI</th>
                <th>Fecha de Inscripcion</th>
                <th>Emicion</th>
                <th>Direcsion</th>
                <th>Distrito</th>
                <th>Correo</th>
                <th>Telefono</th>
                <th>Tipo Tramite</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
                <c:forEach items="${requestScope.solicitante}" var="row">
                	<tr>       
		                <td>${row.codIdentificacion}</td>
		                <td>${row.tipContribuyente}</td>
		                <td>${row.numRuc}</td>
		                <td>${row.razon}</td>
		                <td>${row.inicioActividad}</td>
		                <td>${row.numDni}</td>
		                <td>${row.fechaInscripcion}</td>
		                <td>${row.emicion}</td>
		                <td>${row.direcsionNotifi}</td>
		                <td>${row.distritoNotifi}</td>
		                <td>${row.correo}</td>
		                <td>${row.telefono}</td>
		                <td>${row.tipoTramite}</td>
		                <td></td>
	                </tr>
                </c:forEach>
         </tbody>
    </table>
    
	</div>
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
</script>

</body>
</html>