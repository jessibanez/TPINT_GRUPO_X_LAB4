package daoImpl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dao.PrestamoDao;
import entidad.Cliente;
import entidad.Cuenta;
import entidad.Prestamo;


public class PrestamoDaoImpl implements PrestamoDao{
	
	private String host = "jdbc:mysql://localhost:3306/";
	private String dbName = "bdbank";
	private String user = "root";
	private String password = "admin1234";

	@Override
	public int agregarPrestamo(Prestamo pres) {
		
		String query = "insert into prestamos(id_cliente, id_cuenta, fechaAlta, importeSolicitado, tasaInteres, cantidadCuotas, importeCuota, plazoMeses, estadoPrestamo, estado)"
				+ "values('" + pres.getCliente().getId() + "', '" + pres.getCuenta().getId() + "', '" + pres.getFechaAlta() + "', '" + pres.getImporteSolicitado() + "', '" + pres.getTasaInteres()
				+ "', '" + pres.getCantidadCuotas() + "', '" + pres.getImporteCuota() + "', '" + pres.getPlazoMeses() + "', '" + pres.getEstadoPrestamo() + "', '" + pres.getEstado() + "')";
		
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
	public int modificarPrestamos(Prestamo pres) {
		
		String query = "UPDATE prestamos SET id_cliente = ?, id_cuenta = ?, fechaAlta = ?, importeSolicitado = ?, tasaInteres = ?, cantidadCuotas = ?, "
				+ "importeCuota = ?, plazoMeses = ?, estadoPrestamo = ?, estado = ? WHERE id = ?";
	    int filas = 0;
	    
	    try (Connection con = DriverManager.getConnection(host + dbName, user, password);
	    		PreparedStatement ps = con.prepareStatement(query)) {
	    	
	    	ps.setInt(1, pres.getCliente().getId());
	    	ps.setInt(2, pres.getCuenta().getId());
	    	ps.setDate(3, (Date) pres.getFechaAlta());
	    	ps.setFloat(4, pres.getImporteSolicitado());
	    	ps.setFloat(5, pres.getTasaInteres());
	    	ps.setInt(6, pres.getCantidadCuotas());
	    	ps.setFloat(7, pres.getImporteCuota());
	    	ps.setInt(8, pres.getPlazoMeses());
	    	ps.setString(9, pres.getEstadoPrestamo().toString());
	    	ps.setBoolean(10, pres.getEstado());
	    	
	        filas = ps.executeUpdate();
	    	
	    } catch(SQLException e) {
	    	e.printStackTrace();
	    }
		
		return filas;
	}

	@Override
	public Prestamo traerPorId(int id) {
		
		String query = "Select * From prestamos WHERE id = ?";
		Prestamo aux = new Prestamo();
		
		try (Connection con = DriverManager.getConnection(host + dbName, user, password);
	    		PreparedStatement ps = con.prepareStatement(query)){
			
			ps.setInt(1, id);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			
			while(rs.next()) {
				Cliente cli = new Cliente();
				Cuenta cue = new Cuenta();
				aux.setId(rs.getInt("ID_Prestamo"));
				cli.setId(rs.getInt("ID_Cliente"));
				aux.setCliente(cli);
				cue.setId(rs.getInt("ID_Cuenta"));
				aux.setCuenta(cue);
				aux.setFechaAlta(rs.getDate("fechaAlta"));
				aux.setImporteSolicitado(rs.getFloat("importeSolicitado"));
				aux.setTasaInteres(rs.getFloat("tasaInteres"));
				aux.setCantidadCuotas(rs.getInt("cantidadCuotas"));
				aux.setImporteCuota(rs.getFloat("importeCuota"));
				aux.setPlazoMeses(rs.getInt("plazoMeses"));
				aux.setEstado(rs.getBoolean("estado"));
				//Traer estadoPrestamo
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return aux;
	}

	@Override
	public List<Prestamo> traerPorDni(String dni) {
		
		String query = "Select * From prestamos WHERE id_cliente = ?";
		List<Prestamo> listadoPrestamos = new ArrayList<Prestamo>();	
		
		try (Connection con = DriverManager.getConnection(host + dbName, user, password);
	    		PreparedStatement ps = con.prepareStatement(query)){
			
			//Crear método en Cliente para que buscar Id por DNI
			
			ps.setString(1, dni); //Cambiar a int cuando tengamos en método
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			
			while(rs.next()) {
				Prestamo aux = new Prestamo();
				Cliente cli = new Cliente();
				Cuenta cue = new Cuenta();
				aux.setId(rs.getInt("ID_Prestamo"));
				cli.setId(rs.getInt("ID_Cliente"));
				aux.setCliente(cli);
				cue.setId(rs.getInt("ID_Cuenta"));
				aux.setCuenta(cue);
				aux.setFechaAlta(rs.getDate("fechaAlta"));
				aux.setImporteSolicitado(rs.getFloat("importeSolicitado"));
				aux.setTasaInteres(rs.getFloat("tasaInteres"));
				aux.setCantidadCuotas(rs.getInt("cantidadCuotas"));
				aux.setImporteCuota(rs.getFloat("importeCuota"));
				aux.setPlazoMeses(rs.getInt("plazoMeses"));
				aux.setEstado(rs.getBoolean("estado"));
				//Traer estadoPrestamo
				
				listadoPrestamos.add(aux);
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return listadoPrestamos;
		
	}

	@Override
	public List<Prestamo> traerPorNombre(String nombre) {
		
		String query = "Select * From prestamos WHERE id_cliente = ?";
		List<Prestamo> listadoPrestamos = new ArrayList<Prestamo>();
		
		
		try (Connection con = DriverManager.getConnection(host + dbName, user, password);
	    		PreparedStatement ps = con.prepareStatement(query)){
			
			//Crear método en Cliente para que buscar Id por nombre
			
			ps.setString(1, nombre); //Cambiar a int cuando tengamos en método
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			
			while(rs.next()) {
				Prestamo aux = new Prestamo();
				Cliente cli = new Cliente();
				Cuenta cue = new Cuenta();
				aux.setId(rs.getInt("ID_Prestamo"));
				cli.setId(rs.getInt("ID_Cliente"));
				aux.setCliente(cli);
				cue.setId(rs.getInt("ID_Cuenta"));
				aux.setCuenta(cue);
				aux.setFechaAlta(rs.getDate("fechaAlta"));
				aux.setImporteSolicitado(rs.getFloat("importeSolicitado"));
				aux.setTasaInteres(rs.getFloat("tasaInteres"));
				aux.setCantidadCuotas(rs.getInt("cantidadCuotas"));
				aux.setImporteCuota(rs.getFloat("importeCuota"));
				aux.setPlazoMeses(rs.getInt("plazoMeses"));
				aux.setEstado(rs.getBoolean("estado"));
				//Traer estadoPrestamo
				
				listadoPrestamos.add(aux);
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return listadoPrestamos;
		
	}

	@Override
	public List<Prestamo> listarPrestamos() {
		
		List<Prestamo> listaPrestamos = new ArrayList<Prestamo>();
		Connection con = null;
		String query = "Select * From prestamos";
		
		try	{
			con = DriverManager.getConnection(host+dbName, user, password);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			
			while(rs.next()) {
				Prestamo aux = new Prestamo();
				Cliente cli = new Cliente();
				Cuenta cue = new Cuenta();
				aux.setId(rs.getInt("ID_Prestamo"));
				cli.setId(rs.getInt("ID_Cliente"));
				aux.setCliente(cli);
				cue.setId(rs.getInt("ID_Cuenta"));
				aux.setCuenta(cue);
				aux.setFechaAlta(rs.getDate("fechaAlta"));
				aux.setImporteSolicitado(rs.getFloat("importeSolicitado"));
				aux.setTasaInteres(rs.getFloat("tasaInteres"));
				aux.setCantidadCuotas(rs.getInt("cantidadCuotas"));
				aux.setImporteCuota(rs.getFloat("importeCuota"));
				aux.setPlazoMeses(rs.getInt("plazoMeses"));
				aux.setEstado(rs.getBoolean("estado"));
				//Traer estadoPrestamo
				
				listaPrestamos.add(aux);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return listaPrestamos;
		
	}

	@Override
	public int eliminarPrestamo(int id) {
		
		String query = "DELETE FROM prestamos WHERE id = ?";
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

}
