<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado Pago</title>
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
		<h1 class="text-center">Listado de tu comprobante de Pago</h1>
	</div>
	
	
	<!-- Tabla -->
	<div class="table-container">
		<table id="tablePago" class="table-custom" style="width:100%">
        <thead>
            <tr>
                <th>Código</th>
                <th>NOMBRE Y APELLIDO</th>
                <th>DNI</th>
                <th>PAGO</th>
            </tr>
        </thead>
        <tbody>
                <c:forEach items="${requestScope.listado_Pago}" var="row">
                	<tr>       
		                <td>${row.codPago}</td>
		                <td>${row.nombreApellido}</td>
		                <td>${row.dni}</td>
						<td><button type="button" class="btn btn-primary btn-sellado">Ver Pago</button></td>
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
    $('#tablePago').DataTable();
});


$(document).on("click",".btn-sellado",function(){
    let cod;
    cod=$(this).parents("tr").find("td")[0].innerHTML;
    let url = "http://localhost:8080/Municipalidad_Lima_Miraflores_Proyecto/ServletPago?accion=mostrarPago&codigo=" + cod;
    window.open(url, "_blank");
});
</script>	
</body>
</html>