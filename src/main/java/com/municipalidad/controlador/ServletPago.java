package com.municipalidad.controlador;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.municipalidad.entidad.Pago;
import com.municipalidad.service.PagoService;

@WebServlet("/ServletPago")
@MultipartConfig(
		maxFileSize = 1024*1024*60
	)

public class ServletPago extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//global
	private PagoService servicio=new PagoService();
       

    public ServletPago() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pago;
		pago=request.getParameter("accion");
		if(pago.equals("grabar"))
			grabar(request,response);
		else if(pago.equals("listar"))
			listar(request,response);
		else if (pago.equals("mostrarPago"))
			mostrarPago(request,response);
	}

	private void mostrarPago(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String cod_pago;
		cod_pago=request.getParameter("codigo");
		Pago bean=servicio.buscarPorID(Integer.parseInt(cod_pago));
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
		request.setAttribute("listado_Pago", servicio.listarPagosTodos()); //usamos la global de servico "listado_RLIC" va al c:forch
		request.getRequestDispatcher("/ListadoPago.jsp").forward(request, response);
		
	}

	private void grabar(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String nombre, dni;
		Part archivo;
		nombre=request.getParameter("nombreApellido");
		dni=request.getParameter("dni");
		//recuperando archivo
		archivo=request.getPart("sellado");
		
		//seteo
		Pago ago=new Pago();
		ago.setNombreApellido(nombre);
		ago.setDni(Long.parseLong(dni));
		
		//Connviertiendo valor de la variable archivo en flujo (bytes)
		InputStream strean=archivo.getInputStream();
		//setenado el valor de strean en el atributo cv
		ago.setSellado(strean.readAllBytes());
		//setaar nombre del archivo
		ago.setNombreSellado(archivo.getSubmittedFileName());
			
		//se lla a la variable servicio para grabar
		servicio.registrar(ago);
		//redirecsionando
		request.getRequestDispatcher("/LicenciaFuncionamiento.html").forward(request, response);
	}

}
