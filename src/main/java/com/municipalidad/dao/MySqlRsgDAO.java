package com.municipalidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.municipalidad.entidad.RSG;
import com.municipalidad.interfaces.RsgDAO;
import com.municipalidad.utils.MySqlConexion;

public class MySqlRsgDAO implements RsgDAO{

	@Override
	public int registrar(RSG rg) {
		int salida=-1;
		PreparedStatement pstm=null;
		Connection conn=null;
		try {
			conn=MySqlConexion.getConectar();
			String sql="insert into RSG values (null,?,?,?,?,?,?,?,?,?,?)";
			pstm=conn.prepareStatement(sql);
			pstm.setString(1, rg.getTitulo_resolucion());
			pstm.setString(2, rg.getDescripcion());
			pstm.setLong(3, rg.getNumero_resolucion());
			pstm.setString(4, rg.getResponsable());
			pstm.setString(5, rg.getDepartamento());
			pstm.setDate(6, rg.getFecha_emision());
			pstm.setString(7, rg.getFirma_subGerente());
			pstm.setDate(8, rg.getFecha_firma());
			pstm.setBytes(9, rg.getSellado());
			pstm.setString(10, rg.getNombre_sellado());
			
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
	public int actualizar(RSG rg) {
		int salida=-1;
		Connection cn=null;
		PreparedStatement pstm=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="update RSG set titulo_resolucion=?,descripcion=?,numero_resolucion=?,responsable=?,departamento=?,fecha_emision=?,firma_subGerente=?,fecha_firma=?,sellado_img=?,nombre_sellado=? where cod_rsg=?";
			pstm=cn.prepareStatement(sql);
			pstm.setString(1, rg.getTitulo_resolucion());
			pstm.setString(2, rg.getDescripcion());
			pstm.setLong(3, rg.getNumero_resolucion());
			pstm.setString(4, rg.getResponsable());
			pstm.setString(5, rg.getDepartamento());
			pstm.setDate(6, rg.getFecha_emision());
			pstm.setString(7, rg.getFirma_subGerente());
			pstm.setDate(8, rg.getFecha_firma());
			pstm.setBytes(9, rg.getSellado());
			pstm.setString(10, rg.getNombre_sellado());
			pstm.setInt(11, rg.getCod_rsg());
			
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
	public int eliminarPorID(int cod_rsg) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public RSG buscarPorID(int cod_rsg) {
		RSG bean=null;
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="select sellado_img,nombre_sellado from RSG where cod_rsg=?";
			pstm=cn.prepareStatement(sql);
			pstm.setInt(1, cod_rsg);
			rs=pstm.executeQuery();
			if(rs.next()) {
				bean=new RSG();
				bean.setSellado(rs.getBytes(1));
				bean.setNombre_sellado(rs.getString(2));						
				return bean;
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
		return bean;
	}

	@Override
	public ArrayList<RSG> listarRSG() {
		ArrayList<RSG> data=new ArrayList<RSG>();
		RSG bean=null;
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="select * from RSG";
			pstm=cn.prepareStatement(sql);
			rs=pstm.executeQuery();
			while(rs.next()) {
				bean=new RSG();
				bean.setCod_rsg(rs.getInt(1));
				bean.setTitulo_resolucion(rs.getString(2));
				bean.setDescripcion(rs.getString(3));
				bean.setNumero_resolucion(rs.getLong(4));
				bean.setResponsable(rs.getString(5));
				bean.setDepartamento(rs.getString(6));
				bean.setFecha_emision(rs.getDate(7));
				bean.setFirma_subGerente(rs.getString(8));
				bean.setFecha_firma(rs.getDate(9));
				
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
