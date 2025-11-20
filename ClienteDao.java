package dao;

import java.util.ArrayList;
import entidad.Cliente;

public interface ClienteDao {

	public int agregarCliente(Cliente cli);
	public int eliminarCliente(int id);
	public ArrayList<Cliente> listarClientes();
	public Cliente listarClientePorId(int id);
	
}
