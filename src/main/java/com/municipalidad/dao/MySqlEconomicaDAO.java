package com.municipalidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import com.municipalidad.entidad.Economica;
import com.municipalidad.interfaces.EconomicaDAO;
import com.municipalidad.utils.MySqlConexion;

public class MySqlEconomicaDAO implements EconomicaDAO{

	@Override
	public int registrar(Economica eco) {
		int salida=-1;
		PreparedStatement pstm=null;
		Connection conn=null;
		try {
			conn=MySqlConexion.getConectar();
			String sql="insert into actividad_Economica values(null,?,?,?,?)";
			//objeto pstm y se envia sentencia SQL variable sql
			pstm=conn.prepareStatement(sql);
			pstm.setString(1, eco.getGiro());
			pstm.setString(2, eco.getDescripcion());
			pstm.setString(3, eco.getActividadComercial());
			//llave foranea
			pstm.setString(4, eco.getNombreComercial());
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
	public int actualizar(Economica eco) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int eliminarPorID(int codEconomica) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Economica buscarPorID(int codEconomica) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Economica> listar() {
		// TODO Auto-generated method stub
		return null;
	}
	

}
