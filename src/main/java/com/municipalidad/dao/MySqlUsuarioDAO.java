package com.municipalidad.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.municipalidad.entidad.Menu;
import com.municipalidad.entidad.Usuario;
import com.municipalidad.interfaces.UsuarioDAO;
import com.municipalidad.utils.MySqlConexion;

public class MySqlUsuarioDAO implements UsuarioDAO {

	@Override
	public Usuario iniciarSecsion(String vLogin, String vClave) {
		Usuario obj=null;
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="select * from tb_usuario where log_usu=? and pas_usu=?";
			pstm=cn.prepareStatement(sql);
			pstm.setString(1, vLogin);
			pstm.setString(2, vClave);
			rs=pstm.executeQuery();
			if(rs.next()) {
				obj=new Usuario();
				obj.setCodigo(rs.getInt(1));
				obj.setNombre(rs.getString(4));
				obj.setApellido(rs.getString(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(cn!=null) cn.close();
				if(pstm!=null) pstm.close();
				if(rs!=null) rs.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		
		
		return obj;
	}

	@Override
	public ArrayList<Menu> traerMenuDelUsuario(int codUsuario) {
		ArrayList<Menu> data=new ArrayList<Menu>();
		Menu bean=null;
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="select m.cod_men,m.des_men,m.url_men from tb_acceso a join tb_menu m on a.cod_men=m.cod_men where a.cod_usu=?";
			pstm=cn.prepareStatement(sql);
			pstm.setInt(1, codUsuario);
			rs=pstm.executeQuery();
			while(rs.next()) {
				bean=new Menu();
				bean.setCodigo(rs.getInt(1));
				bean.setDescripcion(rs.getString(2));
				bean.setUrl(rs.getString(3));
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
