<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Municipalidad de Lima</title>
<!-- Link Favicon -->
<link rel="shortcut icon" href="img/Muni-lima.png" type="image/x-icon">
<!-- Link Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<style>
*{             
    padding: 0;
    margin: 0;
    box-sizing: border-box;
 }

	/* bloque carga */
#contenedor_carga{
    background-color: black;
    height: 100%;
    width: 100%;
    position: fixed;
    -webkit-transition:all 5s ease-in-out;
    -o-transition: all 5s ease-in-out;
    transition: all 5s ease-in-out;
    z-index: 10000;
}
#carga{
    border: 15px solid white;
    border-top-color: crimson;
    border-top-style: groove;
    height: 100px;
    width: 100px;
    border-radius: 100%;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    margin: auto;
    animation: girar 1.5s linear infinite;
    -o-animation: girar 1.5s linear infinite;
    animation: girar 1.5s linear infinite;
}
/* blqoue key frames */
@keyframes girar {
    from{transform: rotate(0deg);}
    to{transform: rotate(360deg);}
}
/* fin blque key frames */

/* Estilos extras*/
.secsion-punto{
    font-size: 4rem;
    font-weight: 300;
    color: black;
    margin-bottom: 10px;
    text-transform: uppercase;
    letter-spacing: .2rem;
    text-align: center;
}
.secsion-punto span{
    color: crimson;
}
.container{
    min-height: 100vh;
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    position: relative;
    z-index: 2;
}
video{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
}
.cta{
	text-decoration: none;
}
/*Fin Estilos extras*/
/* secsion hero */ 
#hero::after{
    content: "";
    position: absolute;
    left: 0;
    top: 0;
    height: 100%;
    width: 100%;
    background-color: black;
    opacity: .5;
    z-index: 1;
}
#hero .hero{
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 50px;
    justify-content: flex-start;
}
#hero h1{
    display: block;
    width: fit-content;
    font-size: 4rem;
    position: relative;
    color: transparent;
    animation: text_reveal .5s ease forwards;
    animation-delay: 1ss;
}
#hero h1:nth-child(1){
    animation-delay: 6s;
}
#hero h1:nth-child(2){
    animation-delay: 7s;
}
#hero h1:nth-child(3){
    animation: text_reveal_name .5s ease forwards;
    animation-delay: 8s;
}

#hero h1 span{
    position: absolute;
    top: 0;
    left: 0;
    height: 100%;
    width: 0;
    background-color: crimson;
    animation: text_reveal_box 1s ease;
    animation-delay: .5s;
}
#hero h1:nth-child(1) span{
    animation-delay: 5.5s;
}
#hero h1:nth-child(2) span{ 
    animation-delay: 6.5s;
}
#hero h1:nth-child(3) span{
    animation-delay: 7.5s;
}
.cta{
    display: inline-block;
    padding: 10px 30px;
    color: crimson;
    background-color: transparent;
    border: 2px solid crimson;
    font-size: 2rem;
    text-transform: uppercase;
    letter-spacing: .1rem;
    margin-top: 30px;
    transition: .3s ease;
    transition-property: background-color, color;
}
.cta:hover{
    color: white;
    background-color: crimson;
}
/*Fin secsion hero */

/* key frames del Letras*/ 
@keyframes text_reveal_box{
    50%{
    width: 100%;
    left: 0;
    }
    100%{
        width: 0%;
        left: 100%;
    }
}
@keyframes text_reveal{
    100%{
        color:white;
    }
}
@keyframes text_reveal_name{
    100%{
        color:crimson;
        font-weight: 500;
    }
}
/*fIN SECSION KEY FRAMES */


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
	<!--Carga-->
    <div id="contenedor_carga">
        <div id="carga"></div>
    </div>
    <!--Carga-->
    
    <!--Hero secsion-->
    <section id="hero">
        <div class="hero container">
            <div>
                <h1>SOMOS,<span></span></h1> 
                <h1>LA MUNICIPALIDAD<span></span></h1>
                <h1>!DE LIMA¡<span></span></h1>
                <a href="Login.jsp" type="button" class="cta">INGRESAR!!</a>
            </div>
        </div>
        <!--La eqiqueta *loop* sirve para que el video se reprodusca varias veces como un bucke-->
        <video muted autoplay loop>
            <source src="img/Video-Lima.mp4" type="video/mp4">
        </video>
    </section>
    <!--Fin Secsion Hero-->

	<!--Musica de Fondo-->
    <audio id="musica">
        <source src="../audio/The-Hills.mp3" type="audio/mpeg">
    </audio>

	<!-- INICIO FOOTER -->
	<footer class="footer d-print-none" style="--bgImgURL:url('https://www.munlima.gob.pe/wp-content/themes/mml/assets/images/bg_footer.jpg');">
		<div class="container1">
			<div class="row">
	      		<div class="col-md-3">
	<!-- Inicio Footer Imagen-->
	        		<div class="mb-4">
	          			<a href="#" >
	          				<img width="512" height="212" src="img/Muni-lima.png" >
	          			</a>
	          		</div>
	      		</div>
	<!-- Fin Footer Imagen -->
	
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
	<!-- FIN FOOTER -->


<!-- libreria JS general -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<!-- Scrip JS Boostrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<!-- librerias de la tabla "datatable" -->	
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>	
<!-- libreria para validar -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>

<!-- Scrip para Carga -->
<script>
//Asiendo desaparecer la carga cuando el contenido este cargado 
window.onload=function(){
    var contenedor= document.getElementById('contenedor_carga');
    
    contenedor.style.visibility='hidden';
    contenedor.style.transition=("all 5s ease-in-out").opacity='0';
}
</script>
</body>
</html>