package com.municipalidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.municipalidad.entidad.Pago;
import com.municipalidad.interfaces.PagoDAO;
import com.municipalidad.utils.MySqlConexion;

public class MySqlPagoDAO implements PagoDAO {

	@Override
	public int registrar(Pago pag) {
		int salida=-1;
		PreparedStatement pstm=null;
		Connection conn=null;
		try {
			conn=MySqlConexion.getConectar();
			String sql="insert into Pago values (null,?,?,?,?)";
			pstm=conn.prepareStatement(sql);
			pstm.setString(1, pag.getNombreApellido());
			pstm.setLong(2, pag.getDni());
			pstm.setBytes(3, pag.getSellado());
			pstm.setString(4, pag.getNombreSellado());
			
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
	public ArrayList<Pago> listarPago() {
		ArrayList<Pago> data=new ArrayList<Pago>();
		Pago bean=null;
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="select * from Pago";
			pstm=cn.prepareStatement(sql);
			rs=pstm.executeQuery();
			while(rs.next()) {
				bean=new Pago();
				bean.setCodPago(rs.getInt(1));
				bean.setNombreApellido(rs.getString(2));
				bean.setDni(rs.getLong(3));
				
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

	@Override
	public Pago buscarPorID(int codPago) {
		Pago bean=null;
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="select sellado_img,nombre_sellado from Pago where cod_pago=?";
			pstm=cn.prepareStatement(sql);
			pstm.setInt(1, codPago);
			rs=pstm.executeQuery();
			if(rs.next()) {
				bean=new Pago();
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

}
