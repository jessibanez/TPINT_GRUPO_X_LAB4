package dao;

import java.util.List;

import entidad.Prestamo;

public interface PrestamoDao {

	public int agregarPrestamo(Prestamo pres);
	public int modificarPrestamos(Prestamo pres);
	public Prestamo traerPorId(int id);
	public List<Prestamo> traerPorDni(String dni);
	public List<Prestamo> traerPorNombre(String nombre);
	public List<Prestamo> listarPrestamos();
	public int eliminarPrestamo(int id);
}
