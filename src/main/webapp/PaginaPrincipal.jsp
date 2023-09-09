
<!-- Indicar con que sub libreria de JSTL va a trabajar la pagina "CORE" -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pagina Principal</title>
<!-- Link Favicon -->
<link rel="shortcut icon" href="img/Muni-lima.png" type="image/x-icon">
<!-- Link Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<style>
	/*Inicio Estilos Generales*/
	*{
	padding: 0;
    margin: 0;
	box-sizing: border-box;
	}
	/*Fin Estilos Generales*/

	/*Inicio Estilos Nav*/
	nav.sticky {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	z-index: 9999;
	background-color: #DCDCDC; /*rgba(255, 255, 255, 0.8)*/
	opacity: 0.8;
	}
	/*Fin Estinos Nav*/
	
	/*Inicio Estilos Carrusel*/
	#carouselExampleRide{
	height:auto;
	}
	
	#carouselExampleRide img{
	height:550px;
	}
	
	.lineagris{
	height:32px;
	background-color: rgb(234, 234, 234  )  ;
	}
	
	.noticia{
	display:flex;
	flex-direction:wrap;
	width:100% ;
	height:400px;
	background:rgb(201, 201, 201);
	justify-content: center;
	align-items: center;
	}
	
	.noticia .carousel-item img{
	width:auto;
	height: 365px;
	}
	
	.carousel-item {
	text-align: center;	
	}
	.carruseComuni .carousel-item {
	width:100%;
	height: 1000px;	
	}
	.carruseComuni .carousel-item img {
	width:900px;
	height: 850px;
	}
	
	.ccarruseComuni{
	justify-content: center;
	align-items: center;
	}
	
	.carruselN{
	width: 45%;
	padding: 15px;
	}
	
	.efecto-brul{
	backdrop-filter:blur(5px);
	}
	/*Fin Estilos Carrusel*/

	/*Inicio Estilos Reutilizables*/
	h5{
	height: 50px;
	color:white;
	background-color:rgba(0, 0, 0, 0.587);

	}
	h1{
	color: white;
	margin: 20px 0;
	}
	/*Fin Estilos Reutilizables*/	

	/*Inicio Estilos Footer*/
	footer{
	padding: 5rem;
	}
	footer a{
	color:  rgb(19, 43, 111);
	font-size: 0.9rem;
	}
	footer img{
	width: 200px;
	
	height: 100px
	}
	footer h6{
	font-size:1rem;
	color: rgb(1, 18, 66);
	}	
	/*Fin Estilos Footer*/
</style>
<body>
	<!-- CONTENEDOR DEL NAVEGADOR -->
	<nav class="navbar navbar-expand-lg">
  		<div class="container-fluid">
  			<!-- INICIO ENLACES -->
  			<div class="col-sm-2">
      			<a href="#"><img src="img/Muni-lima.png" alt="Logo" class="img-fluid" width="40%"></a>
    		</div>    			    			
    			<div class="collapse navbar-collapse" id="navbarSupportedContent">
      				<ul class="navbar-nav me-auto mb-2 mb-lg-0" style="padding-left: 30px;">
					  <c:forEach items="${sessionScope.menus}" var="row"> 
					    <li class="nav-item" style="margin-right: 30px;">
					      <a class="dropdown-item text-muted" target="_blank" href="${row.url}">${row.descripcion}</a>
					    </li>
					  </c:forEach>	
					</ul>
					
			<div class="flex" style="width:200px!important;padding-top: 10px;font-weight:bold ">
		    	<p class="text-black">Usuario : ${sessionScope.datosUsuario}</p>
		    </div>		

      
      	
	<!-- INICIO BUSCADOR -->
      				<form class="d-flex" role="search" action="ServletUsuario?accion=CerrarSession" method="post">
        				<button class="btn btn-outline-danger" type="submit">Cerrar Session</button>
      				</form>
	<!-- FIN BUSCADOR -->
    			</div>
  		</div>
	</nav>	
	<!-- FIN CONTENEDOR DEL NAVEGADOR -->
	  
	<!-- INICIO DE CARRUSEL -->
	<div id="carouselExampleRide" class="carousel slide" data-bs-ride="carousel">
 		<div class="carousel-inner">
    		<div class="carousel-item active">
      			<img src="img/carrusel.png" class="d-block w-100" height="500px" alt="...">
    		</div>
    		
	    	<div class="carousel-item">
	      		<img src="img/carrusel2.png" class="d-block w-100" height="500px" alt="...">
	    	</div>
    	
	    	<div class="carousel-item">
	      		<img src="img/carrusel3.png" class="d-block w-100" height="500px" alt="...">
	    	</div>
    	
	    	<div class="carousel-item">
	      		<img src="img/carrusel4.png" class="d-block w-100" height="500px" alt="...">
	    	</div>
	  	</div>
	  
	<!-- INICIO BOTONES CARRUSEL -->
		<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleRide" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
    		<span class="visually-hidden">Previous</span>
  		</button>
  		
  		<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleRide" data-bs-slide="next">
    		<span class="carousel-control-next-icon" aria-hidden="true"></span>
    		<span class="visually-hidden">Next</span>
  		</button>
  		
  		<div class="carousel-caption d-none d-md-block">
    		<button type="button" class="btn btn-secondary position-absolute start-0 bottom-0" style="background-color:#00A39C;color:#fff;">Leer mas</button>
  		</div>
	<!-- FIN BOTONES CARRUSEL -->

	</div>
	<!-- FIN DE CARRUSEL -->
	  
	<!-- INICIO DEL ROW  -->
	<div class="container px-4 text-center">
		<div class="row gx-5 d-flex flex-row">
	    	<div class="col">
	      		<div class="p-3">
	        		<a href="" target="_blank">
	          			<img src="img/salud.png" alt="">
	        		</a>
	      		</div>
	    	</div>
	    	
		    <div class="col">
		      	<div class="p-3">
		        	<a href="" target="_blank">
		          		<img src="img/tramites-servicios.png" alt="">
		        	</a>		      
		      	</div>
		    </div>
		    
		    <div class="col">
		      	<div class="p-3">
		        	<a href="" target="_blank">
		          		<img src="img/transporte.png" alt="">
		        	</a>
		      	</div>
		    </div>
		    
		    <div class="col">
		      	<div class="p-3">
		        	<a href="#" target="_blank">
		          		
		        	</a>
		      	</div>
	    	</div>
	  	</div>
	</div>
	<!-- FIN DEL ROW  --> 
	
	<!-- INICIO NOTICIAS --> 
	<div class="noticia">
	<!-- INICIO PRIMER CARRUSEL NOTICIAS -->
		<div class="carruselN">
			<div id="carruselNoticias1" class="carousel slide" data-bs-ride="carousel">
			  	<div class="carousel-inner">
			    	<div class="carousel-item active" style="background: url(https://www.munlima.gob.pe/wp-content/uploads/2023/04/WhatsApp-Image-2023-04-21-at-6.02.38-PM-scaled.jpeg)" >
			    		<div class="efecto-brul">
			      			<img src="img/extra.jpeg"  alt="...">
			      				<div class="carousel-caption d-none d-md-block">
			        				<h5 class="text-center">Tachuris: El ave 7 colores de pantanos de villa dejará mensaje de reflexión en el Día de la Tierra</h5>
			        					<button class="btn btn-primary" type="submit">Leer mas</button>
			      				</div>
			      		</div>
			    	</div>
			    
			    	<div class="carousel-item"style="background: url(https://www.munlima.gob.pe/wp-content/uploads/2023/04/WhatsApp-Image-2023-04-21-at-6.52.30-PM-scaled.jpeg)">
			    		<div class="efecto-brul">
			      			<img src="img/extra2.jpeg" alt="...">
			      				<div class="carousel-caption d-none d-md-block">
			        				<h5>Municipalidad de Lima presenta feria dulces peruanos en el centro histórico.</h5>
			         					<button class="btn btn-primary" type="submit" >Leer mas</button>
			      				</div>
			      		</div>
			    	</div>
			    
			    	<div class="carousel-item"style="background: url(https://www.munlima.gob.pe/wp-content/uploads/2023/04/WhatsApp-Image-2023-04-19-at-10.41.05-AM-scaled.jpeg)">
				    	<div class="efecto-brul">
				      		<img src="img/extra3.jpeg"  alt="...">
				      			<div class="carousel-caption d-none d-md-block">
				        			<h5>Dirección Regional de Educación de Lima Metropolitana (DREL) pasará a cargo de la Municipalidad de Lima</h5>
				        				<button class="btn btn-primary" type="submit">Leer mas</button>
				      			</div>
				    	</div>
			   		</div>
			   		
			     	<div class="carousel-item"style="background: url(https://www.munlima.gob.pe/wp-content/uploads/2023/04/WhatsApp-Image-2023-04-26-at-10.01.04-AM.jpeg)">
			     		<div class="efecto-brul">
			      			<img src="img/extra4.jpeg"  alt="...">
			      				<div class="carousel-caption d-none d-md-block">
			        				<h5>Danza, música y teatro en espacios públicos del Cercado de Lima</h5>
			        					<button class="btn btn-primary" type="submit">Leer mas</button>
			      				</div>
			      		</div>
			    	</div>
			    	
			     	<div class="carousel-item"style="background: url(https://www.munlima.gob.pe/wp-content/uploads/2023/04/WhatsApp-Image-2023-04-24-at-5.49.00-PM-scaled.jpeg)">
			     		<div class="efecto-brul">
			      			<img src="img/extra5.jpeg"  alt="...">
			      				<div class="carousel-caption d-none d-md-block">
			        				<h5>Municipalidad de Lima realiza "Feria Lima Emplea" por el día internacional del trabajo</h5>
			        					<button class="btn btn-primary" type="submit">Leer mas</button>
			      				</div>
			      		</div>
			    	</div>
			  </div>
	<!-- FIN PRIMER CARRUSEL NOTICIAS -->
	
	<!-- INICIO BOTONES PRIMER CARRUSEL -->
				<button class="carousel-control-prev" type="button" data-bs-target="#carruselNoticias1" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
				</button>
					
				<button class="carousel-control-next" type="button" data-bs-target="#carruselNoticias1" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
				</button>
	<!-- FIN BOTONES PRIMER CARRUSEL -->
				
			</div>
		</div>
			
	<!-- INICIO SEGUNDO CARRUSEL NOTICIAS -->
		<div class="carruselN">
			<div id="carruselNoticias2" class="carousel slide" data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active" style="background: url(https://www.munlima.gob.pe/wp-content/uploads/2023/04/WhatsApp-Image-2023-04-13-at-2.11.46-PM-1-scaled.jpeg)" >
				    	<div class="efecto-brul">
				      		<img src="img/extra6.jpeg"  alt="...">
				      			<div class="carousel-caption d-none d-md-block">
				        			<h5>Municipalidad de Lima integra centrales de videovigilancia de los 43 distritos de la capital</h5>
				        				<button class="btn btn-primary" type="submit">Leer mas</button>
				      			</div>
				      	</div>
				    </div>
				    
				    <div class="carousel-item"style="background: url(https://www.munlima.gob.pe/wp-content/uploads/2023/04/WhatsApp-Image-2023-04-13-at-3.53.26-PM-scaled.jpeg)">
				    	<div class="efecto-brul">
				      		<img src="img/extra7.jpeg" alt="...">
				      			<div class="carousel-caption d-none d-md-block">
				        			<h5>Música, balllet y danza urbana ofrece la Municipalidad de Lima este fin de semana</h5>
				         				<button class="btn btn-primary" type="submit" >Leer mas</button>
				      			</div>
				      	</div>
				    </div>
				    
				    <div class="carousel-item" style="background: url(https://www.munlima.gob.pe/wp-content/uploads/2023/04/WhatsApp-Image-2023-04-19-at-10.41.05-AM-scaled.jpeg)">
				    	<div class="efecto-brul">
				      		<img src="img/extra8.jpeg"  alt="...">
				      			<div class="carousel-caption d-none d-md-block">
				        			<h5>Dirección Regional de Educación de Lima Metropolitana (DREL) pasará a cargo de la Municipalidad de Lima</h5>
				        				<button class="btn btn-primary" type="submit">Leer mas</button>
				      			</div>
				    	</div>
				   </div>
				   
					<div class="carousel-item"style="background: url(https://www.munlima.gob.pe/wp-content/uploads/2023/04/WhatsApp-Image-2023-04-17-at-5.42.50-PM-scaled.jpeg)">
						<div class="efecto-brul">
				      		<img src="img/extra9.jpeg"  alt="...">
				      			<div class="carousel-caption d-none d-md-block">
				        			<h5>Con gran éxito se realizó la Etapa Previa Regional del Festival Pura Calle</h5>
				        				<button class="btn btn-primary" type="submit">Leer mas</button>
				      			</div>
				      	</div>
				    </div>
				    
				     <div class="carousel-item"style="background: url(https://www.munlima.gob.pe/wp-content/uploads/2023/04/WhatsApp-Image-2023-04-17-at-3.41.36-PM-scaled.jpeg)">
				     	<div class="efecto-brul">
				      		<img src="img/extra10.jpeg"  alt="...">
				      			<div class="carousel-caption d-none d-md-block">
				        			<h5>Colorido Pasacalle recorrió el Cercado de Lima</h5>
				        				<button class="btn btn-primary" type="submit">Leer mas</button>
				      			</div>
				      	</div>
				    </div>
				</div>
				
		<!-- INCIO BOTONES SEGUNDO CARRUSEL -->
				<button class="carousel-control-prev" type="button" data-bs-target="#carruselNoticias2" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				
				<button class="carousel-control-next" type="button" data-bs-target="#carruselNoticias2" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
				</button>
	<!-- FIN BOTONES SEGUNDO CARRUSEL -->
	
			</div>
		</div>
		
		<!-- FIN CARRUSEL NOTICIAS -->
	</div>
	  	<!-- FIN NOTICIAS --> 
	  
		<!-- INICIO CARRUSEL COMUNIDAD -->
		<div class="carruseComuni">
			<div id="Comunica" class="carousel slide" data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active" style="background: url(https://www.munlima.gob.pe/wp-content/uploads/2023/01/campanas-scaled.jpg)" >
						<h1 class="text-center">Campañas y convocatorias</h1>
							<a  href="#" class="text-decoration-none ">
								<img src="img/camapaña.png"  alt="...">
							</a>
					</div>
					    
					<div class="carousel-item"style="background: url(https://www.munlima.gob.pe/wp-content/uploads/2023/01/campanas-scaled.jpg)">
						<h1 class="text-center">Campañas y convocatorias</h1>
							<a  href="#" class="text-decoration-none ">
								<img src="img/camapaña2.jpeg"  alt="...">		      		    
						  	</a>
					</div>
				</div>	 
				      
				<button class="carousel-control-prev" type="button" data-bs-target="#Comunica" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				 	<span class="visually-hidden">next</span>
				 </button>
				 
				<button class="carousel-control-next" type="button" data-bs-target="#Comunica" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">next</span>
				</button>
			</div>
		</div> 
	<!-- FIN CARRUSEL COMUNIDAD -->
	  
	<!-- INICIO FOOTER -->
	<footer class="footer d-print-none" style="--bgImgURL:url('https://www.munlima.gob.pe/wp-content/themes/mml/assets/images/bg_footer.jpg');">
		<div class="container">
	    	<div class="row">
	      		<div class="col-md-3">
	<!-- Inicio Footer Imagen-->
	        		<div class="mb-4">
	          			<a href="#" >
	          				<img width="512" height="212" src="img/Muni-lima.png" >
	          			</a>
	          		</div>
	<!-- Fin Footer Imagen -->

	      		</div>
	
	<!-- Inicio Footer Enlaces -->
				<div class="col-md-4">
					<h6 class="mb-3">ENLACES IMPORTANTES</h6>
				  		<ul class="list-unstyled">
						    <li><a href="#" class="text-decoration-none ">Visita Lima</a></li>
						    <li><a href="#" class="text-decoration-none ">Movilidad Urbana</a></li>
						    <li><a href="#" class="text-decoration-none ">Seguridad Ciudadana</a></li>
						    <li><a href="#" class="text-decoration-none">SMIA</a></li>
						    <li><a href="#" class="text-decoration-none ">Parque de las leyendas</a></li>
						    <li><a href="#" class="text-decoration-none ">Circuito Mágico del Agua</a></li>
						    <li><a href="#" class="text-decoration-none ">Biblioteca Municipal</a></li>
						    <li><a href="#" class="text-decoration-none ">EMMSA</a></li>
						    <li><a href="#" class="text-decoration-none ">SAT</a></li>
						    <li><a href="#" class="text-decoration-none ">SERPAT</a></li>
				  		</ul>
				</div>
				
		      	<div class="col-md-2">
		        	<h6 class="mb-4">CONSULTAS EN LÍNEA</h6>
				  		<ul class="list-unstyled">
						    <li><a href="#" class="text-decoration-none ">SAT</a></li>
						    <li><a href="#" class="text-decoration-none ">SISOL Salud</a></li>
						    <li><a href="#" class="text-decoration-none ">Denuncias ambientales</a></li>
						    <li><a href="#" class="text-decoration-none">Monitoreo de calidad de aire</a></li>
						    <li><a href="#" class="text-decoration-none ">VIPA</a></li>
						    <li><h6 class="mb-6">EMPLEOS Y CONTRATACIONES</h6></li>
						    <li><a href="#" class="text-decoration-none ">Contrataciones CAS</a></li>
				  		</ul>
		      	</div>
		      	
		      	<div class="col-md-3">
					<h6 class="mb-4">CONTACTO Y RECLAMOS</h6>
				  		<ul class="list-unstyled">
						    <li><a href="#" class="text-decoration-none ">Denuncias ante OCI</a></li>
						    <li><a href="#" class="text-decoration-none ">Libro de reclamaciones</a></li>
						    <li><a href="#" class="text-decoration-none ">Correo electrónico</a></li>
						    <li><a href="#" class="text-decoration-none">Politica de Seguridad y Salud en el Trabajo</a></li>
						    <li><a href="#" class="text-decoration-none ">Politica de seguridad</a></li>
						    <li><a href="#" class="text-decoration-none ">Protección de datos personales</a></li>
						    <li><a href="#" class="text-decoration-none ">Biblioteca Municipal</a></li>
				  		</ul>
		      </div>
	<!-- Fin Footer Enlaces -->
	  
	<!-- Inicio Footer Direccion -->
				<div class="text-center mt-1 mb-3">
					<img src="img/ubicacion.png" alt="Ubicación" style="width: 15px; height: 15px">
				  		<a class="text-decoration-none" href="https://goo.gl/maps/1V88hbtHebp5Tvi77" target="_blank" rel="noreferrer noopener">Jirón de la Unión 300 - Jirón Conde de Superunda 141 - Cercado de Lima</a><span>---</span>
				  			<img src="img/telefono.png" alt="Teléfono" style="width: 15px; height: 15px">
				  				<span class="screen-reader-text">Telefono</span> 
				  					<a class="text-decoration-none" href="tel:016321300">632-1300</a>
				</div>
	<!-- Fin Footer Direccion -->

	</div>
	</div>
	</footer>





<!-- Inicio Script Desplazamiento NAV -->
<script>
	window.addEventListener("scroll", function() {
		var nav = document.querySelector("nav");
		nav.classList.toggle("sticky", window.scrollY > 0);
		});
</script>
<!-- Fin Script Desplazamiento NAV -->

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