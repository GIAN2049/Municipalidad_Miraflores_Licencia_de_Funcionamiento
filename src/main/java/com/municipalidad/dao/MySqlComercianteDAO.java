package com.municipalidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.municipalidad.entidad.Comerciante;
import com.municipalidad.interfaces.ComercianteDAO;
import com.municipalidad.utils.MySqlConexion;

public class MySqlComercianteDAO implements ComercianteDAO {

	@Override
	public int registrar(Comerciante doc) {
		//Retorna entero pon 
		//-positivo (1) cuando el INSERT se ejecuto correcto
		//-negativo (-1) cuando existe error en el INSERT
		int salida=-1;
		
		/*Trabaja con sentencias SQL "ISNERT, UPDATE, DELETE, SELECT"*/
		PreparedStatement pstm=null;
		//objeto de la INTERFACES Connection
		Connection conn=null;
		try {
			conn=MySqlConexion.getConectar();
			//Setentecia SQL "INSERT INTO"
			String sql="insert into tipo_Autorizacion values(null,?,?)"; //?---> parametros que almacena valores
			//objeto pstm y se envia sentencia SQL variable sql
			pstm=conn.prepareStatement(sql);
			pstm.setString(1, doc.getTipoLicencia());
			pstm.setString(2, doc.getTipoTramite());
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
	public int actualizar(Comerciante doc) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int eliminarPorID(int cod) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Comerciante buscarPorID(int cod) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Comerciante> listar() {
		ArrayList<Comerciante> data=new ArrayList<Comerciante>();
		Comerciante bean=null;
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="select * from tipo_Autorizacion";
			pstm=cn.prepareStatement(sql);
			rs=pstm.executeQuery();
			while(rs.next()) {
				bean=new Comerciante();
				bean.setCodigo(rs.getInt(1));
				bean.setTipoLicencia(rs.getString(2));
				bean.setTipoTramite(rs.getString(3));
				data.add(bean);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
				if(pstm!=null) pstm.close();
				if(cn!=null) cn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		
		return data;
	}

}
