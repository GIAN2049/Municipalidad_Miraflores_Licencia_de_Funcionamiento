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

import com.municipalidad.entidad.RLIC;
import com.municipalidad.service.RlicService;

@WebServlet("/ServletRlic")
@MultipartConfig(
		maxFileSize = 1024*1024*60
	)

public class ServletRlic extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//globales
	private RlicService servicio=new RlicService();

    public ServletRlic() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rli;
		rli=request.getParameter("accion");
		if(rli.equals("grabar"))
			grabar(request,response);
		else if (rli.equals("listar"))
			listar(request,response);
		else if (rli.equals("mostrarfirma"))
			mostrarfirma(request,response);
		
		//creando String para modificar
		String melo;
		melo=request.getParameter("accion");
		if(melo.equals("actualizar"))
			actualizar(request,response);
	}

	private void actualizar(HttpServletRequest request, HttpServletResponse response) throws  IOException,ServletException   {
		String codigo, numRuc, razonSocial, inicioActi, actividadComer, nombreComercial, direcsion, distrito, tipoLicencia,firmaSub,fechaFirma;
		//variable para recuperar un archivo que se encuentra en un control de tipo file
		Part archivo;
		codigo=request.getParameter("codigo");
		numRuc=request.getParameter("numeroRuc1");
		razonSocial=request.getParameter("razonSocial1");
		inicioActi=request.getParameter("inicioActividad1");
		actividadComer=request.getParameter("actividadComercial1");
		nombreComercial=request.getParameter("nombreComercial1");
		direcsion=request.getParameter("direcsion1");
		distrito=request.getParameter("distrito1");
		tipoLicencia=request.getParameter("tipoLicencia1");
		firmaSub=request.getParameter("firmaSubgerente1");
		fechaFirma=request.getParameter("fechaFirma1");
		//recuperar el archivo
		archivo=request.getPart("sellado1");
		
		RLIC reg=new RLIC();
		//seteando
		reg.setNumeroRuc(Long.parseLong(numRuc));
		reg.setRazonSocial(razonSocial);
		reg.setInicioActividad(Date.valueOf(inicioActi));
		reg.setActividadComercial(actividadComer);
		reg.setNombreComercial(nombreComercial);
		reg.setDirecsionNegocio(direcsion);
		reg.setDistrito(distrito);
		reg.setTipoLicencia(tipoLicencia);
		reg.setFirmaSubgerente(firmaSub);
		reg.setFechaFirma(Date.valueOf(fechaFirma));		
		
		//Connviertiendo valor de la variable archivo en flujo (bytes)
		InputStream strean=archivo.getInputStream();
		//setenado el valor de strean en el atributo cv
		reg.setSellado(strean.readAllBytes());
		//setaar nombre del archivo
		reg.setNombreSellado(archivo.getSubmittedFileName());
		
		//validando
		if(Integer.parseInt(codigo)==0) {
			//invocando al metodo grabar
			servicio.registrar(reg);
		}
		else {
			//seteando el codigo
			reg.setCodRlic(Integer.parseInt(codigo));
			//llamando al metodo actualizar
			servicio.actualizar(reg);
			//invocando al metodo listar
			listar(request,response);
		}
		
	}

	private void mostrarfirma(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String cod_lic;
		cod_lic=request.getParameter("codigo");
		RLIC bean=servicio.buscarPorID(Integer.parseInt(cod_lic));
		//crear archivo fisico y guardar en una unidad
		Files.write(Paths.get("C:/archivos/"+bean.getNombreSellado()),bean.getSellado());
		//mostrar en el navegador el archivo generado
		ServletOutputStream strean;
		response.setContentType("image/png");
		response.setHeader("Content-disposition", "inline; filename=C:/archivos/"+bean.getNombreSellado());
		strean=response.getOutputStream();
		strean.write(bean.getSellado());
		strean.flush();
		strean.close();
		
	}

	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("listado_RLIC", servicio.listarRLICTodos()); //usamos la global de servico "listado_RLIC" va al c:forch
		request.getRequestDispatcher("/ListadoRLIC.jsp").forward(request, response);
		
	}

	private void grabar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String numRuc, razon, inicioActividad, actividadComercial, nombreComercial, direcsion, distrito, tipoLicencia,subgerente,fechafirma;
		//variable para recuperar un archivo que se encuentra en un control de tipo file
		Part archivo;
		numRuc=request.getParameter("numeroRuc");
		razon=request.getParameter("razonSocial");
		inicioActividad=request.getParameter("inicioActividad");
		actividadComercial=request.getParameter("actividadComercial");
		nombreComercial=request.getParameter("nombreComercial");
		direcsion=request.getParameter("direcsion");
		distrito=request.getParameter("distrito");
		tipoLicencia=request.getParameter("tipoLicencia");
		subgerente=request.getParameter("firmaSubgerente");
		fechafirma=request.getParameter("fechaFirma");
		//recuperar el archivo
		archivo=request.getPart("sellado");
		
		RLIC ric= new RLIC();
		//seteando
		ric.setNumeroRuc(Long.parseLong(numRuc));
		ric.setRazonSocial(razon);
		ric.setInicioActividad(Date.valueOf(inicioActividad));
		ric.setActividadComercial(actividadComercial);
		ric.setNombreComercial(nombreComercial);
		ric.setDirecsionNegocio(direcsion);
		ric.setDistrito(distrito);
		ric.setTipoLicencia(tipoLicencia);
		ric.setFirmaSubgerente(subgerente);
		ric.setFechaFirma(Date.valueOf(fechafirma));
		
		//Connviertiendo valor de la variable archivo en flujo (bytes)
		InputStream strean=archivo.getInputStream();
		//setenado el valor de strean en el atributo cv
		ric.setSellado(strean.readAllBytes());
		//setaar nombre del archivo
		ric.setNombreSellado(archivo.getSubmittedFileName());
		
		//se lla a la variable servicio para grabar
		servicio.registrar(ric);
		//redirecsionando
		request.getRequestDispatcher("/Observaciones.html").forward(request, response);
		
	}

}
