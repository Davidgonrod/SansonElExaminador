package modelo;
package mx.ipn.upiicsa.sansonelexaminador.dao;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;

import mx.ipn.upiicsa.sansonelexaminador.dao.BeanUsuario;

public class Usuario {
	
	public static BeanUsuario consultarUsuario(String idEvento){
		BeanUsuario busuario=null;
		try{
			SansonElExaminadorMySqlDAO c=new SansonElExaminadorMySqlDAO();
			Connection con=c.getConexion();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("Select * from Lista_Participantes where idEvento='"+idEvento+"'");
			while(rs.next()){
				busuario=new BeanUsuario(rs.getString(2), rs.getString(3), rs.getString(4));
			}
		}catch(SQLException se){
			se.printStackTrace();
		}
		return busuario;
	}

}
