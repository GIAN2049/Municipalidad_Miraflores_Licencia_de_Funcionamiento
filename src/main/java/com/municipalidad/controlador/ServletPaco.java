package com.municipalidad.controlador;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.municipalidad.dao.MySqlPacoDAO;
import com.municipalidad.entidad.PACO;

@WebServlet("/ServletPaco")
public class ServletPaco extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//global
	private MySqlPacoDAO daoPACO=new MySqlPacoDAO();     
	 
    public ServletPaco() {
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
		if(reg.equals("grabarFormularioPACO"))
			grabarFormularioPACO(request, response);
    }    
    
	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<PACO> informePACO=daoPACO.listar();
		request.setAttribute("PACO", informePACO);
		request.getRequestDispatcher("/ModifyPACO.jsp").forward(request, response);
	}

	/*MODAL*/
	private void grabar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String info,feEmision,nomProyecto,ubi,insTecnico,sub,fechainspe,aspectevalu,cumpli,observa;
		
		info=request.getParameter("codigo2");
		feEmision=request.getParameter("fechaEmision2");
		nomProyecto=request.getParameter("nombreProyecto2");
		ubi=request.getParameter("ubicacion2");
		insTecnico=request.getParameter("inspectorTecnico2");
		sub=request.getParameter("subgerente2");
		fechainspe=request.getParameter("fechaInspecsion2");
		aspectevalu=request.getParameter("aspectosEvaluados2");
		cumpli=request.getParameter("cumplimiento2");
		observa=request.getParameter("observaciones2");
		
		PACO paco= new PACO();
		
		paco.setFechaEmisionPACO(Date.valueOf(feEmision));
		paco.setNomProyectoPACO(nomProyecto);
		paco.setUbicacionPACO(ubi);
		paco.setInspectorTecnicoPACO(insTecnico);
		paco.setSubgerentePACO(sub);
		paco.setFechaInspeccionPACO(Date.valueOf(fechainspe));
		paco.setAspecEvaluadosPACO(aspectevalu);
		paco.setCumplimientoPACO(cumpli);
		paco.setObservaPACO(observa);
		
		if (Integer.parseInt(info)==0) {
			daoPACO.registrar(paco);
		}
		else {
			paco.setInformePACO(Integer.parseInt(info));
			daoPACO.actualizar(paco);
			listar(request, response);
		}
	}
	
    //FORMULARIO PRINCIPAL
	private void grabarFormularioPACO(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String fechaEmision,nombreProyecto,ubica,inspecTecnico,subPACO,fechaInspecsion,aspectEvaludos,cumplimiento,observaciones;
		fechaEmision=request.getParameter("fechaEmisionPACO");
		nombreProyecto=request.getParameter("nombreProyectoPACO");
		ubica=request.getParameter("ubicacionPACO");
		inspecTecnico=request.getParameter("inspectorTecnicoPACO");
		subPACO=request.getParameter("subgerentePACO");
		fechaInspecsion=request.getParameter("fechaInspecsionPACO");
		aspectEvaludos=request.getParameter("aspectosEvaluadosPACO");
		cumplimiento=request.getParameter("cumplimientoPACO");
		observaciones=request.getParameter("observacionesPACO");
		
		PACO paco1= new PACO();
		
		paco1.setFechaEmisionPACO(Date.valueOf(fechaEmision));
		paco1.setNomProyectoPACO(nombreProyecto);
		paco1.setUbicacionPACO(ubica);
		paco1.setInspectorTecnicoPACO(inspecTecnico);
		paco1.setSubgerentePACO(subPACO);
		paco1.setFechaInspeccionPACO(Date.valueOf(fechaInspecsion));
		paco1.setAspecEvaluadosPACO(aspectEvaludos);
		paco1.setCumplimientoPACO(cumplimiento);
		paco1.setObservaPACO(observaciones);
		
		daoPACO.registrar(paco1);
		response.sendRedirect("ServletPaco?accion=listar");	
	}
}
