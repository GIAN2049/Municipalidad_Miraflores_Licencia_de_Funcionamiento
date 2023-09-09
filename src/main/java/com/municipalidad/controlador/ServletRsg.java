package com.municipalidad.controlador;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.municipalidad.dao.MySqlRsgDAO;
import com.municipalidad.entidad.RSG;
import com.municipalidad.service.RsgService;


@WebServlet("/ServletRsg")
//configurar subida de archivo
@MultipartConfig(
			maxFileSize = 1024*1024*60
		)

public class ServletRsg extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//global
	private MySqlRsgDAO daoReg=new MySqlRsgDAO();
	private RsgService servicio=new RsgService();
       
	
    public ServletRsg() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gr;
		gr=request.getParameter("accion");
		if(gr.equals("grabar"))
			grabar(request,response);
		else if (gr.equals("listar"))
			listar(request,response);
		else if (gr.equals("mostrarfirma"))
			mostrarfirma(request,response);
		
		//crenado otro String para registrar 2 formulario
		//recuperando valor 
		String opa;
		opa=request.getParameter("accion");
		if(opa.equals("actualizar"))
			actualizar(request,response);
	}
	
	private void actualizar(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String codigo, titulo, descrip, resolucion, responsable, departamento, fechaEmision, firmaSubgerente, fechaFirma;
		//variable para recuperar un archivo que se encuentra en un control de tipo file
		Part archivo;
		codigo=request.getParameter("codigo");
		titulo=request.getParameter("tituloResolucion1");
		descrip=request.getParameter("descripcion1");
		resolucion=request.getParameter("numeroResolucion1");
		responsable=request.getParameter("responsable1");
		departamento=request.getParameter("departamento1");
		fechaEmision=request.getParameter("fechaEmision1");
		firmaSubgerente=request.getParameter("firmaSubgerente1");
		fechaFirma=request.getParameter("fechaFirma1");
		//recuperar el archivo
		archivo=request.getPart("sellado1");
		
		RSG reg=new RSG();
		//seteando
		reg.setTitulo_resolucion(titulo);
		reg.setDescripcion(descrip);
		reg.setNumero_resolucion(Long.parseLong(resolucion));
		reg.setResponsable(responsable);
		reg.setDepartamento(departamento);
		reg.setFecha_emision(Date.valueOf(fechaEmision));
		reg.setFirma_subGerente(firmaSubgerente);
		reg.setFecha_firma(Date.valueOf(fechaFirma));
		
		//Connviertiendo valor de la variable archivo en flujo (bytes)
		InputStream strean=archivo.getInputStream();
		//setenado el valor de strean en el atributo cv
		reg.setSellado(strean.readAllBytes());
		//setaar nombre del archivo
		reg.setNombre_sellado(archivo.getSubmittedFileName());
		
		//validando
		if(Integer.parseInt(codigo)==0) {
			//invocando al metodo grabar
			servicio.registrar(reg);
		}
		else {
			//seteando el codigo
			reg.setCod_rsg(Integer.parseInt(codigo));
			//llamando al metodo actualizar
			servicio.actualizar(reg);
			//invocando al metodo listar
			listar(request,response);
		}
		
	}

	private void mostrarfirma(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String cod_rsg;
		cod_rsg=request.getParameter("codigo");
		RSG bean=servicio.buscarPorID(Integer.parseInt(cod_rsg));
		//crear archivo fisico y guardar en una unidad
		Files.write(Paths.get("C:/archivos/"+bean.getNombre_sellado()),bean.getSellado());
		//mostrar en el navegador el archivo generado
		ServletOutputStream strean;
		response.setContentType("image/png");
		response.setHeader("Content-disposition", "inline; filename=C:/archivos/"+bean.getNombre_sellado());
		strean=response.getOutputStream();
		strean.write(bean.getSellado());
		strean.flush();
		strean.close();
	}

	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("listado_RSG", servicio.listarRSG()); // este va a la tabla 
		request.getRequestDispatcher("/ListadoRSG.jsp").forward(request, response);		
	}

	protected void grabar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		String  titulo, descrip, resolucion, responsable, departamento, fechaEmision, firmaSubgerente, fechaFirma;
		//variable para recuperar un archivo que se encuentra en un control de tipo file
		Part archivo;
		titulo=request.getParameter("tituloResolucion");
		descrip=request.getParameter("descripcion");
		resolucion=request.getParameter("numeroResolucion");
		responsable=request.getParameter("responsable");
		departamento=request.getParameter("departamento");
		fechaEmision=request.getParameter("fechaEmision");
		firmaSubgerente=request.getParameter("firmaSubgerente");
		fechaFirma=request.getParameter("fechaFirma");
		//recuperar el archivo
		archivo=request.getPart("sellado");
		
		RSG reg=new RSG();
		//seteando
		reg.setTitulo_resolucion(titulo);
		reg.setDescripcion(descrip);
		reg.setNumero_resolucion(Long.parseLong(resolucion));
		reg.setResponsable(responsable);
		reg.setDepartamento(departamento);
		reg.setFecha_emision(Date.valueOf(fechaEmision));
		reg.setFirma_subGerente(firmaSubgerente);
		reg.setFecha_firma(Date.valueOf(fechaFirma));
		
		//Connviertiendo valor de la variable archivo en flujo (bytes)
		InputStream strean=archivo.getInputStream();
		//setenado el valor de strean en el atributo cv
		reg.setSellado(strean.readAllBytes());
		//setaar nombre del archivo
		reg.setNombre_sellado(archivo.getSubmittedFileName());
		
		daoReg.registrar(reg);
		//Regresando a la pagina
		request.getRequestDispatcher("/Observaciones.html").forward(request, response);
		
	}

}
