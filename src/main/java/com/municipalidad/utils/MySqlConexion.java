package com.municipalidad.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySqlConexion {
	//creando un metodo estatico que retorne la conexion
	//a la BD. Municipalidad_Lima
	public static Connection getConectar() {
		//declarando objeto "cn" de la interfaces Connection
		Connection cn=null;
		//exection --> error en tiempo de ejecucion
		//try-cathc --> permite controlar errores en tiempo de ejecucion
		try {
			//acceder a la clase Driver que se encuentra en el JAR
			Class.forName("com.mysql.cj.jdbc.Driver");
			//variables
			String url,user,clave;
			user="root";
			clave="mysql";
			url="jdbc:mysql://localhost/Municipalidad_Lima?serverTimezone=UTC";
			//crear objeto "cn"
			cn=DriverManager.getConnection(url,user,clave);
			
			
		} catch (Exception e) {
			//mostrar traza de error en la consola
			e.printStackTrace();
		}
		
		
		
		return cn;
	}
	

}
