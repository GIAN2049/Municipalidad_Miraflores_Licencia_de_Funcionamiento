package com.municipalidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.municipalidad.entidad.ADA;
import com.municipalidad.interfaces.AdaDAO;
import com.municipalidad.utils.MySqlConexion;

public class MySqlAdaDAO implements AdaDAO{

	@Override
	public int registrar(ADA ada) {
		int salida=-1;
		PreparedStatement pstm=null;
		Connection conn=null;
		try {
			conn=MySqlConexion.getConectar();
			String sql="insert into ada values (null,?,?,?,?,?,?,?,?)";
			pstm=conn.prepareStatement(sql);
			pstm.setLong(1, ada.getNumeroExpediente());
			pstm.setString(2, ada.getResponsable());
			pstm.setLong(3, ada.getDni());
			pstm.setDouble(4, ada.getMonto());
			pstm.setDate(5, ada.getFechaRecepcion());
			pstm.setString(6, ada.getEstado());
			pstm.setString(7, ada.getObservaciones());
			pstm.setDate(8, ada.getFechaRevision());
			
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
	public int actualizar(ADA ada) {
		int salida=-1;
		Connection cn=null;
		PreparedStatement pstm=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="update ada set numero_expediente=?,responsable=?,dni=?,monto=?,fecha_recepcion=?,estado=?,observaciones=?,fecha_revision=? where cod_ada=?";
			pstm=cn.prepareStatement(sql);
			pstm.setLong(1,ada.getNumeroExpediente());
			pstm.setString(2,ada.getResponsable());
			pstm.setLong(3,ada.getDni());
			pstm.setDouble(4,ada.getMonto());
			pstm.setDate(5,ada.getFechaRecepcion());
			pstm.setString(6,ada.getEstado());
			pstm.setString(7,ada.getObservaciones());
			pstm.setDate(8, ada.getFechaRevision());
			pstm.setInt(9, ada.getCodigo());
			
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
	public ADA buscarPorID(int codADA) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ADA> listar() {
		ArrayList<ADA> data=new ArrayList<ADA>();
		ADA bean=null;
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="select * from ada";
			pstm=cn.prepareStatement(sql);
			rs=pstm.executeQuery();
			while(rs.next()) {
				bean=new ADA();
				bean.setCodigo(rs.getInt(1));
				bean.setNumeroExpediente(rs.getLong(2));
				bean.setResponsable(rs.getString(3));;
				bean.setDni(rs.getLong(4));
				bean.setMonto(rs.getDouble(5));
				bean.setFechaRecepcion(rs.getDate(6));
				bean.setEstado(rs.getString(7));
				bean.setObservacione(rs.getString(8));
				bean.setFechaRevision(rs.getDate(9));
				
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
