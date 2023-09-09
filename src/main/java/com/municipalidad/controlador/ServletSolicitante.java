package com.municipalidad.controlador;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.municipalidad.dao.MySqlSolicitanteDAO;
import com.municipalidad.entidad.Solicitante;
import com.municipalidad.service.SolicitanteService;


@WebServlet("/ServletSolicitante")
public class ServletSolicitante extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//global
	private MySqlSolicitanteDAO daoSoclitante=new MySqlSolicitanteDAO();
	//global de listar
	private SolicitanteService servicio=new  SolicitanteService();
       
   
    public ServletSolicitante() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//recuperar el valor 
		String tip;
		tip=request.getParameter("accion");
		if(tip.equals("grabar"))
			grabar(request,response);
		else if(tip.equals("listar"))
			listarSolicitante(request,response);
		else if(tip.equals("eliminar"))
			eliminarSolicitante(request,response);
	}
	
	protected void grabar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//variables
		String tip_Contribuyente, numRuc, razonSocial, inicioActividad, numDni, condicionContribuynte, 
		estadoContribuyente, fechaInscripcion, sistemaComprobante, dirNotifi, distriNotifi, correo, telefono;
		//recuperando los valores
		tip_Contribuyente=request.getParameter("tipoContribuyente");
		numRuc=request.getParameter("numeroRuc");
		razonSocial=request.getParameter("razonSocial");
		inicioActividad=request.getParameter("inicioActividad");
		numDni=request.getParameter("numeroDni");
		condicionContribuynte=request.getParameter("contribuyente");
		estadoContribuyente=request.getParameter("estadoContribuyente");
		fechaInscripcion=request.getParameter("fechaInscripcion");
		sistemaComprobante=request.getParameter("emisionComprobante");
		dirNotifi=request.getParameter("direcsionNotificacion");
		distriNotifi=request.getParameter("distritoNotificacion");
		correo=request.getParameter("correoElectronico");
		telefono=request.getParameter("telefono");
		//creando objeto 
		Solicitante soc=new Solicitante();
		//seteando
		soc.setTipContribuyente(tip_Contribuyente);
		// si se trabaja con mas de 6 digitos tendra que ser un "long"
		if (numRuc != null && numRuc.length() == 11) {
			soc.setNumRuc(Long.parseLong(numRuc));
			} 
		else {}
		soc.setRazon(razonSocial);
		soc.setInicioActividad(Date.valueOf(inicioActividad));
		// si se trabaja con mas de 6 digitos tendra que ser un "long"
		if (numDni != null && numDni.length() == 8) {
			soc.setNumDni(Long.parseLong(numDni));
		} 
		else {}		
		soc.setContribuyente(condicionContribuynte);
		soc.setEstadoContribuyente(estadoContribuyente);
		soc.setFechaInscripcion(Date.valueOf(fechaInscripcion));
		soc.setEmicion(sistemaComprobante);
		soc.setDirecsionNotifi(dirNotifi);
		soc.setDistritoNotifi(distriNotifi);
		soc.setCorreo(correo);
		// si se trabaja con mas de 6 digitos tendra que ser un "long"
		if (telefono != null && telefono.length() == 9) {
			soc.setTelefono(Long.parseLong(telefono));
		}
		else {}
		//invocar metodo
		daoSoclitante.registrar(soc);
		/* Invocar el método listarSolicitante() para actualizar la lista de solicitantes*/
		/*listarSolicitante(request, response);*/
		//redirecsionar
		response.sendRedirect("DatosEstablecimiento.jsp");
	}
	
	protected void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//el metodo lista no se invoca en ningun parte por eso va en el SERVICE
	}


	private void eliminarSolicitante(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String cod=request.getParameter("codigoEliminar");
		int salida=new SolicitanteService().eliminarporID(Integer.parseInt(cod));
		if(salida>0)
			response.sendRedirect("IdentificacionSolicitante.jsp?MENSAJE=Eliminacion Completada");
		else 
			response.sendRedirect("IdentificacionSolicitante.jsp?MENSAJE=Eliminacion Fallida");
	}


	private void listarSolicitante(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//creando 2 atributos
		request.setAttribute("solicitante", servicio.listarSolicitante()); // este va a la tabla 
		request.setAttribute("comerciante", servicio.listarComerciante()); // este va al combo
		
		request.getRequestDispatcher("/ListadoSolicitante.jsp").forward(request, response);
		
	}

}
