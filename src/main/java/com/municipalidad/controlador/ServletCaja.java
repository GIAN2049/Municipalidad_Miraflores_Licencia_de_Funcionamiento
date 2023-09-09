package com.municipalidad.controlador;

import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.municipalidad.dao.MySqlCajaDAO;
import com.municipalidad.entidad.Caja;
import com.municipalidad.service.CajaService;

@WebServlet("/ServletCaja")
public class ServletCaja extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	private MySqlCajaDAO daoCaja=new MySqlCajaDAO();
	private CajaService servicio=new CajaService();
	
    public ServletCaja() {
        super();
  }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tip;
		tip=request.getParameter("accion");
		if(tip.equals("grabar"))
			grabar(request,response);
		else if(tip.equals("listar"))
			listarCaja(request, response);
		else 
			eliminarSolicitante(request,response);
	
	}

	

	protected void grabar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num,nombre,direc,dni,fecha,cant,desc,total;
		num=request.getParameter("numeroComprobante");
		nombre=request.getParameter("senor");
		direc=request.getParameter("direccion");
		dni=request.getParameter("documentoIdentidad");
		fecha=request.getParameter("fecha");
		cant=request.getParameter("cantidad");
		desc=request.getParameter("descripcion");
		total=request.getParameter("total");
		
		Caja caj=new Caja();
		
		caj.setNumeroCom(num);
		caj.setNombre(nombre);
		caj.setDireccion(direc);
		caj.setDni(Long.parseLong(dni));
		caj.setFecha(Date.valueOf(fecha));
		caj.setCantidad(Integer.parseInt(cant));
		caj.setDescripcion(desc);
		caj.setTotal(Double.parseDouble(total));
		daoCaja.registrar(caj);
		//llamando al listar
		listarCaja(request,response);	
		
		
	}
	/*private void listar(HttpServletRequest request, HttpServletResponse response) {
		
	}*/

	private void listarCaja(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("listado_caja", servicio.listar()); // este va a la tabla 
		request.getRequestDispatcher("/ListadoCaja.jsp").forward(request, response);

	}

	private void eliminarSolicitante(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub		
	}

}
