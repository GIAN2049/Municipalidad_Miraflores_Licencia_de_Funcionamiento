package com.municipalidad.fabrica;


import com.municipalidad.dao.MySqlAdaDAO;
import com.municipalidad.dao.MySqlCajaDAO;
import com.municipalidad.dao.MySqlComercianteDAO;
import com.municipalidad.dao.MySqlFormularioDAO;
import com.municipalidad.dao.MySqlSolicitanteDAO;
import com.municipalidad.dao.MySqlUsuarioDAO;
import com.municipalidad.dao.MySqlPacoDAO;
import com.municipalidad.dao.MySqlPagoDAO;
import com.municipalidad.dao.MySqlRLicDAO;
import com.municipalidad.dao.MySqlRsgDAO;
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

public class MySqlDAOFactory extends DAOFactory {

	@Override
	public ComercianteDAO getComercianteDAO() {
		// TODO Auto-generated method stub
		return new MySqlComercianteDAO();
	}

	@Override
	public EconomicaDAO getEconomicaDAO() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EstablecimientoDAO getEstablecimientoDAO() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public LegalDAO getLegalDAO() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public NegocioDAO getNegocioDAO() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SolicitanteDAO getSolicitanteDAO() {
		// TODO Auto-generated method stub
		return new MySqlSolicitanteDAO();
	}

	@Override
	public UsuarioDAO getUsuarioDAO() {
		// TODO Auto-generated method stub
		return new MySqlUsuarioDAO();
	}
	@Override
	public CajaDAO getCajaDao() {
		// TODO Auto-generated method stub
		return new MySqlCajaDAO();
	}

	@Override
	public AdaDAO getAdaDAO() {
		// TODO Auto-generated method stub
		return new MySqlAdaDAO();
	}

	public PacoDAO getPacoDAO() {
		return new MySqlPacoDAO();
	}

	@Override
	public RsgDAO getRsgDAO() {
		// TODO Auto-generated method stub
		return new MySqlRsgDAO();
	}

	@Override
	public RlicDAO getRlicDAO() {
		// TODO Auto-generated method stub
		return new MySqlRLicDAO();
	}

	@Override
	public FormularioDAO getFormularioDAO() {
		// TODO Auto-generated method stub
		return new MySqlFormularioDAO();
	}

	@Override
	public PagoDAO getPagoDAO() {
		// TODO Auto-generated method stub
		return new MySqlPagoDAO();
	}
	
	
}
