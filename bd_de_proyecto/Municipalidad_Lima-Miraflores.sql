-- CREAR BASE DE DATOS
CREATE DATABASE Municipalidad_Lima
use Municipalidad_Lima;

/*Tabla 1*/
create table tipo_Autorizacion
(
 cod_Autorizacion int primary key auto_increment,
 tipo_Licencia varchar(100),
 tipo_Tramite varchar(100)
);
insert into tipo_Autorizacion values(null, 'INDETERMINADA', 'SOLO LICENCIA DE FUNCIONAMIENTO');

/*Tabla 2*/
create table identificacion_Solicitante
(
 cod_identificacion int primary key auto_increment,
 tipo_contribuyente varchar(100),
 num_ruc int,
 razon varchar(100),
 inicio_actividad date, 
 numero_dni int,
 contibuyente varchar(80),
 estado_contribuyente varchar(80),
 fecha_inscripcion date,
 emicion_elec varchar(100), 
 direccion_notificacion varchar(150),
 distrito_noti varchar(150),
 correo_elec varchar(150),
 telefono int,
 cod_Autorizacion int,
 foreign key (cod_Autorizacion) references tipo_Autorizacion(cod_Autorizacion)
);
insert into identificacion_Solicitante
values (null, 'PERSONA NATURAL', 20603166001, 'Aaron Mayhua Najarro', '2023-05-05', 71176760, 'HABIDO', 'ACTIVO', '2023-05-05', 'Recibo por Honorarios', 'AV.Santa Cruz San Isidro', 'San Isidro', 'aaronmayhuanajarro@gmail.com', 968120716, 1);

-- Modificar tipo de dato del campo num_ruc a int
alter table identificacion_Solicitante
modify column num_ruc int;

-- Modificar tipo de dato del campo numero_dni a int
alter table identificacion_Solicitante
modify column numero_dni int;

-- Modificar tipo de dato del campo telefono a int
alter table identificacion_Solicitante
modify column telefono int;
-- alterando tabla de tipo int para que pueda almacenar mas  numero enteros
alter table identificacion_Solicitante modify column num_ruc bigint;
alter table identificacion_Solicitante modify column numero_dni bigint;
alter table identificacion_Solicitante modify column telefono bigint;


/*Tabla 3*/
create table datos_Establecimiento
(
 cod_datos_Establecimiento int primary key auto_increment,
 ubicacion_negocio varchar(180),
 area_utilizada char(50), 
 capacidad_aforo char(20),
 antiguedad char(30), 
 nom_comercial varchar(50), 
 num_pisos int,
 referencia varchar(100),
 cod_identificacion int,
 foreign key (cod_identificacion) references identificacion_Solicitante(cod_identificacion)
);
-- Modificar tipo de dato del campo 
alter table datos_Establecimiento
modify column area_utilizada int;

alter table datos_Establecimiento
modify column antiguedad int;

alter table datos_Establecimiento
modify column capacidad_aforo int;

alter table datos_Establecimiento
modify referencia varchar(5000);
insert into datos_Establecimiento values(null,'CIBERTEC, Avenida Carlos Izaguirre, Independencia',50,20,30,'OG-ARDO23PR',2,'Sigue de frente hasta llegar al ovalo o plaza vea de izaguirre y despues subir unas cuadras habra un letrero',1);


/*Tabla 4*/
create table actividad_Economica
(
 cod_actividad_economica int primary key auto_increment,
 giro varchar(100),
 descripcion varchar(150),
 actividad_comercial varchar(100),
 cod_datos_Establecimiento int,
 foreign key (cod_datos_Establecimiento) references datos_Establecimiento(cod_datos_Establecimiento)
);
insert into actividad_Economica values(null,'G-055','Otras actividades de servicios','Venta de accesorios Celulares',1);

/*Tabla 5*/
create table datos_Adicionale_Negocio(
 cod_datos_adicionales int primary key auto_increment,
 cantidad_empleados_masculino int,
 cantidad_empleados_femenino int,
 cod_actividad_economica int,
 foreign key (cod_actividad_economica) references actividad_Economica(cod_actividad_economica)
);
insert into datos_Adicionale_Negocio values(null,2,1,1);

/*Tabla 6*/
create table representante_Legal
(
 cod_datos_adicionales int primary key auto_increment,
 repre_persona_natural varchar(10),
 foreign key (cod_datos_adicionales) references datos_Adicionale_Negocio(cod_datos_adicionales)
);
insert into representante_Legal values(null,'SI');

/*Selecsionando todas las tablas*/
-- Tabla tipo_Autorizacion
select * from tipo_Autorizacion;

-- Tabla identificacion_Solicitante
select * from identificacion_Solicitante;

-- Tabla datos_Establecimiento
select * from datos_Establecimiento;

-- Tabla actividad_Economica
select * from actividad_Economica;

-- Tabla datos_Adicionale_Negocio
select * from datos_Adicionale_Negocio; 

-- Tabla representante_Legal
select * from representante_Legal;

-- Tabla de Pago
select * from Pago;

/*Insertando registros en la tabla tipo_Autorizacion*/
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','LICENCIA DE FUNCIONAMIENTO MAS AUTORIZACION DE ANUNCIO PUBLICITARIO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','LICENCIA DE FUNCIONAMIENTO MAS AUTORIZACION DE ANUNCIO PUBLICITARIO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','LICENCIA DE FUNCIONAMIENTO MAS AUTORIZACION DE ANUNCIO PUBLICITARIO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','LICENCIA DE FUNCIONAMIENTO MAS AUTORIZACION DE ANUNCIO PUBLICITARIO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','LICENCIA DE FUNCIONAMIENTO MAS AUTORIZACION DE ANUNCIO PUBLICITARIO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','LICENCIA DE FUNCIONAMIENTO MAS AUTORIZACION DE ANUNCIO PUBLICITARIO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','LICENCIA DE FUNCIONAMIENTO MAS AUTORIZACION DE ANUNCIO PUBLICITARIO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','LICENCIA DE FUNCIONAMIENTO MAS AUTORIZACION DE ANUNCIO PUBLICITARIO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','LICENCIA DE FUNCIONAMIENTO MAS AUTORIZACION DE ANUNCIO PUBLICITARIO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','LICENCIA DE FUNCIONAMIENTO MAS AUTORIZACION DE ANUNCIO PUBLICITARIO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','LICENCIA DE FUNCIONAMIENTO MAS AUTORIZACION DE ANUNCIO PUBLICITARIO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','LICENCIA DE FUNCIONAMIENTO MAS AUTORIZACION DE ANUNCIO PUBLICITARIO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','LICENCIA DE FUNCIONAMIENTO MAS AUTORIZACION DE ANUNCIO PUBLICITARIO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','LICENCIA DE FUNCIONAMIENTO MAS AUTORIZACION DE ANUNCIO PUBLICITARIO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','LICENCIA DE FUNCIONAMIENTO MAS AUTORIZACION DE ANUNCIO PUBLICITARIO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');
insert into tipo_Autorizacion values(null,'INDETERMINADA','SOLO LICENCIA DE FUNCIONAMIENTO');

/*Insertando registros en la tabla identificacion_Solicitante*/
insert into identificacion_Solicitante
values (null, 'PERSONA NATURAL', 25412589657, 'Aaron Mayhua Najarro', '2023-05-05', 71176760, 'HABIDO', 'ACTIVO', '2023-05-05', 'Recibo por Honorarios', 'AV.Santa Cruz San Isidro', 'San Isidro', 'aaronmayhuanajarro@gmail.com', 968120716, 1);
insert into identificacion_Solicitante
values (null, 'PERSONA JURIDICA', 20603166001, 'Neyeli Yarlequee', '2000-02-02', 25458758, 'HABIDO', 'ACTIVO', '2000-02-02', 'Boleta de Venta', 'Jiron Ayacucho 851', 'Comas', 'zatugod_rey@gmail.com', 924521025, 2);
insert into identificacion_Solicitante
values (null, 'PERSONA JURUDICA', 10255245857, 'Zamanta Guerrero', '2014-02-01', 24525874, 'HABIDO', 'ACTIVO', '2014-02-01', 'Boleta de Venta', 'AV.nestor gambeta', 'San Miguel', '658574sa@gmail.com', 985521475, 3);
insert into identificacion_Solicitante
values (null, 'PERSONA NATURAL', 12002648521, 'Sofia Gatelu', '2023-10-09', 52145587, 'HABIDO', 'DESACTIVO', '2023-10-09', 'Boleta de Venta', 'jIRON CCUSCO', 'Rimac', 'HatakeKakashi@gmail.com', 985230012, 4);
insert into identificacion_Solicitante
values (null, 'PERSONA NATURAL', 10000254852, 'Esteban Mayhua Najarro', '1999-05-01', 25412254, 'HABIDO', 'ACTIVO', '1999-05-02', 'Factura', 'Santa rosa 125', 'Magdalena del Mar', 'TulokitoPkmz@hotmail.com', 966310025, 5);
insert into identificacion_Solicitante
values (null, 'PERSONA JURIDICA', 20112587521, 'Messi Curtua Benzame', '2017-11-25', 25415258, 'HABIDO', 'ACTIVO', '2017-11-25', 'Factura', 'Calle los alamos madrid', 'Miraflores', 'Sebastian52@gmail.com', 985520015, 6);
insert into identificacion_Solicitante
values (null, 'PERSONA NATURAL', 20155236545, 'Hashirama Uchiha', '2023-10-25', 32012254, 'HABIDO', 'DESACTIVO', '2023-10-25', 'Recibo por Honorarios', 'Calle los alamos 20005', 'San Isidro', 'chanteduri@gmail.com', 988520123, 7);
insert into identificacion_Solicitante
values (null, 'PERSONA JURIDICA', 25520254215, 'Niki Jan La famaStar', '2020-09-11', 45225485, 'HABIDO', 'ACTIVO', '2020-09-11', 'Factura', 'AV.las fresias 254', 'Lince', 'tugatitaPkmz@gmail.com', 988500125, 8);
insert into identificacion_Solicitante
values (null, 'PERSONA NATURAL', 22001528744, 'Ivette Soraida', '2022-01-05', 12578854, 'HABIDO', 'ACTIVO', '2022-01-05', 'Boleta de Venta', 'San bartolo 852', 'Breña', 'katherine5@gmail.com', 996631205, 9);
insert into identificacion_Solicitante
values (null, 'PERSONA NATURAL', 10045877522, 'Darlin Mendoza Cayetano', '2021-04-02', 20015248, 'HABIDO', 'ACTIVO', '2021-04-02', 'Boleta', 'Calle Miguel Grau', 'Los Olivos', 'mamisda@gmail.com', 996201587, 10);
insert into identificacion_Solicitante
values (null, 'PERSONA NATURAL', 12158455555, 'Grecia Quecara', '2020-04-02', 20015248, 'HABIDO', 'NO ACTIVO', '2020-04-02', 'Boleta', 'Calle messii', 'Miraflores', 'munimiraflores@gmail.com', 968752158, 11);

-- 
insert into identificacion_Solicitante values(null,'PERSONA NATURAL', 206098955, 'Empresa XZ', '2023-01-01', 31660012, 'Lorena Benites', 'HABIDO', '2023-01-01', 'ACTIVO', 'Av. Arequipa 123', 'Miraflores', 'Lorena1@gmail.com', 987456321, 11);
insert into identificacion_Solicitante values(null,'PERSONA NATURAL', 206038845, 'AC Corporation', '2021-02-01', 84518514, 'Abigail ruiz', 'HABIDO', '2021-02-01', 'DESACTIVO', 'Jr. Puno 456', 'Cusco', 'Abigail@gmail.com', 956321478, 12);
insert into identificacion_Solicitante values(null,'PERSONA NATURAL', 205165211, 'Tienda Pedrito', '2020-03-01', 51845154, 'Pedro Lopez', 'HABIDO', '2020-03-01', 'ACTIVO', ' Av. Larco 789', 'Miraflores', 'pedrito@gmail.com', 951236487, 13);
insert into identificacion_Solicitante values(null,'PERSONA NATURAL', 225165121, 'Restaurante Casa', '2019-04-01', 56464564, 'Alfonso ramires', 'HABIDO', '2019-04-01', 'ACTIVO', 'Calle Lima 234', 'Lima', 'alfonso@gmail.com', 958746231, 14);
insert into identificacion_Solicitante values(null,'PERSONA NATURAL', 242156151, 'Cevicheria SA', '2018-05-01', 64578766, 'Nikola de las Casas', 'HABIDO', '2018-05-01', 'ACTIVO', 'Av. Los Incas 567', ' San Borja', 'nikolas@gmail.com', 965123478, 15);
insert into identificacion_Solicitante values(null,'PERSONA NATURAL', 289465212, 'Consultoria Global', '2012-06-01', 67768766, 'Maria Flores', 'HABIDO', '2012-06-01', 'DESACTIVO', 'Jr. Huancayo 890', 'San Isidro', 'maria@gmail.com', 916253874, 16);
insert into identificacion_Solicitante values(null,'PERSONA NATURAL', 268484888, 'Tiena DAN', '2015-07-01', 78666677, 'Shawn Mendes', 'HABIDO', '2015-07-01', 'ACTIVO', ' Av. Salaverry 1234', 'Jesús María', 'Shawn@gmail.com', 978124536, 17);
insert into identificacion_Solicitante values(null,'PERSONA NATURAL', 289458485, 'Pablito Sac', '2023-08-01', 68768766, 'Camila Garcia', 'HABIDO', '2023-08-01', 'DESACTIVO', 'Calle Tacna 5678', 'Miraflores', 'CamilaC@gmail.com', 961347285, 18);
insert into identificacion_Solicitante values(null,'PERSONA NATURAL', 259845848, 'Empresa WQ', '2023-09-01', 78737367, 'Vannessa Rosses', 'HABIDO', '2023-09-01', 'ACTIVO', ' Jr. Ayacucho 9012', 'Miraflores', 'Vannessa@gmail.com', 9012345678, 19);
insert into identificacion_Solicitante values(null,'PERSONA NATURAL', 204158048, 'ABC Corporation', '2005-10-01', 61515155, 'Valeria Casas', 'HABIDO', '2005-10-01', 'ACTIVO', 'Av. Grau 3456', 'Miraflores', 'valeria@gmail.com', 9452546355, 20);
--

/*Generand join entre la tabla  "tipo_Autorizacion" y "identificacion_Solicitante" para listar*/
select s.cod_identificacion, s.tipo_contribuyente, s.num_ruc, s.razon, s.inicio_actividad, s.numero_dni, s.fecha_inscripcion, s.emicion_elec,  s.direccion_notificacion, s.distrito_noti, s.correo_elec, s.telefono, t.tipo_Tramite from identificacion_Solicitante s join tipo_Autorizacion t on s.cod_Autorizacion=t.cod_Autorizacion;



/*Tablas para Login*/
DROP TABLE IF EXISTS `tb_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_menu` (
  `cod_men` int(11) NOT NULL AUTO_INCREMENT,
  `des_men` varchar(30) DEFAULT NULL,
  `url_men` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`cod_men`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menu`
--

LOCK TABLES `tb_menu` WRITE;
/*!40000 ALTER TABLE `tb_menu` DISABLE KEYS */;
INSERT INTO `tb_menu` VALUES (1,'Tramites y Servicios','LicenciaFuncionamiento.html'),(2,'Caja','Caja.jsp'),(3,'Listado Caja','ServletCaja?accion=listar'),(4,'ADA','ADA.jsp'),(5,'Listado ADA','ServletAda?accion=listar'),(6,'Sistema PACO','PACO.jsp'),(7,'Listado PACO','ServletPaco?accion=listar'),(8,'Informacion Solicitante','ServletSolicitante?accion=listar'),(9,'Informacio N Solicitante','ServletEstablecimiento?accion=listar'),(10,'Observaciones','Observaciones.html'),(11,'RSG','ServletRsg?accion=listar'),(12,'RLIC','ServletRlic?accion=listar'),(13,'Notificar','NotificarADA.html'),(14,'Observaciones','ObservacionesTecnicoA.html'),(15,'Pago del Solicitante','ServletPago?accion=listar');
/*!40000 ALTER TABLE `tb_menu` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_usuario` (
  `cod_usu` int(11) NOT NULL AUTO_INCREMENT,
  `log_usu` varchar(15) DEFAULT NULL,
  `pas_usu` varchar(15) DEFAULT NULL,
  `nom_usu` varchar(30) DEFAULT NULL,
  `ape_usu` varchar(50) DEFAULT NULL,
  `eda_usu` smallint(6) DEFAULT NULL,
  `est_usu` char(1) DEFAULT NULL,
  PRIMARY KEY (`cod_usu`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (1,'horacio','kein','Aaron','Mayhua Najarro',18,'1'),(2,'lorena','lorena','Lorena','Benites Cubas',18,'1'),(3,'diego','diego','Diego','Depaz Ramirez',18,'1'),(4,'david','david','David','Sánchez Quicaño',18,'1'),(5,'keysi','keysi','Keysi','Flores León',18,'1'),(6,'cajero','cajero','Joel','Gutierres Najarro',29,'1'),(7,'encargadoVen','encargadoVen','Sebastian','Vega Gomez',23,'1'),(8,'inspectorT','inspectorT','Hector','Olano Mesias',32,'1'),(9,'subgerente','subgerente','Cristina','Mancilla Cristina',25,'1'),(10,'tecnicoAdmi','tecnicoAdmi','Santiago','Espinoza de la Cruz',35,'1');
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `tb_acceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_acceso` (
  `cod_men` int(11) NOT NULL,
  `cod_usu` int(11) NOT NULL,
  PRIMARY KEY (`cod_men`,`cod_usu`),
  KEY `cod_usu` (`cod_usu`),
  CONSTRAINT `tb_acceso_ibfk_1` FOREIGN KEY (`cod_men`) REFERENCES `tb_menu` (`cod_men`),
  CONSTRAINT `tb_acceso_ibfk_2` FOREIGN KEY (`cod_usu`) REFERENCES `tb_usuario` (`cod_usu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_acceso`
--

LOCK TABLES `tb_acceso` WRITE;
/*!40000 ALTER TABLE `tb_acceso` DISABLE KEYS */;
INSERT INTO `tb_acceso` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(3,1),(3,2),(3,3),(3,4),(3,5),(15,6),(2,6),(3,6),(3,7),(4,7),(5,7),(13,7),(5,8),(6,8),(7,8),(8,8),(9,8),(10,8),(6,9),(11,9),(12,9),(14,10),(11,10),(12,10);
/*!40000 ALTER TABLE `tb_acceso` ENABLE KEYS */;
UNLOCK TABLES;


/*Creando select para logearnos*/
select * from tb_usuario where log_usu='horacio' and pas_usu='kein';

/*Creando select listar todos los Menu del Usuario*/
select m.cod_men,m.des_men,m.url_men from tb_acceso a join tb_menu m on a.cod_men=m.cod_men where a.cod_usu=1;


/*Tablas para CRUD correspondientes*/
/*Tabla para sistema de PAGO*/
create table sistema_Caja (
  cod_pago int primary key auto_increment,
  num_comprobante varchar(7),
  señores varchar(100),
  direcsion varchar(100),
  docum_indetidad bigint,
  fecha date,
  cantidad int,
  descripcion varchar(100),
  total double 
);

select * from sistema_Caja;
insert into sistema_Caja values(null, 'F001520','Aaaron Mayhua Najarro','Av.Santa Cruz 466',20552254587,'2022-02-15',1,'LICENCIA DE FUNCIONAMIENTO',40.00);

/*Tabla para sistema de exxpediente ADA*/
create table ada (
  cod_ada int primary key auto_increment,
  numero_expediente bigint,
  responsable varchar(100),
  dni bigint,
  monto double,
  fecha_recepcion date,
  estado varchar(100),
  observaciones varchar(100)
);
/*Agregador campor fecharevision en la tabla "ada"*/
alter table ada
add fecha_revision date;

insert into ada VALUES (null, 2023002012, 'Horacio kein Briytiago', 71176760, 100.00, '2023-01-01', 'pendiente de revision', 'Sin Observaciones','2023-05-10');
select * from ada;

/*Tabla para elaboracion de Itec*/
create table ITEC (
  id_informe int primary key auto_increment,
  fecha_emision date,
  nom_proyecto varchar(100),
  ubicacion varchar(100),
  inspector_tecnico varchar(100),
  subgerente varchar(100),
  fecha_inspeccion date,
  aspectos_evaluados varchar(100),
  cumplimiento varchar(50),
  observaciones varchar(100)
);
select * from ITEC;
insert into ITEC values(null,'2023-05-20','Obtencion de Licencia de Funcionamiento','Miraflores Lima Peru','Aaron Funnaci Segundo','Ivete Cossio','2023-05-21','Ubiacion e Infraestructura','CUMPLE','Ninguna');


/*RSG*/
create table RSG (
 cod_rsg int primary key auto_increment,
 titulo_resolucion varchar(80),
 descripcion varchar(100),
 numero_resolucion bigint,
 responsable varchar(80),
 departamento varchar(100),
 fecha_emision date,
 firma_subGerente varchar(80),
 fecha_firma date,
 sellado_img longblob,
 nombre_sellado varchar(100)
);
select * from RSG;

/*RLIC*/
create table RLIC(
 cod_rlic int primary key auto_increment,
 numero_ruc bigint,
 razon_social varchar(80),
 inicio_actividad_comercial date,
 actividad_comercial varchar(150),
 nombre_comercial varchar(150),
 direcsion_negocio varchar(150),
 distrito varchar(80),
 tipo_licencia varchar(80),
 firma_subGerente varchar(80),
 fecha_firma date,
 sellado_img longblob,
 nombre_sellado varchar(100)
);
select * from RLIC;

/*Tabla para formulario SECRETARIA GENEREAL ADA*/
create table formulario(
 cod_formulario int primary key auto_increment,
 destinario varchar(80),
 correo varchar(100),
 asunto varchar(80),
 mensaje varchar(1000)
);
select * from formulario;

/*Subir Pago*/
create table Pago(
 cod_pago int primary key auto_increment,
 nombre varchar(80),
 dni bigint,
 sellado_img longblob,
 nombre_sellado varchar(100)
);
select * from Pago;


