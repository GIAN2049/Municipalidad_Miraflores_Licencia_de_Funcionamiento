package com.municipalidad.controlador;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.municipalidad.entidad.Menu;
import com.municipalidad.entidad.Usuario;
import com.municipalidad.service.UsuarioService;


@WebServlet("/ServletUsuario")
public class ServletUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//creando global
	private UsuarioService servicio=new UsuarioService();
       
    
    public ServletUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tipo=request.getParameter("accion");
		if(tipo.equals("iniciarSesion"))
			iniciarSesionDelUsuario(request,response);
		else
			cerrarSesionDelUsuario(request,response);
	}


	private void cerrarSesionDelUsuario(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//obtener la session
		HttpSession session=request.getSession();
		session.invalidate();
		response.sendRedirect("Login.jsp?logout");
		
	}


	private void iniciarSesionDelUsuario(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String login,clave;
		login=request.getParameter("usuario");
		clave=request.getParameter("clave");
		Usuario bean=servicio.loginUsuario(login, clave);
		if(bean==null) {
			//usuario o clave no existen
			response.sendRedirect("Login.jsp?error");
		}
		else {
			//traer menus
			ArrayList<Menu> datos=servicio.menusDelUsuario(bean.getCodigo());
			//creando atributo de tipo sesion
			request.getSession().setAttribute("menus", datos);
			request.getSession().setAttribute("datosUsuario", bean.getApellido()+" "+bean.getNombre());
			//direcsionar a pagina jsp
			request.getRequestDispatcher("/PaginaPrincipal.jsp").forward(request, response);
			
		}
		
	}

}
