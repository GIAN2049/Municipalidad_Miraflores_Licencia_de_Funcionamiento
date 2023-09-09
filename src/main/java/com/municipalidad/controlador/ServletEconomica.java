package com.municipalidad.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.municipalidad.dao.MySqlEconomicaDAO;
import com.municipalidad.entidad.Economica;


@WebServlet("/ServletEconomica")
public class ServletEconomica extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//global
	private MySqlEconomicaDAO daoEconomica=new MySqlEconomicaDAO();
       
    
    public ServletEconomica() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//recuperar el valor 
		String tip;
		tip=request.getParameter("accion");
		if(tip.equals("grabar"))
			grabar(request,response);
	}
	
	protected void grabar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//variables
		String giro, descripcion, actividadComercial;
		//recuperando los valores
		giro=request.getParameter("giro");
		descripcion=request.getParameter("descripcion");
		actividadComercial=request.getParameter("actividadComercial");
		//creando objeto 
		Economica eco=new Economica();
		//seteando
		eco.setGiro(giro);
		eco.setDescripcion(descripcion);
		eco.setActividadComercial(actividadComercial);
		//invocar metodo
		daoEconomica.registrar(eco);
		
		//redirecsionando
		response.sendRedirect("DatosAdicionalNegocio.jsp");
	}

}
