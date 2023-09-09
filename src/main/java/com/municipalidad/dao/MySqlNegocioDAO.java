package com.municipalidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import com.municipalidad.entidad.Negocio;
import com.municipalidad.interfaces.NegocioDAO;
import com.municipalidad.utils.MySqlConexion;

public class MySqlNegocioDAO implements NegocioDAO{

	@Override
	public int registrar(Negocio neg) {
		int salida=-1;
		PreparedStatement pstm=null;
		Connection conn=null;
		try {
			conn=MySqlConexion.getConectar();
			String sql="insert into datos_Adicionale_Negocio values(null,?,?,?);";
			//objeto pstm y se envia sentencia SQL variable sql
			pstm=conn.prepareStatement(sql);
			pstm.setInt(1, neg.getEmpleMasculino());
			pstm.setInt(2, neg.getEmpleFemenino());
			//llave foranea
			pstm.setString(3, neg.getActividadComercial());
			//ejecutar sentencia sql
			salida=pstm.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstm!=null) pstm.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return salida;
	}

	@Override
	public int actualizar(Negocio neg) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int eliminarPorID(int codDatosAdicional) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Negocio buscarPorID(int codDatosAdicional) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Negocio> listar() {
		// TODO Auto-generated method stub
		return null;
	}

}
