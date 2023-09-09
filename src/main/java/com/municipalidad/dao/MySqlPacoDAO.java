package com.municipalidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.municipalidad.entidad.PACO;
import com.municipalidad.interfaces.PacoDAO;
import com.municipalidad.utils.MySqlConexion;

public class MySqlPacoDAO implements PacoDAO {

	@Override
	public int registrar(PACO paco) {
		int salida=-1;
		PreparedStatement pstm=null;
		Connection conn=null;
		try {
			conn=MySqlConexion.getConectar();
			String sql="insert into ITEC values (null,?,?,?,?,?,?,?,?,?)";
			pstm=conn.prepareStatement(sql);
			pstm.setDate(1, paco.getFechaEmisionPACO());
			pstm.setString(2, paco.getNomProyectoPACO());
			pstm.setString(3, paco.getUbicacionPACO());
			pstm.setString(4, paco.getInspectorTecnicoPACO());
			pstm.setString(5, paco.getSubgerentePACO());
			pstm.setDate(6, paco.getFechaInspeccionPACO());
			pstm.setString(7, paco.getAspecEvaluadosPACO());
			pstm.setString(8, paco.getCumplimientoPACO());
			pstm.setString(9, paco.getObservaPACO());
			
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

	public int actualizar(PACO paco) {
		int salida=-1;
		Connection cn=null;
		PreparedStatement pstm=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="update ITEC set fecha_emision=?,nom_proyecto=?,ubicacion=?,inspector_tecnico=?,subgerente=?,fecha_inspeccion=?,aspectos_evaluados=?,cumplimiento=?,observaciones=?  where id_informe=?";
			pstm=cn.prepareStatement(sql);
			
			pstm.setDate(1, paco.getFechaEmisionPACO());
			pstm.setString(2, paco.getNomProyectoPACO());
			pstm.setString(3, paco.getUbicacionPACO());
			pstm.setString(4, paco.getInspectorTecnicoPACO());
			pstm.setString(5, paco.getSubgerentePACO());
			pstm.setDate(6, paco.getFechaInspeccionPACO());
			pstm.setString(7, paco.getAspecEvaluadosPACO());
			pstm.setString(8, paco.getCumplimientoPACO());
			pstm.setString(9, paco.getObservaPACO());
			pstm.setInt(10, paco.getInformePACO());
			
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
	public PACO buscarPorID(int infoPACO) {
		return null;
	}
	
	@Override
	public ArrayList<PACO> listar() {
		ArrayList<PACO> data=new ArrayList<PACO>();
		PACO bean=null;
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="select * from ITEC";
			pstm=cn.prepareStatement(sql);
			rs=pstm.executeQuery();
			while(rs.next()) {
				bean=new PACO();
				bean.setInformePACO(rs.getInt(1));
				bean.setFechaEmisionPACO(rs.getDate(2));
				bean.setNomProyectoPACO(rs.getString(3));
				bean.setUbicacionPACO(rs.getString(4));
				bean.setInspectorTecnicoPACO(rs.getString(5));
				bean.setSubgerentePACO(rs.getString(6));
				bean.setFechaInspeccionPACO(rs.getDate(7));
				bean.setAspecEvaluadosPACO(rs.getString(8));
				bean.setCumplimientoPACO(rs.getString(9));
				bean.setObservaPACO(rs.getString(10));
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
