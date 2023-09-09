package com.municipalidad.controlador;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.municipalidad.dao.MySqlAdaDAO;
import com.municipalidad.entidad.ADA;

@WebServlet("/ServletAda")
public class ServletAda extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//global
    private MySqlAdaDAO daoADA=new MySqlAdaDAO();   
	
    public ServletAda() {
        super();
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tip;
		tip=request.getParameter("accion");
		if(tip.equals("grabar"))
			grabar(request,response);
		else if(tip.equals("listar"))
			listar(request,response);
		
		String reg;
		reg=request.getParameter("accion");
		if(reg.equals("grabarFormularioADA"))
			grabarFormularioADA(request, response);
    }    
    
    private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<ADA> info=daoADA.listar();
		/*request.setAttribute("ADA", servicio.listar());*/
		request.setAttribute("ADA", info);
		request.getRequestDispatcher("/ModifyADA.jsp").forward(request, response);
		
	}
    
    /*MODAL*/
	protected void grabar (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String codAda, numExpediente, responsableAda, dniAda, montoAda, fechaRecepcion, estadoAda, observacionesAda,fechaRevision;
		
		codAda=request.getParameter("codigo1");
		numExpediente=request.getParameter("expediente1");
		responsableAda=request.getParameter("responsable1");
		dniAda=request.getParameter("dni1");
		montoAda=request.getParameter("monto1");
		fechaRecepcion=request.getParameter("fechaRecepcion1");
		estadoAda=request.getParameter("estado1");
		observacionesAda=request.getParameter("observaciones1");
		fechaRevision=request.getParameter("fechaRevision1");
		
		
		ADA ada = new ADA();
		
		ada.setNumeroExpediente(Long.parseLong(numExpediente));
		ada.setResponsable(responsableAda);
		ada.setDni(Long.parseLong(dniAda));
		ada.setMonto(Double.parseDouble(montoAda));
		ada.setFechaRecepcion(Date.valueOf(fechaRecepcion));
		ada.setEstado(estadoAda);
		ada.setObservacione(observacionesAda);
		ada.setFechaRevision(Date.valueOf(fechaRevision));
		
		if (Integer.parseInt(codAda)==0) {
			daoADA.registrar(ada);
		}
		else {
			ada.setCodigo(Integer.parseInt(codAda));
			daoADA.actualizar(ada);
			listar(request, response);
		}
		
	}
	
	//formulario principal
	protected void grabarFormularioADA(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String numExpediente, responsableAda, dniAda, montoAda, fechaRecepcion, estadoAda, observacionesAda,fechaRevision;
		numExpediente=request.getParameter("numeroExpediente");
		responsableAda=request.getParameter("responsable");
		dniAda=request.getParameter("dni");
		montoAda=request.getParameter("monto");
		fechaRecepcion=request.getParameter("fechaRecepcion");
		estadoAda=request.getParameter("estado");
		observacionesAda=request.getParameter("observaciones");
		fechaRevision=request.getParameter("fechaRevision");
		
		ADA ada1 = new ADA();
		ada1.setNumeroExpediente(Long.parseLong(numExpediente));
		ada1.setResponsable(responsableAda);
		ada1.setDni(Long.parseLong(dniAda));
		ada1.setMonto(Double.parseDouble(montoAda));
		ada1.setFechaRecepcion(Date.valueOf(fechaRecepcion));
		ada1.setEstado(estadoAda);
		ada1.setObservacione(observacionesAda);
		ada1.setFechaRevision(Date.valueOf(fechaRevision));
		
		daoADA.registrar(ada1);
		response.sendRedirect("ServletAda?accion=listar");
	}

}
