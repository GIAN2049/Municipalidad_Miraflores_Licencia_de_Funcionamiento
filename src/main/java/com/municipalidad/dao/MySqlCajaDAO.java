package com.municipalidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.municipalidad.entidad.Caja;
import com.municipalidad.interfaces.CajaDAO;
import com.municipalidad.utils.MySqlConexion;

public class MySqlCajaDAO implements CajaDAO{

	
	public int registrar(Caja caj) {
		int salida=-1;
		PreparedStatement pstm=null;
		Connection conn=null;
		try {
			conn=MySqlConexion.getConectar();
			String sql="insert into sistema_Caja values(null,?,?,?,?,?,?,?,?)";
			
			pstm=conn.prepareStatement(sql);
			
			pstm.setString(1, caj.getNumeroCom());
			pstm.setString(2, caj.getNombre());
			pstm.setString(3, caj.getDireccion());	
			pstm.setLong(4, caj.getDni());
			pstm.setDate(5, new java.sql.Date(caj.getFecha().getTime()));
			pstm.setInt(6, caj.getCantidad());
			pstm.setString(7, caj.getDescripcion());
			pstm.setDouble(8, caj.getTotal());
			
		
	
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
	
	public int actualizar(Caja caj) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public ArrayList<Caja> listar() {
		ArrayList<Caja> data=new ArrayList<Caja>();
		Caja bean=null;
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="select * from sistema_Caja;";
			pstm=cn.prepareStatement(sql);
			rs=pstm.executeQuery();
			while(rs.next()) {
				bean=new Caja();
				
				bean.setCodigo(rs.getInt(1));
				bean.setNumeroCom(rs.getString(2));
				bean.setNombre(rs.getString(3)); 
				bean.setDireccion(rs.getString(4));
				bean.setDni(rs.getLong(5));
				bean.setFecha(rs.getDate(6));
				bean.setCantidad(rs.getInt(7));
				bean.setDescripcion(rs.getString(8));
				bean.setTotal(rs.getDouble(9));

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
	
	@Override
	public Caja buscarPorID(int codigo) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
