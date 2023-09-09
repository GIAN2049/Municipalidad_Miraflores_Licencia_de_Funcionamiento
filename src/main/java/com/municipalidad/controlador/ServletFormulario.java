package com.municipalidad.controlador;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.municipalidad.entidad.Formulario;
import com.municipalidad.service.FormularioService;

@WebServlet("/ServletFormulario")
public class ServletFormulario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//global
	private FormularioService servicio=new FormularioService();
       
    public ServletFormulario() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String formulario;
		formulario=request.getParameter("accion");
		if(formulario.equals("grabar"))
			grabar(request,response);
		else if(formulario.equals("listar"))
			listar(request, response);				
	}

	private void grabar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String desti,correo,asuntoc,mensaje;
		desti=request.getParameter("destinario");
		correo=request.getParameter("correo");
		asuntoc=request.getParameter("asunto");
		mensaje=request.getParameter("mensaje");
		
		Formulario caj=new Formulario();
		
		caj.setDestinario(desti);
		caj.setCorreo(correo);
		caj.setAsunto(asuntoc);
		caj.setMensaje(mensaje);
		
		servicio.registrar(caj);
		//llamando al listar
		listar(request,response);	
		
	}

	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("listado_formulario", servicio.listar()); // este va a la tabla 
		request.getRequestDispatcher("/ListadoFormulario.jsp").forward(request, response);		
	}

}
