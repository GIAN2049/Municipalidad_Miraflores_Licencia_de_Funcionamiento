package com.municipalidad.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.municipalidad.dao.MySqlNegocioDAO;
import com.municipalidad.entidad.Negocio;


@WebServlet("/ServletNegocio")
public class ServletNegocio extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//global
	private MySqlNegocioDAO daoNegocio=new MySqlNegocioDAO();
       
    
    public ServletNegocio() {
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
		String empMaculino, empFemenino;
		//recuperando los valores
		empMaculino=request.getParameter("masculino");
		empFemenino=request.getParameter("femenino");
		//creando objeto 
		Negocio neg=new Negocio();
		//seteando
		neg.setEmpleMasculino(Integer.parseInt(empMaculino));
		neg.setEmpleFemenino(Integer.parseInt(empFemenino));
		//invocar metodo
		daoNegocio.registrar(neg);
		
		//redirecsionando
		response.sendRedirect("RepresentanteLegal.jsp");
	}

}
