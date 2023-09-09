package com.municipalidad.controlador;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.municipalidad.dao.MySqlEstablecimientoDAO;
import com.municipalidad.entidad.Establecimiento;

@WebServlet("/ServletEstablecimiento")
public class ServletEstablecimiento extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//global
	private MySqlEstablecimientoDAO daoEstablecimiento=new MySqlEstablecimientoDAO();
	/*cuando haces un actualizar y grabar en 2 formularios distintos debes llamar a 2 variables globales*/
	private MySqlEstablecimientoDAO daoEstalecimientoForm=new MySqlEstablecimientoDAO();
       
    public ServletEstablecimiento() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String para grabar y actualizar 1 formulario
		//recuperar el valor 
		String tip;
		tip=request.getParameter("accion");
		if(tip.equals("grabar"))
			grabar(request,response);
		else if(tip.equals("listar"))
			listar(request,response);
		
		//crenado otro String para registrar 2 formulario
		//recuperando valor 
		String reg;
		reg=request.getParameter("accion");
		if(reg.equals("grabarFormularioDatosEstablecimiento"))
			grabarFormularioDatosEstablecimiento(request,response);
	}
	
	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Establecimiento> info=daoEstalecimientoForm.listar();
		request.setAttribute("Establecimiento", info);
		request.getRequestDispatcher("/ModifyDatosEstablecimiento.jsp").forward(request, response);
		
	}

	protected void grabar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//variables
		String codEstablecimiento, ubicacionNegocio, areaUtilizada, capacidadAforo, antiguedad, nomComercial, numPisos, referencia;
		//recuperando los valores
		codEstablecimiento=request.getParameter("codigo");
		ubicacionNegocio=request.getParameter("ubicacion");
		areaUtilizada=request.getParameter("utilizada");
		capacidadAforo=request.getParameter("aforo");
		antiguedad=request.getParameter("antiguedad");
		nomComercial=request.getParameter("comercial");
		numPisos=request.getParameter("pisos");
		referencia=request.getParameter("referencia");
		//creando objeto 
		Establecimiento est=new Establecimiento();
		//seteando
		est.setUbicacionNegocio(ubicacionNegocio);
		est.setAreaUtilizada(Integer.parseInt(areaUtilizada));
		est.setCapacidadAforo(Integer.parseInt(capacidadAforo));
		est.setAntiguedad(Integer.parseInt(antiguedad));
		est.setNomComercial(nomComercial);
		est.setNumPisos(Integer.parseInt(numPisos));
		est.setReferencia(referencia);
		//validando variable codEstablecimiento
		if(Integer.parseInt(codEstablecimiento)==0) {
		//invocar metodo registrar
		daoEstablecimiento.registrar(est);
		//inocando al metodo listar
		}
		else {
			//setear codigo
			est.setCodEstablecimiento(Integer.parseInt(codEstablecimiento));
			daoEstalecimientoForm.actualizar(est);
			//inocando al metodo listar
			listar(request,response);
		}	
	}
	
	//se creo nuevo protected void grabarFormularioDatosEstablecimiento para que pueda registrar ya que se esta usando 1 servlet 
	//para 2 formularios que tiene valores en el name diferentes
	protected void grabarFormularioDatosEstablecimiento(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//variables
		String ubicacionNegocio, areaUtilizada, capacidadAforo, antiguedad, nomComercial, numPisos, referencia;
		//recuperando los valores
		ubicacionNegocio=request.getParameter("ubicacionNegocio");
		areaUtilizada=request.getParameter("areaLocal");
		capacidadAforo=request.getParameter("capacidadAforo");
		antiguedad=request.getParameter("antiguedadEdificacion");
		nomComercial=request.getParameter("nombreComercial");
		numPisos=request.getParameter("numeroPisos");
		referencia=request.getParameter("referencia");
		//creando objeto de clase
		Establecimiento esta=new Establecimiento();
		//setenado para registrar
		esta.setUbicacionNegocio(ubicacionNegocio);
		esta.setAreaUtilizada(Integer.parseInt(areaUtilizada));
		esta.setCapacidadAforo(Integer.parseInt(capacidadAforo));
		esta.setAntiguedad(Integer.parseInt(antiguedad));
		esta.setNomComercial(nomComercial);
		esta.setNumPisos(Integer.parseInt(numPisos));
		esta.setReferencia(referencia);
		//invocando al metodo registrar
		daoEstablecimiento.registrar(esta);
		//redirecsionando
		response.sendRedirect("ActividadesEconomicas.jsp");
	}	
}
