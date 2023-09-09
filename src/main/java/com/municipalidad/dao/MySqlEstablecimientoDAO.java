package com.municipalidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.municipalidad.entidad.Establecimiento;
import com.municipalidad.interfaces.EstablecimientoDAO;
import com.municipalidad.utils.MySqlConexion;

public class MySqlEstablecimientoDAO implements EstablecimientoDAO{

	@Override
	public int registrar(Establecimiento est) {
		int salida=-1;
		PreparedStatement pstm=null;
		Connection conn=null;
		try {
			conn=MySqlConexion.getConectar();
			String sql="insert into datos_Establecimiento values(null,?,?,?,?,?,?,?,?)";
			//objeto pstm y se envia sentencia SQL variable sql
			pstm=conn.prepareStatement(sql);
			pstm.setString(1, est.getUbicacionNegocio());
			pstm.setInt(2, est.getAreaUtilizada());
			pstm.setInt(3, est.getCapacidadAforo());
			pstm.setInt(4, est.getAntiguedad());
			pstm.setString(5, est.getNomComercial());
			pstm.setInt(6, est.getNumPisos());
			pstm.setString(7, est.getReferencia());
			//llave foranea
			pstm.setString(8, est.getRazonSocial());
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
	public int actualizar(Establecimiento est) {
		int salida=-1;
		Connection cn=null;
		PreparedStatement pstm=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="update datos_Establecimiento set ubicacion_negocio=?,area_utilizada=?,capacidad_aforo=?,antiguedad=?,nom_comercial=?,num_pisos=?,referencia=? where cod_datos_Establecimiento=?";
			pstm=cn.prepareStatement(sql);
			//parametros
			pstm.setString(1,est.getUbicacionNegocio());
			pstm.setInt(2,est.getAreaUtilizada());
			pstm.setInt(3,est.getCapacidadAforo());
			pstm.setInt(4,est.getAntiguedad());
			pstm.setString(5,est.getNomComercial());
			pstm.setInt(6,est.getNumPisos());
			pstm.setString(7,est.getReferencia());
			pstm.setInt(8, est.getCodEstablecimiento());
			//
			salida=pstm.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstm!=null) pstm.close();
				if(cn!=null) cn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}	
		return salida;
	}

	@Override
	public int eliminarPorID(int codEstablecimiento) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Establecimiento buscarPorID(int codEstablecimiento) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Establecimiento> listar() {
		ArrayList<Establecimiento> data=new ArrayList<Establecimiento>();
		Establecimiento bean=null;
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="select * from datos_Establecimiento";
			pstm=cn.prepareStatement(sql);
			rs=pstm.executeQuery();
			while(rs.next()) {
				bean=new Establecimiento();
				bean.setCodEstablecimiento(rs.getInt(1));
				bean.setUbicacionNegocio(rs.getString(2));
				bean.setAreaUtilizada(rs.getInt(3));
				bean.setCapacidadAforo(rs.getInt(4));
				bean.setAntiguedad(rs.getInt(5));
				bean.setNomComercial(rs.getString(6));
				bean.setNumPisos(rs.getInt(7));
				bean.setReferencia(rs.getString(8));
				data.add(bean);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
				if(cn!=null) cn.close();
				if(pstm!=null) pstm.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}		
		return data;
	}	
}
