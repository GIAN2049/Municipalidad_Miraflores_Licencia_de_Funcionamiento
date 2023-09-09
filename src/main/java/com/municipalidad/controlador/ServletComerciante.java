package com.municipalidad.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.municipalidad.dao.MySqlComercianteDAO;
import com.municipalidad.entidad.Comerciante;

@WebServlet("/ServletComerciante")
public class ServletComerciante extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//global
	private MySqlComercianteDAO daoComerciante=new MySqlComercianteDAO();
    
    public ServletComerciante() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//recuperando el valor del parametro grabar
		String tip;
		tip=request.getParameter("accion");
		if(tip.equals("grabar"))
			grabar(request,response);
	}
	
	protected void grabar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//variables
		String tip_licencia, tip_tramite;
		tip_licencia=request.getParameter("licenciaFuncionamiento");
		tip_tramite=request.getParameter("tipoTramite");
		//creando objeto de la clase comerciante
		Comerciante come=new Comerciante();
		come.setTipoLicencia(tip_licencia);
		come.setTipoTramite(tip_tramite);
		//metodo grabar invocando
		daoComerciante.registrar(come);
		//redirecsionando
		response.sendRedirect("IdentificacionSolicitante.jsp");
	}

}
