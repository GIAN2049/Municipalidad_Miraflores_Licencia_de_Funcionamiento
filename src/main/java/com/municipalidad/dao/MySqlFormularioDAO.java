package com.municipalidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.municipalidad.entidad.Formulario;
import com.municipalidad.interfaces.FormularioDAO;
import com.municipalidad.utils.MySqlConexion;

public class MySqlFormularioDAO implements FormularioDAO {

	@Override
	public int registrar(Formulario form) {
		int salida=-1;
		PreparedStatement pstm=null;
		Connection conn=null;
		try {
			conn=MySqlConexion.getConectar();
			String sql="insert into formulario values (null,?,?,?,?)";
			pstm=conn.prepareStatement(sql);
			pstm.setString(1, form.getDestinario());
			pstm.setString(2, form.getCorreo());
			pstm.setString(3, form.getAsunto());
			pstm.setString(4, form.getMensaje());			
			
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
	public ArrayList<Formulario> listar() {
		ArrayList<Formulario> data=new ArrayList<Formulario>();
		Formulario bean=null;
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="select * from formulario";
			pstm=cn.prepareStatement(sql);
			rs=pstm.executeQuery();
			while(rs.next()) {
				bean=new Formulario();
				bean.setCodFormulario(rs.getInt(1));
				bean.setDestinario(rs.getString(2));
				bean.setCorreo(rs.getString(3));
				bean.setAsunto(rs.getString(4));
				bean.setMensaje(rs.getString(5));
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
