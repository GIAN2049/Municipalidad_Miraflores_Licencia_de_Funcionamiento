package com.municipalidad.fabrica;

import com.municipalidad.interfaces.AdaDAO;
import com.municipalidad.interfaces.CajaDAO;
import com.municipalidad.interfaces.ComercianteDAO;
import com.municipalidad.interfaces.EconomicaDAO;
import com.municipalidad.interfaces.EstablecimientoDAO;
import com.municipalidad.interfaces.FormularioDAO;
import com.municipalidad.interfaces.LegalDAO;
import com.municipalidad.interfaces.NegocioDAO;
import com.municipalidad.interfaces.PacoDAO;
import com.municipalidad.interfaces.PagoDAO;
import com.municipalidad.interfaces.RlicDAO;
import com.municipalidad.interfaces.RsgDAO;
import com.municipalidad.interfaces.SolicitanteDAO;
import com.municipalidad.interfaces.UsuarioDAO;

public abstract class DAOFactory {
	// los posibles or�genes de datos
    public static final int MYSQL = 1;
    public static final int ORACLE = 2;
    public static final int DB2 = 3;
    public static final int SQLSERVER = 4;
    public static final int XML = 5;
    // Existir� un m�todo get por cada DAO que exista en el sistema
    // Ejemplo:
    //public abstract ArticuloDAO getArticuloDAO();
    // registramos nuestros daos
    /*Registrando todas las INTERFACES*/
    public abstract ComercianteDAO getComercianteDAO();
    public abstract EconomicaDAO getEconomicaDAO();
    public abstract EstablecimientoDAO getEstablecimientoDAO();
    public abstract LegalDAO getLegalDAO();
    public abstract NegocioDAO getNegocioDAO();
    public abstract SolicitanteDAO getSolicitanteDAO();
    public abstract UsuarioDAO getUsuarioDAO();
    public abstract CajaDAO getCajaDao();
    public abstract AdaDAO getAdaDAO();
    public abstract PacoDAO getPacoDAO();
    public abstract RsgDAO getRsgDAO();
    public abstract RlicDAO getRlicDAO();
    public abstract FormularioDAO getFormularioDAO();
    public abstract PagoDAO getPagoDAO();
    
    public static DAOFactory getDAOFactory(int whichFactory){
        switch(whichFactory){
       	case MYSQL:
        	   return new MySqlDAOFactory();
        	case XML:
        	    //return new XmlDAOFactory();
        	case ORACLE:
        	    //return new OracleDAOFactory();
        	/*case DB2:
        	    return new Db2DAOFactory();*/
        	case SQLSERVER:
        	    return null;
        	/*case XML:
        	    return new XmlDAOFactory();*/
        	default:
        	    return null;
        }
     }
}
