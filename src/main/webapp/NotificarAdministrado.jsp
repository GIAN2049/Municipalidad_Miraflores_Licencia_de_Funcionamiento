<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Correo para Administrado</title>
<!-- Link Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<style>
  body {
    background-image: url('ruta_de_la_imagen.jpg');
    background-size: cover;
    background-repeat: no-repeat;
  }
  .my-form {
    border: 2px solid blue;
    padding: 20px;
  }
</style>
<body>
	<div class="container">
	    <h1>Mensaje Nuevo</h1>
	    <form class="my-form" id="frmAdministrado" method="post" action="ServletFormulario?accion=grabar">
	      <div class="form-group">
	        <label for="nombre">Destinario:</label>
	        <input type="text" class="form-control" name="destinario" placeholder="Ingrese el nombre de la persona">
	      </div>
	      <div class="form-group">
	        <label for="email">Correo su Electrónico:</label>
	        <input type="email" class="form-control" name="correo" placeholder="Ingrese su correo electrónico">
	      </div>
	      <div class="form-group">
	        <label for="asunto">Asunto:</label>
	        <input type="text" class="form-control" name="asunto" placeholder="Ingrese el asunto del mensaje">
	      </div>
	      <div class="form-group">
	        <label for="mensaje">Mensaje:</label>
	        <textarea class="form-control" name="mensaje" rows="5" placeholder="Ingrese su mensaje"></textarea>
	      </div><br>
	      <button type="submit" class="btn btn-primary">Enviar Mensaje</button>
	    </form>
	  </div>




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