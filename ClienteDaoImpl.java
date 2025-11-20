package daoImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import dao.ClienteDao;
import entidad.Cliente;
import entidad.Provincia;
import entidad.Localidad;
import entidad.Nacionalidad;

public class ClienteDaoImpl implements ClienteDao {
	
	private String host = "jdbc:mysql://localhost:3306/";
	private String dbName = "bdBank";
	private String user = "root";
	private String password = "root";

	@Override
	public int agregarCliente(Cliente cli) {
		String query = "INSERT INTO clientes (dni, cuil, nombre, apellido, sexo, ID_Nacionalidad, fechaNacimiento, direccion, ID_Localidad, correoElectronico, telefono, estado) "
	            + "VALUES ('" + cli.getDni()
	            + "', '" + cli.getCuil()
	            + "', '" + cli.getNombre()
	            + "', '" + cli.getApellido()
	            + "', '" + cli.getSexo()
	            + "', " + cli.getNacionalidad().getId()
	            + ", '" + cli.getFechaNacimiento()
	            + "', '" + cli.getDireccion()
	            + "', " + cli.getLocalidad().getId()
	            + ", '" + cli.getCorreoElectronico()
	            + "', '" + cli.getTelefono()
	            + "', 1);";
		Connection con = null;
		int filas = 0;
		
		try {
			con = DriverManager.getConnection(host+dbName,user,password);
			Statement st = con.createStatement();
			filas = st.executeUpdate(query);
		} catch(SQLException e){
			e.printStackTrace();
		}
		
		return filas;
	}
	
	@Override
	public int eliminarCliente(int id) {

		String query = "UPDATE Clientes SET estado = 0 WHERE ID_Cliente = ?";
		
	    int filas = 0;
	    
	    try (Connection con = DriverManager.getConnection(host + dbName, user, password);
	    		PreparedStatement ps = con.prepareStatement(query)) {
	    	
	    	ps.setInt(1, id);
	        filas = ps.executeUpdate();
	    	
	    } catch(SQLException e) {
	    	e.printStackTrace();
	    }
	    
		return filas;
	}
	
	public ArrayList<Cliente> listarClientes(){
		ArrayList<Cliente> lista = new ArrayList<Cliente>();
		Connection cn = null;
		String query = "SELECT c.*, "
	            + "l.ID_Localidad AS loc_id, l.localidad AS loc_nombre, "
	            + "p.ID_Provincia AS prov_id, p.provincia AS prov_nombre, "
	            + "n.ID_Nacionalidad AS nac_id, n.nacionalidad AS nac_nombre "
	            + "FROM Clientes c "
	            + "INNER JOIN Localidades l ON c.ID_Localidad = l.ID_Localidad "
	            + "INNER JOIN Provincias p ON l.ID_Provincia = p.ID_Provincia "
	            + "INNER JOIN Nacionalidades n ON c.ID_Nacionalidad = n.ID_Nacionalidad "
	            + "WHERE c.estado = 1";
		
		try	{
			cn = DriverManager.getConnection(host+dbName, user, password);
			Statement st = cn.createStatement();
			ResultSet rs = st.executeQuery(query);
			
			while(rs.next()) {
				Cliente c = new Cliente();
	            c.setId(rs.getInt("ID_Cliente"));
	            c.setDni(rs.getString("dni"));
	            c.setCuil(rs.getString("cuil"));
	            c.setNombre(rs.getString("nombre"));
	            c.setApellido(rs.getString("apellido"));
	            c.setSexo(rs.getString("sexo"));
	            c.setFechaNacimiento(rs.getDate("fechaNacimiento"));
	            c.setDireccion(rs.getString("direccion"));
	            c.setCorreoElectronico(rs.getString("correoElectronico"));
	            c.setTelefono(rs.getString("telefono"));
	            c.setEstado(rs.getBoolean("estado"));

	            Nacionalidad nac = new Nacionalidad();
	            nac.setId(rs.getInt("nac_id"));
	            nac.setNombre(rs.getString("nac_nombre"));
	            c.setNacionalidad(nac);

	            Provincia prov = new Provincia();
	            prov.setId(rs.getInt("prov_id"));
	            prov.setNombre(rs.getString("prov_nombre"));

	            Localidad loc = new Localidad();
	            loc.setId(rs.getInt("loc_id"));
	            loc.setNombre(rs.getString("loc_nombre"));
	            loc.setProvincia(prov);

	            c.setLocalidad(loc);

	            lista.add(c);
		}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return lista;
		
	}
 
	public Cliente listarClientePorId(int id) {
	    Cliente c = null;

	    String query = "SELECT c.*, "
	            + "l.ID_Localidad AS loc_id, l.localidad AS loc_nombre, "
	            + "p.ID_Provincia AS prov_id, p.provincia AS prov_nombre, "
	            + "n.ID_Nacionalidad AS nac_id, n.nacionalidad AS nac_nombre "
	            + "FROM Clientes c "
	            + "INNER JOIN Localidades l ON c.ID_Localidad = l.ID_Localidad "
	            + "INNER JOIN Provincias p ON l.ID_Provincia = p.ID_Provincia "
	            + "INNER JOIN Nacionalidades n ON c.ID_Nacionalidad = n.ID_Nacionalidad "
	            + "WHERE c.ID_Cliente = ?";

	    try (Connection cn = DriverManager.getConnection(host + dbName, user, password);
	         PreparedStatement ps = cn.prepareStatement(query)) {

	        ps.setInt(1, id);

	        try (ResultSet rs = ps.executeQuery()) {
	            if (rs.next()) {

	                c = new Cliente();
	                c.setId(rs.getInt("ID_Cliente"));
	                c.setDni(rs.getString("dni"));
	                c.setCuil(rs.getString("cuil"));
	                c.setNombre(rs.getString("nombre"));
	                c.setApellido(rs.getString("apellido"));
	                c.setSexo(rs.getString("sexo"));
	                c.setFechaNacimiento(rs.getDate("fechaNacimiento"));
	                c.setDireccion(rs.getString("direccion"));
	                c.setCorreoElectronico(rs.getString("correoElectronico"));
	                c.setTelefono(rs.getString("telefono"));
	                c.setEstado(rs.getBoolean("estado"));

	                Nacionalidad nac = new Nacionalidad();
	                nac.setId(rs.getInt("nac_id"));
	                nac.setNombre(rs.getString("nac_nombre"));
	                c.setNacionalidad(nac);

	                Provincia prov = new Provincia();
	                prov.setId(rs.getInt("prov_id"));
	                prov.setNombre(rs.getString("prov_nombre"));

	                Localidad loc = new Localidad();
	                loc.setId(rs.getInt("loc_id"));
	                loc.setNombre(rs.getString("loc_nombre"));
	                loc.setProvincia(prov);

	                c.setLocalidad(loc);
	            }
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return c;
	}

	
}


