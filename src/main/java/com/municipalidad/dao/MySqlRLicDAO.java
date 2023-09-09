package com.municipalidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.municipalidad.entidad.RLIC;
import com.municipalidad.interfaces.RlicDAO;
import com.municipalidad.utils.MySqlConexion;

public class MySqlRLicDAO implements RlicDAO {

	@Override
	public int registrar(RLIC lic) {
		int salida=-1;
		PreparedStatement pstm=null;
		Connection conn=null;
		try {
			conn=MySqlConexion.getConectar();
			String sql="insert into RLIC values (null,?,?,?,?,?,?,?,?,?,?,?,?)";
			pstm=conn.prepareStatement(sql);
			pstm.setLong(1, lic.getNumeroRuc());
			pstm.setString(2, lic.getRazonSocial());
			pstm.setDate(3, lic.getInicioActividad());
			pstm.setString(4, lic.getActividadComercial());
			pstm.setString(5, lic.getNombreComercial());
			pstm.setString(6, lic.getDirecsionNegocio());
			pstm.setString(7, lic.getDistrito());
			pstm.setString(8, lic.getTipoLicencia());
			pstm.setString(9, lic.getFirmaSubgerente());
			pstm.setDate(10, lic.getFechaFirma());
			pstm.setBytes(11, lic.getSellado());
			pstm.setString(12, lic.getNombreSellado());
			
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
	public int actualizar(RLIC lic) {
		int salida=-1;
		PreparedStatement pstm=null;
		Connection conn=null;
		try {
			conn=MySqlConexion.getConectar();
			String sql="update RLIC set numero_ruc=?,razon_social=?,inicio_actividad_comercial=?,actividad_comercial=?,nombre_comercial=?,direcsion_negocio=?,distrito=?,tipo_licencia=?,firma_subGerente=?,fecha_firma=?,sellado_img=?,nombre_sellado=? where cod_rlic=?";
			pstm=conn.prepareStatement(sql);
			pstm.setLong(1, lic.getNumeroRuc());
			pstm.setString(2, lic.getRazonSocial());
			pstm.setDate(3, lic.getInicioActividad());
			pstm.setString(4, lic.getActividadComercial());
			pstm.setString(5, lic.getNombreComercial());
			pstm.setString(6, lic.getDirecsionNegocio());
			pstm.setString(7, lic.getDistrito());
			pstm.setString(8, lic.getTipoLicencia());
			pstm.setString(9, lic.getFirmaSubgerente());
			pstm.setDate(10, lic.getFechaFirma());
			pstm.setBytes(11, lic.getSellado());
			pstm.setString(12, lic.getNombreSellado());
			pstm.setInt(13, lic.getCodRlic());
			
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
	public int eliminarPorID(int codRlic) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public RLIC buscarPorID(int codRlic) {
		RLIC bean=null;
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="select sellado_img,nombre_sellado from RLIC where cod_rlic=?";
			pstm=cn.prepareStatement(sql);
			pstm.setInt(1, codRlic);
			rs=pstm.executeQuery();
			if(rs.next()) {
				bean=new RLIC();
				bean.setSellado(rs.getBytes(1));
				bean.setNombreSellado(rs.getString(2));						
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
	public ArrayList<RLIC> listarRLIC() {
		ArrayList<RLIC> data=new ArrayList<RLIC>();
		RLIC bean=null;
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="select * from RLIC";
			pstm=cn.prepareStatement(sql);
			rs=pstm.executeQuery();
			while(rs.next()) {
				bean=new RLIC();
				bean.setCodRlic(rs.getInt(1));
				bean.setNumeroRuc(rs.getLong(2));
				bean.setRazonSocial(rs.getString(3));
				bean.setInicioActividad(rs.getDate(4));
				bean.setActividadComercial(rs.getString(5));
				bean.setNombreComercial(rs.getString(6));
				bean.setDirecsionNegocio(rs.getString(7));
				bean.setDistrito(rs.getString(8));
				bean.setTipoLicencia(rs.getString(9));
				bean.setFirmaSubgerente(rs.getString(10));
				bean.setFechaFirma(rs.getDate(11));
				
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
