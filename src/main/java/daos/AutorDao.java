package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import models.Autor;
import models.MyConn;

public class AutorDao {
	static public ArrayList<Autor> getAll() throws SQLException{
		//1. Creamos un ArrayList vacío
		ArrayList<Autor> autores = new ArrayList<Autor>();
		
		
		
		//2.Pedimos una nueva conexión
		Connection conn = MyConn.getConnection();
		
		//3. Creamos y ejecutamos la consulta 
		Statement consulta = conn.createStatement();
		ResultSet respuesta = consulta.executeQuery("select * from autores");
		
		//4. Llenamos el ArrayList con lo que nos traiga la respuesta...
		while (respuesta.next()) {
			Autor autor = new Autor(
					respuesta.getInt("id"),
					respuesta.getString("nombre"),
					respuesta.getString("apellido"),
					respuesta.getString("notas")
			);
			
			autores.add(autor);
					
		}
		
		return autores;
	}

	public static void addNew(String nombre, String apellido, String notas) throws SQLException {
		// TODO Auto-generated method stub
			//1. Pedimos una conexión nueva
			Connection conn = MyConn.getConnection();
			//2. Creamos la consulta 
			PreparedStatement consulta = conn.prepareStatement("insert into autores (nombre, apellido, notas) values (?,?,?)");
			consulta.setString (1, nombre);
			consulta.setString (2, apellido);
			consulta.setString (3, notas);
			
			consulta.executeUpdate();
		}
		
		
}

