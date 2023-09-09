package com.municipalidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import com.municipalidad.entidad.Legal;
import com.municipalidad.interfaces.LegalDAO;
import com.municipalidad.utils.MySqlConexion;

public class MySqlLegalDAO implements LegalDAO{

	@Override
	public int registrar(Legal lel) {
		int salida=-1;
		PreparedStatement pstm=null;
		Connection conn=null;
		try {
			conn=MySqlConexion.getConectar();
			String sql="insert into representante_Legal values(null,?)";
			//objeto pstm y se envia sentencia SQL variable sql
			pstm=conn.prepareStatement(sql);
			pstm.setString(1, lel.getReprsentanteLegal());
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
	public int actualizar(Legal lel) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int eliminarPorID(int codDatosAdicionales) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Legal buscarPorID(int codDatosAdicionales) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Legal> listar() {
		// TODO Auto-generated method stub
		return null;
	}

}
