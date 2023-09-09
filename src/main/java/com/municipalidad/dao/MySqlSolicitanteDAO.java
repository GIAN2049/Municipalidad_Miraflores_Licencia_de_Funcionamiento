package com.municipalidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.municipalidad.entidad.Solicitante;
import com.municipalidad.interfaces.SolicitanteDAO;
import com.municipalidad.utils.MySqlConexion;

public class MySqlSolicitanteDAO implements SolicitanteDAO {

	@Override
	public int registrar(Solicitante soc) {
		int salida=-1;
		PreparedStatement pstm=null;
		Connection conn=null;
		try {
			conn=MySqlConexion.getConectar();
			String sql="insert into identificacion_Solicitante values (null,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			//objeto pstm y se envia sentencia SQL variable sql
			pstm=conn.prepareStatement(sql);
			pstm.setString(1, soc.getTipContribuyente());
			pstm.setLong(2, soc.getNumRuc());
			pstm.setString(3, soc.getRazon());
			pstm.setDate(4, new java.sql.Date(soc.getInicioActividad().getTime()));
			pstm.setLong(5, soc.getNumDni());
			pstm.setString(6, soc.getContribuyente());
			pstm.setString(7, soc.getEstadoContribuyente());
			pstm.setDate(8, new java.sql.Date(soc.getFechaInscripcion().getTime()));
			pstm.setString(9, soc.getEmicion());
			pstm.setString(10, soc.getDirecsionNotifi());
			pstm.setString(11, soc.getDistritoNotifi());
			pstm.setString(12, soc.getCorreo());
			pstm.setLong(13, soc.getTelefono());
			//llave foranea
			pstm.setString(14, soc.getTipoTramite());
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
	public int actualizar(Solicitante soc) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int eliminarPorID(int codIdentificacion) {
		int salida=-1;
		Connection cn=null;
		PreparedStatement pstm=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="delete from identificacion_Solicitante where cod_identificacion=?";
			pstm=cn.prepareStatement(sql);
			pstm.setInt(1, codIdentificacion);
			salida=pstm.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(cn!=null) cn.close();
				if(pstm!=null) pstm.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return salida;
	}

	@Override
	public Solicitante buscarPorID(int codIdentificacion) {
		Solicitante bean=null;
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="select * from identificacion_Solicitante where cod_identificacion=?";
			pstm=cn.prepareStatement(sql);
			rs=pstm.executeQuery();
			while(rs.next()) {
				bean=new Solicitante();
				bean.setCodIdentificacion(rs.getInt(1));
				bean.setTipContribuyente(rs.getString(2));
				bean.setNumRuc(rs.getLong(3)); //se pone long por que se cambio de int a long para que contenga mas de 6 parametros
				bean.setRazon(rs.getString(4));
				bean.setInicioActividad(rs.getDate(5)); //esta columna es una fecha tipo Date
				bean.setNumDni(rs.getLong(6));
				bean.setFechaInscripcion(rs.getDate(7));
				bean.setEmicion(rs.getString(8));
				bean.setDirecsionNotifi(rs.getString(9));
				bean.setDistritoNotifi(rs.getString(10));
				bean.setCorreo(rs.getString(11));
				bean.setTelefono(rs.getLong(12));
				bean.setTipoTramite(rs.getString(13));
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
		return bean;
	}

	@Override
	public ArrayList<Solicitante> listar() {
		ArrayList<Solicitante> data=new ArrayList<Solicitante>();
		Solicitante bean=null;
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="select s.cod_identificacion, s.tipo_contribuyente, s.num_ruc, s.razon, s.inicio_actividad, s.numero_dni, s.fecha_inscripcion, s.emicion_elec,  s.direccion_notificacion, s.distrito_noti, s.correo_elec, s.telefono, t.tipo_Tramite from identificacion_Solicitante s join tipo_Autorizacion t on s.cod_Autorizacion=t.cod_Autorizacion";
			pstm=cn.prepareStatement(sql);
			rs=pstm.executeQuery();
			while(rs.next()) {
				bean=new Solicitante();
				bean.setCodIdentificacion(rs.getInt(1));
				bean.setTipContribuyente(rs.getString(2));
				bean.setNumRuc(rs.getLong(3)); //se pone long por que se cambio de int a long para que contenga mas de 6 parametros
				bean.setRazon(rs.getString(4));
				bean.setInicioActividad(rs.getDate(5)); //esta columna es una fecha tipo Date
				bean.setNumDni(rs.getLong(6));
				bean.setFechaInscripcion(rs.getDate(7));
				bean.setEmicion(rs.getString(8));
				bean.setDirecsionNotifi(rs.getString(9));
				bean.setDistritoNotifi(rs.getString(10));
				bean.setCorreo(rs.getString(11));
				bean.setTelefono(rs.getLong(12));
				bean.setTipoTramite(rs.getString(13));
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
