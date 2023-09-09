<!-- Indicar con que sub libreria de JSTL va a trabajar la pagina "CORE" -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inicio Secsion</title>
<!-- Link Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</head>
<style>
body {
    margin: 0;
    padding: 0;
    background-image: url(img/Login.jpg);
    height: 100%;
    background-size: cover;
}
.formulario{
    position: absolute;
    top: 50%;
    left: 80%;
    transform: translate(-50%,-50%);
    width: 400px;
    border-radius: 10px;
    right: 0;
    background: transparent;
}
.formulario h1{
    text-align: center;
    padding: 0 0 20px 0;
    border-bottom:  1px solid white;
}
.formulario form{
    padding: 0 40px;
    box-sizing:border-box;
}
form .usuario{
    position: relative;
    border-bottom: 2px solid white;
    margin: 30px 0;
}
.usuario input{
    width: 100%;
    padding: 0 5px;
    height: 40px;
    font-size: 16px;
    border: none;
    background: none;
    outline: none;
}
.usuario label{
    position: absolute;
    top: 0%;
    left: 5px; 
    color: white;
    transform:  translateY(-50%);
    font-size: 16px;
    pointer-events: none;
    transition: .5s;
}
.usuario span::before{
    content: '';
    position: absolute;
    top: 40px;
    left: 0;
    width: 0%;
    height: 2px;
    background: crimson;
    transition: .5s;
}
.usuario input:focus ~ label,
.usuario input:focus ~ label{
    top:-5px;
    color: crimson;
}
.usuario input:focus ~span::before,
.usuario input:focus ~span::before{
    width: 100%;
}
.recordar{
    margin: -5px 0 20px 5px;
    color:crimson;
    cursor:  pointer;
}
input[type="submit"]{
    width:100%;
    height:50px;
    border: 1px solid;
    background: crimson;
    /*background: #F1C40F;*/
    border-radius: 25px;
    font-size: 18px;
    color: white;
    cursor: pointer;
    outline: none;
}
input[type="submit"]:hover{
    border-color: crimson;
    transition: .5s;
}
.registrarse{
    margin: 30px 0;
    text-align: center;
    font-size: 16px;
    color: black;
}
a{
    color:crimson;
    text-decoration: none;
}
a:hover{
    text-decoration: underline;
    text-decoration: none;
    color:white;
}
.registrarse a:hover{
    text-decoration: none;
    color: white;
}
/* arreglos */

/* colores para el formulario trasparente */
h1{
    color: white;
}
.registrarse{
    color: white;
}
/* cambiar color del imput */
input{
    color: white;
} 
.color1{
    color: crimson;
}
</style>

<body>
	<div id="contenedor">
    <div class="formulario">
    <c:if test="${param.logout!=null}">
    	<div class="alert alert-danger" role="alert">
		  Session Terminada
		</div>
	</c:if>	
    <c:if test="${param.error!=null}">
    	<div class="alert alert-danger" role="alert">
		  Session Invalida
		</div>
	</c:if>	
        <!--La Etiqueta span se usa para darle un color diferente a cada letra dentro del H1-->
        <h1><span class="color1">I</span>nicio de <span class="color1">S</span>esion</h1>
        <!--Usaremos el metodo (this) indicando su parametro-->
        <form id="frmlogueo" method="post" action="ServletUsuario?accion=iniciarSesion">
                <div class="usuario">
                    <input type="text"  name="usuario">  
                    <label>Nombre de usuario</label> 
                </div>
                <div class="usuario">
                    <input type="password"  name="clave">
                    <label>Contraseña</label>
                </div>
                <div class="recordar"><a href="#">¿Olvidaste tu contraseña?</a></div>
                <input type="submit" value="Iniciar">
                <div class="registrarse">
                    ¿Quiero hacer el?<a href="#" target="_blank"> Registro</a>
                </div> 
        </form>
    </div>
    </div>



<!-- libreria JS general -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<!-- Scrip JS Boostrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<!-- librerias de la tabla "datatable" -->	
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>	
<!-- libreria para validar -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>
</body>
</html>