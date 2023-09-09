package com.municipalidad.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.municipalidad.dao.MySqlLegalDAO;
import com.municipalidad.entidad.Legal;


@WebServlet("/ServletLegal")
public class ServletLegal extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//global
	private MySqlLegalDAO daoLegal=new MySqlLegalDAO();
       
    
    public ServletLegal() {
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
		String reprecentante;
		//recuperando los valores
		reprecentante=request.getParameter("personaNatural");
		//creando objeto 
		Legal lel=new Legal();
		//seteando
		lel.setReprsentanteLegal(reprecentante);
		//invocar metodo
		daoLegal.registrar(lel);
		
		response.sendRedirect("SubirPago.jsp");
	}

}
